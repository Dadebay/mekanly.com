import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekanly_com/logic/cubits/house_manager.dart';
import 'package:mekanly_com/ui/pages/profile/my_houses/my_houses.dart';

import '../../../../localization/locals.dart';
import '../../../../models/category/category_model.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';
import '/config/config.dart';
import '/logic/cubits/house/house_cubit.dart';
import '/ui/pages/home/home.dart';
import '/ui/widgets/widgets.dart';
import 'update_house_page.dart';

class EditHousePage extends StatefulWidget {
  const EditHousePage({
    super.key,
    required this.house,
  });

  final House house;

  @override
  State<EditHousePage> createState() => EditHousePageState();
}

class EditHousePageState extends State<EditHousePage> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  late TabController _tabController;

  AlertDialog alert() => const AlertDialog(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        content: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: AppColors.primary,
            ),
          ],
        ),
      );
  bool showAllComments = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  HouseManager houseManager = HouseManager();
  Duration? remainingEditTime;
  Duration? remainingMoveForwardTime;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _loadRemainingTimes();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _loadRemainingTimes() async {
    Duration? editTime = await houseManager.getRemainingEditTime(widget.house.id.toString());
    Duration? moveForwardTime = await houseManager.getRemainingMoveForwardTime(widget.house.id.toString());

    setState(() {
      remainingEditTime = editTime;
      remainingMoveForwardTime = moveForwardTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    var div = const Divider(
      color: AppColors.secondaryTextDark,
      height: 20,
    );

    return Scaffold(
      key: _scaffoldKey,
      floatingActionButton: _bottomButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      backgroundColor: AppColors.background,
      appBar: TopBar(
        color: AppColors.mainText,
        height: 100,
        title: widget.house.name,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(
            decoration: BoxDecoration(border: Border(top: BorderSide(color: AppColors.secondaryText.withOpacity(.2)))),
            child: TabBar(
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              isScrollable: false,
              physics: const NeverScrollableScrollPhysics(),
              labelColor: AppColors.mainTextDark,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              indicatorColor: AppColors.statusBar.withOpacity(.6),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 40),
              controller: _tabController,
              tabs: [
                Tab(
                  height: 45,
                  text: locals.infos,
                ),
                Tab(
                  height: 45,
                  text: locals.services,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix10, vertical: AppSizes.pix10),
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          key: UniqueKey(),
          controller: _tabController,
          children: [
            StatefulBuilder(builder: (context, st) {
              return Details(
                isOriginal: false,
                imagePaths: widget.house.images.map((e) => e.url).toList(),
                house: widget.house,
                onSeeAllPressed: () {
                  st(() {
                    showAllComments = !showAllComments;
                  });
                },
                showAllComments: showAllComments,
              );
            }),
            Column(
              children: [
                ChangingTile(title: locals.edit, subtitle: locals.editGuide, onTap: _editHouse),
                div,
                ChangingTile(
                  title: locals.moveForward,
                  subtitle: locals.forwardGuide,
                  onTap: ()  {
                    if (widget.house.leaveTime.isAfter(DateTime.now())) {
                      _moveForward();
                    } else {
                      errorToast(locals.expiredPleaseEdit.split('.')[0]);
                    }
                  },
                ),
                div
              ],
            )
          ],
        ),
      ),
    );
  }

  void _moveForward() async {
    var locals = Locals.of(context);
    if (widget.house.status != 'active' && widget.house.status == 'pending') {
      errorToast(locals.adminChecking);
    } else if (widget.house.status == 'non-active') {
      errorToast(locals.houseRejected);
    } else {
      bool canMoveForward = await houseManager.canMoveForward(widget.house.id.toString());
      Future.delayed(const Duration(milliseconds: 10), () {
        showDialog(
            context: context,
            builder: (ctx) {
              if (canMoveForward) {
                return AlertDialog(
                  backgroundColor: AppColors.background,
                  title: Tex(locals.habarnama, con: ctx),
                  content: Tex(locals.uSureMoveUpHouse, con: ctx),
                  actions: [
                    TextButton(
                        child: Tex(locals.deny, con: ctx),
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        }),
                    TextButton(
                      child: Tex(locals.yes, con: ctx),
                      onPressed: () async {
                        await ctx.read<HouseCubit>().forwardHouse(widget.house.id).then((value) async {
                          Navigator.of(ctx).pop();
                          await ctx.read<HouseCubit>().getAllHouses();
                          await houseManager.updateMoveForwardTimestamp(widget.house.id.toString());
                          _loadRemainingTimes();
                        }).then(
                          (value) {
                            successToast(Locals.of(context).houseMovedForward);
                          },
                        );
                      },
                    ),
                  ],
                );
              } else {
                logger("You can only move forward this house once in 3 days.");
                return AlertDialog(
                  actions: [
                    TextButton(
                        child: Tex("OK", con: context),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ],
                  title: Tex(locals.habarnama, con: ctx).title,
                  content: Tex('${locals.notMovedForward} ${formatDuration(remainingMoveForwardTime!, ctx)}', con: ctx),
                );
              }
            });
      });
    }
  }

  void _editHouse() async {
    var locals = Locals.of(context);
    if (widget.house.status == 'pending') {
      errorToast(locals.adminChecking);
    } else {
      bool canEdit = await houseManager.canEditHouse(widget.house.id.toString());
      bool canGo = true;
      if (canEdit && canGo) {
        await Future.delayed(
          Duration.zero,
          () async => canGo = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UpdateHousePage(house: widget.house)),
          ),
        );

        await houseManager.updateEditTimestamp(widget.house.id.toString());
        _loadRemainingTimes();
        logger("House edited successfully.");
      } else {
        Future.delayed(const Duration(milliseconds: 10), () {
          showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  actions: [
                    TextButton(
                        child: Tex("OK", con: context),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ],
                  title: Tex(locals.habarnama, con: ctx).title,
                  content: Tex('${locals.editWarning}${formatDuration(remainingEditTime!, ctx)}', con: ctx),
                );
              });
        });
        logger("You can only edit this house twice a day.");
      }
    }
  }

  Widget? _bottomButtons() {
    var locals = Locals.of(context);

    return _currentIndex == 1
        ? null
        : Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: AppSizes.pix8,
                  offset: Offset(0.0, 3.0),
                ),
              ],
              color: AppColors.background,
            ),
            width: double.infinity,
            height: AppSizes.pix56,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    borderRadius: borderAll10,
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(backgroundColor: AppColors.background, title: Tex(locals.remove, con: context), content: Tex(locals.uSureRemoveHouse, con: context), actions: [
                            TextButton(
                                child: Tex(locals.deny, con: context),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                            TextButton(
                                child: Tex(locals.yes, con: context),
                                onPressed: () async {
                                  await context.read<HouseCubit>().deleteHouse(widget.house.id).then((value) async {
                                    await context.read<HouseCubit>().getAllHouses().then((value) {
                                      Navigator.of(context).popUntil((route) => route.isFirst);
                                      successToast(locals.deletedSuccessfully);
                                      go(context, const MyHouses());
                                    });
                                  });
                                }),
                          ]);
                        },
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: AppColors.buttons, borderRadius: borderAll10),
                      height: 34,
                      width: width(context) / 2.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Tex(locals.remove, con: context).white,
                        ],
                      ),
                    ),
                  ),
                  BlocBuilder<HouseCubit, HouseState>(
                    builder: (context, state) {
                      bool isBroned = false;
                      if (state is HouseSuccess) {
                        isBroned = state.houses.houses.firstWhere((element) => element.id == widget.house.id).bronStatus;
                      }
                      return IgnorePointer(
                        ignoring: widget.house.leaveTime.isBefore(DateTime.now()),
                        child: InkWell(
                          borderRadius: borderAll10,
                          onTap: () {
                            if (widget.house.status != 'active' && widget.house.status == 'pending') {
                              errorToast(locals.adminChecking);
                            } else if (widget.house.status == 'non-active') {
                              errorToast(locals.houseRejected);
                            } else {
                              showDialog(
                                context: context,
                                builder: (dialogContext) {
                                  return AlertDialog(
                                    backgroundColor: AppColors.background,
                                    title: isBroned ? null : Tex(locals.isYourHBronned, con: context),
                                    content: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Tex(isBroned ? locals.yourHousewillbeVisible : locals.yourHousewillbeInvisible, con: context),
                                      ],
                                    ),
                                    actions: [
                                      TextButton(
                                          child: Tex(locals.no, con: context),
                                          onPressed: () {
                                            Navigator.of(dialogContext).pop();
                                          }),
                                      TextButton(
                                          child: Tex(locals.yes, con: context),
                                          onPressed: () {
                                            if (widget.house.status == 'pending') {
                                              errorToast(locals.adminChecking);
                                            } else {
                                              showDialog(
                                                barrierDismissible: false,
                                                barrierColor: Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return alert();
                                                },
                                              ).then((v) => Navigator.of(context).pop());

                                              successToast(locals.workinOn);
                                              context.read<HouseCubit>().bronHouse(widget.house.id).whenComplete(
                                                    () => context.read<HouseCubit>().getAllHouses().whenComplete(
                                                          () => Navigator.of(context).pop(),
                                                        ),
                                                  );
                                            }
                                          }),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: widget.house.leaveTime.isBefore(DateTime.now())
                                    ? AppColors.secondaryTextDark
                                    : isBroned
                                        ? AppColors.red
                                        : AppColors.green,
                                borderRadius: borderAll10),
                            height: 34,
                            width: width(context) / 2.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Tex(isBroned ? locals.bronned : locals.unbronned, con: context).white,
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
  }
}

class ChangingTile extends StatelessWidget {
  const ChangingTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.onTap,
  });
  final String title;
  final String subtitle;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Tex(title, con: context, size: AppSizes.pix16).title,
            Tex(subtitle, con: context, col: AppColors.secondaryTextDark).subtitle,
          ],
        ),
        const SizedBox(height: AppSizes.pix10),
        ActionButton(
          radius: 4,
          size: title == locals.moveForward ? 15 : AppSizes.pix16,
          color: AppColors.buttons.withOpacity(.7),
          label: title.toUpperCase(),
          onTap: onTap,
        ),
      ],
    );
  }
}
