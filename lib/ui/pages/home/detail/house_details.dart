import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:intl/intl.dart';
import 'package:mekanly_com/logic/cubits/comments/comments_cubit.dart';
import 'package:mekanly_com/logic/cubits/view_count/view_count.dart';
import 'package:mekanly_com/ui/pages/home/detail/cached_net_image.dart';
import 'package:mekanly_com/ui/style/app_sizes.dart';
import 'package:mekanly_com/ui/style/style.dart';
import 'package:mekanly_com/ui/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../comment_terms_page.dart';
import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/cubits.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/logic/cubits/house/house_cubit.dart';
import '/logic/cubits/lang/lang_cubit.dart';
import '/models/category/category_model.dart';
import '/models/favorite/favorite_model.dart';
import '/ui/pages/home/detail/full_screen.dart';
import '/ui/pages/home/detail/rate_widget.dart';
import '/ui/pages/profile/auth/logout_dialog.dart';
import '/ui/widgets/sli.dart';

class HouseDetailsPage extends StatefulWidget {
  const HouseDetailsPage({super.key, required this.house});

  final House house;

  @override
  State<HouseDetailsPage> createState() => _HouseDetailsPageState();
}

class _HouseDetailsPageState extends State<HouseDetailsPage> {
  bool showAllComments = false;

  @override
  void initState() {
    context.read<ViewCountCubit>().incrementView(widget.house.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Details(
        imagePaths: widget.house.images.map((e) => e.url).toList(),
        house: widget.house,
        showAllComments: showAllComments,
        onSeeAllPressed: () {
          setState(() {
            showAllComments = !showAllComments;
          });
        },
      ),
      floatingActionButton: widget.house.user.id != context.read<AuthCubit>().repo.user.id
          ? Visibility(
              visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
              child: Container(
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: AppSizes.pix8,
                      offset: Offset(0.0, AppSizes.pix4),
                    ),
                  ],
                  color: AppColors.background,
                ),
                width: double.infinity,
                height: AppSizes.pix56,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.pix8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                            flex: 4,
                            child: Tex(
                              "${widget.house.price} TMT",
                              align: TextAlign.center,
                              con: context,
                              col: AppColors.mainTextDark,
                            ).title),
                        const SizedBox(width: AppSizes.pix20),
                        Expanded(
                          flex: 5,
                          child: InkWell(
                            borderRadius: borderAll10,
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    backgroundColor: AppColors.mainText,
                                    surfaceTintColor: Colors.transparent,
                                    title: Tex(locals.confirm, con: context),
                                    insetPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix20),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [Tex(locals.dontPayForward, con: context)],
                                    ),
                                    actions: [
                                      DialogActions(
                                        hasPop: false,
                                        locals: locals,
                                        onDeny: () {},
                                        onSubmit: () async {
                                          await launchUrl(Uri.parse("tel:${widget.house.bronNumber}"));
                                        },
                                      )
                                    ],
                                  );
                                },
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.green,
                                borderRadius: borderAll10,
                              ),
                              child: FittedBox(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: AppSizes.pix20,
                                      width: AppSizes.pix20,
                                      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: AppColors.mainText)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(AppSizes.pix4),
                                        child: SvgAsset(
                                          'call',
                                          AppColors.mainText,
                                        ),
                                      ),
                                    ),
                                    Tex(
                                      locals.bron,
                                      con: context,
                                      size: AppSizes.pix20,
                                    ).white,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: AppSizes.pix10),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : null,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}

class Details extends StatefulWidget {
  const Details({
    super.key,
    required this.imagePaths,
    required this.house,
    this.isOriginal = true,
    this.onSeeAllPressed,
    this.showAllComments = false,
  });

  final List<String> imagePaths;
  final House house;
  final bool isOriginal;
  final bool showAllComments;
  final VoidCallback? onSeeAllPressed;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  final double total = 0;
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();

    context.read<CommentsCubit>().getHouseComments(widget.house.id);

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  TextEditingController descrCtrl = TextEditingController();

  bool acceptedTerms = false;
  int _imageIndex = 0;
  final CarouselController _carouselController = CarouselController();
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    final favCubit = context.read<FavCubit>();

    var locals = Locals.of(context);

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: AppSizes.pix250,
          flexibleSpace: FlexibleSpaceBar(
            background: CarouselSlider(
              carouselController: _carouselController,
              items: widget.imagePaths.map((imagePath) {
                var img = imagePath;
                return Container(
                  color: AppColors.secondaryText.withOpacity(.2),
                  child: InkWell(
                    onTap: () => go(context, ImageShowScreen(images: widget.imagePaths)),
                    child: CachedNetImage(img: img),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                onPageChanged: (index, reason) {
                  setState(() {
                    _imageIndex = index;
                  });
                },
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 1,
                height: AppSizes.pix250 + 50,
              ),
            ),
          ),
          leading: Container(),
          actions: widget.isOriginal
              ? ([
                  widget.isOriginal
                      ? const Padding(
                          padding: EdgeInsets.only(left: AppSizes.pix8),
                          child: GoBack(
                            color: AppColors.mainText,
                          ),
                        )
                      : Container(),
                  const Spacer(),
                  if (widget.house.user.id != context.watch<AuthCubit>().repo.user.id)
                    BlocBuilder<FavCubit, FavModel>(
                      builder: (context, state) {
                        return IconButton(
                          onPressed: () async {
                            await favCubit.toggleFavorite(widget.house, locals, context);
                          },
                          icon: Stack(
                            children: [
                              Icon(
                                favCubit.isItemFavorited(widget.house.id) ? Icons.favorite : Icons.favorite_border,
                                size: AppSizes.pix28,
                                color: AppColors.red,
                              ),
                              const Icon(
                                Icons.favorite_border,
                                size: AppSizes.pix28,
                                color: AppColors.mainText,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  const SizedBox(width: AppSizes.pix10)
                ])
              : null,
          bottom: widget.isOriginal
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(AppSizes.pix24),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Card(
                      color: Colors.black38,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix8),
                        child: Tex(
                          "${_imageIndex + 1}/${widget.imagePaths.length}",
                          con: context,
                          col: AppColors.mainText,
                        ),
                      ),
                    ),
                  ),
                )
              : null,
        ),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
                gradient: widget.house.luxe
                    ? const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffF4E49c),
                          Color(0xffFefdf7),
                        ],
                      )
                    : null),
            child: Padding(
              padding: widget.isOriginal
                  ? const EdgeInsets.fromLTRB(
                      AppSizes.pix10,
                      AppSizes.pix6,
                      AppSizes.pix10,
                      AppSizes.pix2,
                    )
                  : const EdgeInsets.symmetric(vertical: AppSizes.pix8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (!widget.isOriginal && widget.house.status == 'active')
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: AppSizes.pix8),
                      child: BlocBuilder<HouseCubit, HouseState>(
                        builder: (context, state) {
                          if (state is HouseLoading) {
                            return const Loading();
                          } else if (state is HouseSuccess) {
                            return RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: locals.bronCondition,
                                    style: const TextStyle(
                                      fontSize: AppSizes.pix16,
                                      color: AppColors.mainTextDark,
                                    ),
                                  ),
                                  TextSpan(
                                      text: widget.house.leaveTime.isBefore(DateTime.now())
                                          ? locals.expiredPleaseEdit
                                          : widget.house.status == 'pending'
                                              ? locals.pending
                                              : state.houses.houses.firstWhere((element) => element.id == widget.house.id).bronStatus
                                                  ? locals.bronnedAndDisappeared
                                                  : locals.unbronnedAndAppeared,
                                      style: TextStyle(
                                        color: widget.house.leaveTime.isBefore(DateTime.now())
                                            ? AppColors.red
                                            : widget.house.status == 'pending'
                                                ? AppColors.buttons
                                                : !(state.houses.houses.firstWhere((element) => element.id == widget.house.id).bronStatus)
                                                    ? AppColors.green
                                                    : AppColors.red,
                                        fontSize: AppSizes.pix16,
                                      )),
                                ],
                              ),
                            );
                          } else {
                            return Container();
                          }
                        },
                      ),
                    ),
                  Row(
                    children: [
                      Expanded(child: Tex(widget.house.name, con: context).title),
                    ],
                  ),
                  const SizedBox(height: AppSizes.pix6),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text(
                          (widget.house.location.parentName == widget.house.location.name) ? widget.house.location.parentName : "${widget.house.location.parentName} - ${widget.house.location.name}",
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.mainTextDark,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (widget.house.luxe)
                        const SvgAsset(
                          'luxe',
                          null,
                          size: AppSizes.pix28,
                        )
                    ],
                  ),
                  const SizedBox(height: AppSizes.pix6),
                  BlocBuilder<LangCubit, Locale>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          Tex(
                                  (widget.house.enterTime.month == widget.house.leaveTime.month)
                                      ? '${widget.house.enterTime.day} - ${widget.house.leaveTime.day} ${DateFormat.MMMM(state.languageCode).format(widget.house.leaveTime).capitalizeFirst}'
                                      : '${widget.house.enterTime.day} ${DateFormat.MMMM(state.languageCode).format(widget.house.enterTime).capitalizeFirst} - ${widget.house.leaveTime.day} ${DateFormat.MMMM(state.languageCode).format(widget.house.leaveTime).capitalizeFirst}',
                                  con: context)
                              .subtitle,
                          const SizedBox(width: AppSizes.pix16),
                          const Icon(Icons.remove_red_eye_outlined, size: AppSizes.pix20),
                          Tex(context.watch<ViewCountCubit>().state != 0 ? context.watch<ViewCountCubit>().state.toString() : widget.house.viewed.toString(), con: context).subtitle,
                          if (!widget.isOriginal) const Spacer(),
                          if (!widget.isOriginal)
                            Tex(
                                    widget.house.leaveTime.isAfter(DateTime.now())
                                        ? widget.house.status == 'pending'
                                            ? locals.pending
                                            : widget.house.status == 'non-active'
                                                ? locals.notAccepted
                                                : locals.putted
                                        : '',
                                    overflow: TextOverflow.ellipsis,
                                    con: context,
                                    col: widget.house.status == 'pending'
                                        ? AppColors.buttons
                                        : widget.house.status == 'non-active'
                                            ? Colors.red
                                            : AppColors.green)
                                .subtitle
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Divider(
            color: AppColors.primary,
            thickness: 6,
            height: 6,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: widget.isOriginal ? const EdgeInsets.fromLTRB(AppSizes.pix10, 0, AppSizes.pix10, 0) : const EdgeInsets.fromLTRB(0, AppSizes.pix6, 0, AppSizes.pix6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Tex(locals.rating, con: context, size: AppSizes.pix20).title,
                    const Icon(Icons.star, color: AppColors.yellow, size: AppSizes.pix16),
                    Tex((star(total, widget.house)), con: context).subtitle,
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SvgAsset('info', AppColors.mainTextDark, size: 20),
                    const SizedBox(width: AppSizes.pix4),
                    Tex(locals.allInfo, con: context, size: AppSizes.pix20).title,
                  ],
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: EdgeInsets.all(widget.isOriginal ? AppSizes.pix12 : AppSizes.pix6),
                child: Column(
                  children: [
                    Rower(keyy: locals.place, value: widget.house.location.name),
                    Rower(keyy: locals.dailyPrice, value: "${widget.house.price} TMT"),
                    Rower(keyy: locals.roomCount, value: widget.house.roomNumber.toString()),
                    Rower(keyy: locals.floorCount, value: widget.house.floorNumber.toString()),
                    Rower(keyy: locals.categType, value: widget.house.categoryName.toString()),
                    Rower(keyy: locals.guestCount, value: widget.house.guestNumber.toString()),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (widget.house.possibilities.isNotEmpty)
          SliverPadding(
            padding: const EdgeInsets.all(AppSizes.pix10),
            sliver: Sli(
              children: [
                Tex(locals.provides, con: context, padding: AppSizes.pix6, size: AppSizes.pix20).title,
                ListView.builder(
                  padding: const EdgeInsets.only(left: AppSizes.pix10),
                  itemCount: widget.house.possibilities.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, i) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: AppSizes.pix24,
                          width: AppSizes.pix24,
                          child: SvgAsset(widget.house.possibilities[i].name, AppColors.mainTextDark),
                        ),
                        const SizedBox(width: AppSizes.pix4),
                        Tex(
                          possibs(context).firstWhere((element) => element.id == widget.house.possibilities[i].id).name,
                          con: context,
                          weight: FontWeight.w400,
                          size: AppSizes.pix16,
                          padding: AppSizes.pix8,
                        ).title,
                      ],
                    );
                  },
                )
              ],
            ),
          ),
        SliverPadding(
          padding: const EdgeInsets.all(AppSizes.pix12),
          sliver: Sli(children: [
            Tex(locals.rules, con: context, size: AppSizes.pix20).title,
            const SizedBox(height: AppSizes.pix6),
            Column(
              children: [
                Rower(keyy: locals.enterTime, value: (widget.house.dayEnterTime == 'null' || widget.house.dayEnterTime == null) ? locals.any : widget.house.dayEnterTime!),
                Rower(keyy: locals.leaveTime, value: (widget.house.dayLeaveTime == 'null' || widget.house.dayLeaveTime == null) ? locals.any : widget.house.dayLeaveTime!),
              ],
            ),
            const SizedBox(height: AppSizes.pix10),
          ]),
        ),
        Sli(children: [
          const Divider(
            color: AppColors.primary,
            thickness: 6,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tex(widget.house.description, con: context),
          ),
          if (widget.house.user.id == context.read<AuthCubit>().repo.user.id && widget.house.status == 'active')
            Container(
              color: AppColors.primary,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
                            child: Tex(
                              '${locals.comments} (${widget.house.comments.where((element) => element.replyId == null).toList().length})',
                              con: context,
                              col: AppColors.mainText,
                              size: AppSizes.pix16,
                            ).title),
                      ),
                    ],
                  ),
                ],
              ),
            )
        ]),
        if (widget.house.status == 'active')
          Sli(children: [
            BlocBuilder<CommentsCubit, CommentsState>(
              builder: (context, state) {
                if (state is CommentSuccess) {
                  state.comment.all.sort(
                    (a, b) {
                      return b.createdAt.compareTo(a.createdAt);
                    },
                  );
                  List<Comment> comments = state.comment.all.where((c) => (c.replyId == null)).toList();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.house.user.id != context.read<AuthCubit>().repo.user.id)
                        if (widget.isOriginal)
                          RateWidget(
                            userName: context.read<AuthCubit>().repo.user.username ?? '',
                            houseId: widget.house.id,
                            rateCount: state.comment.all.where((element) => element.replyId == null).toList().length,
                          ),
                      ListView.separated(
                          padding: const EdgeInsets.all(AppSizes.pix10),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: (!widget.showAllComments && comments.length > 3) ? 3 : comments.length,
                          separatorBuilder: (context, index) {
                            return const Divider(
                              color: AppColors.secondaryTextDark,
                            );
                          },
                          itemBuilder: (context, index) {
                            var thisComment = comments[index];
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(child: Tex(thisComment.username, con: context)),
                                    if (!widget.isOriginal && thisComment.userId == context.read<AuthCubit>().repo.user.id)
                                      Tex(
                                        locals.checkingComment,
                                        con: context,
                                        col: AppColors.primary,
                                        padding: 0,
                                      ).title1,
                                    const Spacer(),
                                    if (!widget.isOriginal)
                                      PopupMenuButton(
                                        color: AppColors.background,
                                        elevation: 10,
                                        surfaceTintColor: AppColors.trans,
                                        padding: EdgeInsets.zero,
                                        itemBuilder: (context) => [
                                          if (!(state.comment.all.any((element) => element.replyId == thisComment.id)))
                                            PopupMenuItem(
                                              height: 30,
                                              child: Text(locals.answer),
                                              onTap: () {
                                                popupDialog(
                                                  locals,
                                                  descrCtrl,
                                                  false,
                                                  acceptedTerms,
                                                  onSend: (cx, fals) async {
                                                    await cx
                                                        .read<CommentsCubit>()
                                                        .comment(
                                                          thisComment.houseId,
                                                          3.0,
                                                          descrCtrl.text,
                                                          commentId: thisComment.id,
                                                        )
                                                        .then((value) async {
                                                      descrCtrl.clear();

                                                      await cx.read<CommentsCubit>().getHouseComments(thisComment.houseId).then((value) {
                                                        Navigator.pop(cx);
                                                        successToast(locals.commentSaved);
                                                      });
                                                    });
                                                  },
                                                );
                                              },
                                            )
                                          else ...[
                                            PopupMenuItem(
                                              height: 30,
                                              child: Text(locals.edit),
                                              onTap: () {
                                                descrCtrl =
                                                    TextEditingController.fromValue(TextEditingValue(text: state.comment.all.firstWhere((element) => element.replyId == thisComment.id).description));
                                                popupDialog(
                                                  locals,
                                                  descrCtrl,
                                                  true,
                                                  acceptedTerms,
                                                  onSend: (cx, isUpdating) async {
                                                    if (isUpdating) {
                                                      await cx
                                                          .read<CommentsCubit>()
                                                          .updateComment(thisComment.houseId, state.comment.all.firstWhere((element) => element.replyId == thisComment.id).id, descrCtrl.text)
                                                          .then((value) async {
                                                        descrCtrl.clear();
                                                        await cx.read<CommentsCubit>().getHouseComments(thisComment.houseId).whenComplete(() {
                                                          Navigator.pop(cx);
                                                          successToast(locals.commentSaved);
                                                        });
                                                      });
                                                    }

                                                    _scrollToEnd();
                                                  },
                                                );
                                              },
                                            ),
                                            PopupMenuItem(
                                              height: 30,
                                              child: Text(locals.delete),
                                              onTap: () async {
                                                await context.read<CommentsCubit>().deleteComment(state.comment.all.firstWhere((element) => element.replyId == thisComment.id).id).then((value) async {
                                                  descrCtrl.clear();

                                                  await context.read<CommentsCubit>().getHouseComments(thisComment.houseId);
                                                });

                                                _scrollToEnd();
                                              },
                                            )
                                          ]
                                        ],
                                      )
                                  ],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                      unratedColor: AppColors.secondaryText,
                                      ignoreGestures: true,
                                      initialRating: double.parse(thisComment.star ?? "3.0"),
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: AppSizes.pix20,
                                      itemBuilder: (context, _) => const Icon(Icons.star, color: AppColors.yellow),
                                      onRatingUpdate: (newRating) {},
                                    ),
                                    const SizedBox(width: AppSizes.pix10),
                                    Tex(toTime(thisComment.createdAt), con: context),
                                    const Spacer(),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(child: Tex(thisComment.description, con: context)),
                                  ],
                                ),
                                if ((state.comment.all.any((element) => element.replyId == thisComment.id)))
                                  Card(
                                    color: AppColors.mainText.withOpacity(.9),
                                    elevation: 0,
                                    shape: const LinearBorder(),
                                    margin: const EdgeInsets.only(left: AppSizes.pix16, top: AppSizes.pix10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Tex(locals.answerer, con: context),
                                            const Spacer(),
                                            Tex(toTime(state.comment.all.firstWhere((element) => element.replyId == thisComment.id).createdAt), con: context),
                                          ],
                                        ),
                                        Tex(
                                          state.comment.all.firstWhere((element) => element.replyId == thisComment.id).description,
                                          con: context,
                                          size: 14,
                                        ).title,
                                      ],
                                    ),
                                  ),
                              ],
                            );
                          }),
                      if (state.comment.all.where((element) => element.replyId == null).toList().length > 3)
                        Padding(
                          padding: EdgeInsets.fromLTRB(AppSizes.pix10, AppSizes.pix10, width(context) / 1.6, AppSizes.pix6),
                          child: ActionButton(
                            radius: AppSizes.pix10,
                            onTap: widget.onSeeAllPressed,
                            label: locals.seeAll,
                          ),
                        ),
                    ],
                  );
                } else {
                  logger("COMMENT STATE $state");
                  return const Loading();
                }
              },
            ),
          ]),
        const SliverPadding(padding: EdgeInsets.only(bottom: AppSizes.pix56))
      ],
    );
  }

  void _scrollToEnd() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Future<dynamic> popupDialog(
    Locals locals,
    TextEditingController descrCtrl,
    bool isUpdating,
    bool acceptedTerms, {
    required Function(BuildContext, bool) onSend,
  }) {
    return showDialog(
      context: context,
      builder: (cx) {
        return Dialog(
          clipBehavior: Clip.none,
          shape: RoundedRectangleBorder(borderRadius: borderAll10),
          insetPadding: const EdgeInsets.all(AppSizes.pix10),
          backgroundColor: AppColors.primary,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
                        child: Tex(
                          locals.answerer,
                          con: cx,
                          col: AppColors.mainText,
                          size: AppSizes.pix16,
                        ).title),
                  ),
                  IconButton(
                    icon: const Padding(
                      padding: EdgeInsets.all(AppSizes.pix2),
                      child: Icon(
                        Icons.close,
                        weight: AppSizes.pix24,
                        color: AppColors.mainText,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(cx);
                    },
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(AppSizes.pix8),
                child: TextField(
                  inputFormatters: [LengthLimitingTextInputFormatter(220)],
                  controller: descrCtrl,
                  style: const TextStyle(color: AppColors.black),
                  decoration: InputDecoration(
                    hintText: locals.writeComment,
                    filled: true,
                    fillColor: Colors.white.withOpacity(.3),
                    hintStyle: const TextStyle(color: AppColors.secondaryTextDark),
                    border: InputBorder.none,
                  ),
                  maxLines: 5,
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: AppSizes.pix10),
                  StatefulBuilder(builder: (cx, setSt) {
                    return InkWell(
                      onTap: () {
                        setSt(() {
                          acceptedTerms = !acceptedTerms;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(
                          acceptedTerms ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined,
                          color: AppColors.mainText,
                        ),
                      ),
                    );
                  }),
                  InkWell(
                    onTap: () => go(cx, const CommentTermsPage()),
                    child: Tex(
                      locals.acceptTerms,
                      con: cx,
                      size: 14,
                      col: AppColors.mainText,
                      padding: 0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(cx);
                    },
                    child: Tex(
                      locals.deny.toUpperCase(),
                      con: cx,
                      col: Colors.red,
                    ).title,
                  ),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      if (descrCtrl.text.isNotEmpty && acceptedTerms) {
                        onSend(cx, isUpdating);
                      }
                    },
                    child: Tex(
                      locals.accept.toUpperCase(),
                      con: cx,
                      col: AppColors.mainText,
                    ).title,
                  ),
                  const SizedBox(width: 13)
                ],
              ),
              const SizedBox(height: 8)
            ],
          ),
        );
      },
    );
  }
}

class Rower extends StatelessWidget {
  const Rower({
    super.key,
    required this.keyy,
    required this.value,
  });

  final String keyy;
  final String value;

  @override
  Widget build(BuildContext context) {
    return value == "0"
        ? Container()
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Tex(keyy, con: context, size: AppSizes.pix16, padding: AppSizes.pix6).subtitle),
              const SizedBox(width: AppSizes.pix10),
              Expanded(
                  child: Tex(
                value,
                con: context,
                padding: AppSizes.pix6,
                size: AppSizes.pix16,
              ).title),
            ],
          );
  }
}
