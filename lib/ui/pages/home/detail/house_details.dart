import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconly/iconly.dart';
import 'package:mekanly_com/logic/cubits/comments/comments_cubit.dart';
import 'package:mekanly_com/logic/cubits/view_count/view_count.dart';
import 'package:mekanly_com/ui/pages/home/detail/cached_net_image.dart';
import 'package:mekanly_com/ui/style/app_sizes.dart';
import 'package:mekanly_com/ui/style/style.dart';
import 'package:mekanly_com/ui/widgets/widgets.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/cubits.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/logic/cubits/lang/lang_cubit.dart';
import '/models/category/category_model.dart';
import '/models/favorite/favorite_model.dart';
import '/ui/pages/home/detail/full_screen.dart';
import '/ui/pages/home/detail/rate_widget.dart';
import '/ui/widgets/sli.dart';
import '../../comment_terms_page.dart';

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
                            child: Text(
                              "${widget.house.price} TMT",
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.black, fontFamily: robotoSemiBold, fontSize: AppSizes.pix20),
                            )),
                        const SizedBox(width: AppSizes.pix20),
                        Expanded(
                          flex: 7,
                          child: InkWell(
                            borderRadius: borderAll10,
                            onTap: () async {
                              await launchUrl(Uri.parse("tel:${widget.house.bronNumber}"));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [
                                      Color(0xFF3366FF),
                                      Color(0xFF00CCFF),
                                    ],
                                    begin: FractionalOffset(0.0, 0.0),
                                    end: FractionalOffset(1.0, 0.0),
                                    stops: [0.0, 1.0],
                                    tileMode: TileMode.clamp),
                                borderRadius: borderAll10,
                              ),
                              child: Text(
                                locals.bron,
                                style: const TextStyle(fontFamily: robotoSemiBold, color: Colors.white, fontSize: AppSizes.pix20),
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
    formatDateTime(widget.house.createdAt);

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
  String formatDateTime(DateTime dateTime) {
    String day = dateTime.day.toString().padLeft(2, '0');
    String month = dateTime.month.toString().padLeft(2, '0');
    String year = dateTime.year.toString();
    dateTimeFormatted = "$day.$month.$year";
    setState(() {});
    return "$day.$month.$year";
  }

  String dateTimeFormatted = '';
  @override
  Widget build(BuildContext context) {
    final favCubit = context.read<FavCubit>();

    var locals = Locals.of(context);

    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        appBar(context, favCubit, locals),
        namePart(context, locals),
        SliverToBoxAdapter(
          child: widget.house.luxe == true
              ? Divider(
                  color: Colors.grey.withOpacity(0.5),
                  thickness: 1,
                  height: 6,
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    color: Colors.grey.withOpacity(0.5),
                    thickness: 1,
                    height: 6,
                  ),
                ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: widget.isOriginal ? const EdgeInsets.fromLTRB(AppSizes.pix10, 8, AppSizes.pix10, 8) : const EdgeInsets.fromLTRB(0, AppSizes.pix6, 0, AppSizes.pix6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const SvgAsset('info', AppColors.mainTextDark, size: 20),
                const Icon(
                  Icons.info,
                  color: AppColors.mainTextDark,
                  size: 30,
                ),
                const SizedBox(width: AppSizes.pix4),
                Tex(locals.kat15, con: context, size: AppSizes.pix20).title,
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
                    Rower(keyy: locals.kat14, value: widget.house.categoryName),
                    Rower(keyy: locals.place, value: widget.house.location.name),
                    Rower(keyy: locals.dailyPrice, value: "${widget.house.price} TMT"),
                    Rower(keyy: locals.kat8, value: dateTimeFormatted),
                    Rower(keyy: locals.roomCount, value: widget.house.roomNumber.toString()),
                    Rower(keyy: locals.floorCount, value: widget.house.floorNumber.toString()),
                    Rower(keyy: locals.guestCount, value: widget.house.guestNumber.toString()),
                    Rower(keyy: locals.phoneNumber, value: widget.house.user.phone.toString()),
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
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: widget.house.possibilities[i].name.toString() == 'wifi' ? AppSizes.pix20 - 2 : AppSizes.pix24,
                            width: widget.house.possibilities[i].name.toString() == 'bed' ? AppSizes.pix24 + 4 : AppSizes.pix24,
                            child: SvgAsset(widget.house.possibilities[i].name, const Color(0xff717171)),
                          ),
                          const SizedBox(width: AppSizes.pix20),
                          Text(
                            possibs(context).firstWhere((element) => element.id == widget.house.possibilities[i].id).name,
                            style: const TextStyle(color: Color(0xff484848), fontSize: AppSizes.pix16, fontFamily: robotoSemiBold),
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        Sli(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.house.description,
              style: const TextStyle(color: Color(0xff626262), fontFamily: robotoMedium, fontSize: AppSizes.pix12 + 2),
            ),
          ),
          if (widget.house.user.id == context.read<AuthCubit>().repo.user.id && widget.house.status == 'active')
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
                child: Tex(
                  '${locals.comments} (${widget.house.comments.where((element) => element.replyId == null).toList().length})',
                  con: context,
                  col: AppColors.mainText,
                  size: AppSizes.pix16,
                ).title)
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
                                  Container(
                                    padding: const EdgeInsets.all(AppSizes.pix10),
                                    child: Card(
                                      color: AppColors.mainText.withOpacity(.9),
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(borderRadius: borderAll6),
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

  SliverToBoxAdapter namePart(BuildContext context, Locals locals) {
    return SliverToBoxAdapter(
      child: Container(
        padding: widget.isOriginal
            ? const EdgeInsets.fromLTRB(
                AppSizes.pix10,
                AppSizes.pix6,
                AppSizes.pix10,
                AppSizes.pix10,
              )
            : const EdgeInsets.symmetric(vertical: AppSizes.pix8),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Tex(widget.house.name, con: context).title),
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
                    Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            IconlyBold.location,
                            size: AppSizes.pix16 + 2,
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Text(
                              (widget.house.location.parentName == widget.house.location.name)
                                  ? widget.house.location.parentName
                                  : "${widget.house.location.parentName} - ${widget.house.location.name}",
                              style: const TextStyle(
                                fontFamily: robotoRegular,
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: AppColors.mainTextDark,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SvgAsset('eye', size: 18, Colors.black),
                          Tex(context.watch<ViewCountCubit>().state != 0 ? context.watch<ViewCountCubit>().state.toString() : widget.house.viewed.toString(), con: context).subtitle,
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          const SvgAsset('message', size: 18, Colors.black),
                          Text(
                            " ${widget.house.comments.length}",
                            style: const TextStyle(
                              fontFamily: robotoRegular,
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: AppColors.mainTextDark,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          const SvgAsset('calendar', size: 18, Colors.black),
                          Expanded(
                            child: Tex(
                              "${widget.house.enterTime.day.toString()}.${int.parse(widget.house.enterTime.month.toString()) < 10 ? '0${widget.house.enterTime.month.toString()}' : widget.house.enterTime.month.toString()}.${widget.house.enterTime.year}",
                              con: context,
                              maxLines: 1,
                            ).subtitle,
                          ),
                        ],
                      ),
                    ),
                    // if (!widget.isOriginal)
                    //   Tex(
                    //           widget.house.leaveTime.isAfter(DateTime.now())
                    //               ? widget.house.status == 'pending'
                    //                   ? locals.pending
                    //                   : widget.house.status == 'non-active'
                    //                       ? locals.notAccepted
                    //                       : locals.putted
                    //               : '',
                    //           overflow: TextOverflow.ellipsis,
                    //           con: context,
                    //           col: widget.house.status == 'pending'
                    //               ? AppColors.buttons
                    //               : widget.house.status == 'non-active'
                    //                   ? Colors.red
                    //                   : AppColors.green)
                    //       .subtitle,
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }

  List<XFile> convertToXFileList(List<String> paths) {
    return paths.map((path) => XFile(path)).toList();
  }

  SliverAppBar appBar(BuildContext context, FavCubit favCubit, Locals locals) {
    return SliverAppBar(
        backgroundColor: Colors.transparent,
        expandedHeight: AppSizes.pix250,
        flexibleSpace: FlexibleSpaceBar(
          background: Stack(
            children: [
              CarouselSlider(
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
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Image.asset(
                    'assets/images/mekanly.png',
                    color: Colors.white,
                    height: 20,
                    alignment: Alignment.centerLeft,
                  )),
            ],
          ),
        ),
        leading: Container(),
        actions: [
          widget.isOriginal
              ? Padding(
                  padding: const EdgeInsets.only(left: AppSizes.pix8),
                  child: GoBack(
                    color: Colors.white.withOpacity(0.8),
                  ),
                )
              : Container(),
          const Spacer(),
          GestureDetector(
            onTap: () async {
              List<XFile> xFiles = convertToXFileList(widget.imagePaths);
              Share.share(xFiles.first.path);
            },
            child: Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  shape: BoxShape.circle,
                ),
                child: const SvgAsset('share', Colors.black)
                //  Image.asset('assets/icons/share1.png', height: AppSizes.pix20 + 2),
                ),
          ),
          if (widget.house.user.id != context.watch<AuthCubit>().repo.user.id)
            BlocBuilder<FavCubit, FavModel>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () async {
                    await favCubit.toggleFavorite(widget.house, locals, context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      favCubit.isItemFavorited(widget.house.id) ? IconlyBold.heart : IconlyLight.heart,
                      size: AppSizes.pix24,
                      color: favCubit.isItemFavorited(widget.house.id) ? AppColors.red : AppColors.black,
                    ),
                  ),
                );
              },
            ),
          const SizedBox(width: AppSizes.pix10)
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(AppSizes.pix24),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Card(
              color: Colors.black38,
              shape: RoundedRectangleBorder(borderRadius: borderAll10),
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
        ));
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
          backgroundColor: AppColors.secondary,
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
              Expanded(child: Tex(keyy, con: context, size: AppSizes.pix12 + 2, padding: AppSizes.pix6).subtitle),
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
