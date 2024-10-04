import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:mekanly_com/logic/core/errors/types.dart';
import 'package:mekanly_com/models/category/category_model.dart';
import 'package:mekanly_com/ui/pages/home/house_card.dart';
import 'package:mekanly_com/ui/pages/home/notification_page_view.dart';

import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/categs/categs_cubit.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/models/favorite/favorite_model.dart';
import '/ui/style/app_sizes.dart';
import '/ui/widgets/widgets.dart';
import '../../../logic/cubits/house/house_cubit.dart';
import '../../style/style.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TextEditingController searchCtrl = TextEditingController();
  int selectedIndex = 0;
  late TabController _controller;
  final _scrollController = ScrollController();
  String _selectedSort = 'saýlanmadyk';

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  Future<void> onRefresh() async {
    context.read<CategsCubit>().fetchCategsorites();
    context.read<HouseCubit>().getAllHouses();
    _selectedSort = 'saýlanmadyk';
    searchCtrl.clear();
    houses.clear();
    selectedIndex = 0;
    setState(() {});
  }

  List<House> houses = [];

  Widget homeViewPage(Locals locals) {
    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: () => onRefresh(),
      child: BlocBuilder<FavCubit, FavModel>(
        builder: (context, state) {
          return BlocBuilder<HouseCubit, HouseState>(
            builder: (context, state) {
              if (state is HouseLoading) {
                return const Loading();
              } else if (state is HouseSuccess) {
                houses = state.houses.houses.where((element) => element.leaveTime.isAfter(DateTime.now())).toList();
                if (selectedIndex != 0) {
                  houses = state.houses.houses
                      .where((element) => element.categoryId == selectedIndex)
                      .where((element) => (element.status == 'active' && !element.bronStatus && element.leaveTime.isAfter(DateTime.now())))
                      .toList();
                } else {
                  houses = state.houses.houses.where((element) => (element.status == 'active' && !element.bronStatus && element.leaveTime.isAfter(DateTime.now()))).toList();
                }

                houses.sort(
                  (a, b) => b.createdAt.compareTo(a.createdAt),
                );

                if (_selectedSort == locals.cheapToExp) {
                  houses.sort(
                    (a, b) => double.parse(a.price).compareTo(double.parse(b.price)),
                  );
                } else if (_selectedSort == locals.expToCheap) {
                  houses.sort((a, b) => double.parse(b.price).compareTo(double.parse(a.price)));
                }
                if (houses.isEmpty) {
                  return InkWell(
                    onTap: () {},
                    child: EmptyWidget(locals.notFoundInfo, icon: IconlyLight.info_square),
                  );
                }
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: AppSizes.pix16);
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: houses.length,
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  itemBuilder: (context, index) {
                    return HouseCard(house: houses[index]);
                  },
                );
              } else if (state is HouseError) {
                if (state.errorType == ErrorType.houseEmpty) {
                  return InkWell(
                    onTap: () => onRefresh(),
                    child: EmptyWidget(locals.notFoundInfo, icon: IconlyLight.info_square),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EmptyWidget(locals.checkYourInternetRetry, icon: Icons.error_outline_rounded),
                  );
                }
              } else {
                return Tex('${locals.checkYourInternetRetry}\n', con: context);
              }
            },
          );
        },
      ),
    );
  }

  BlocBuilder<CategsCubit, CategsState> categories() {
    return BlocBuilder<CategsCubit, CategsState>(
      builder: (context, categsState) {
        if (categsState is CategsLoading) {
          return Container();
        } else if (categsState is CategsSuccess) {
          return ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: categNames(context).length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  selectedIndex = index + 1;
                  _controller.animateTo(0);
                  setState(() {});
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 15, left: 8, top: 5, bottom: 5),
                      height: 35,
                      width: 35,
                      padding: const EdgeInsets.all(5),
                      child: SvgAsset(
                        svgs[index],
                        const Color(0xff306CA3),
                      ),
                    ),
                    Text(
                      categNames(context)[index],
                      style: const TextStyle(color: Color(0xff375570), fontSize: 16, overflow: TextOverflow.ellipsis, fontFamily: robotoSemiBold),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          );
        } else if (categsState is CategsError) {
          return Container();
        } else {
          return const EmptyWidget('.', icon: Icons.warning_amber_rounded);
        }
      },
    );
  }

  Widget searchWidget(BuildContext context, Locals locals) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: TextField(
                autofocus: false,
                onChanged: (value) {
                  setState(() {});
                },
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                inputFormatters: [LengthLimitingTextInputFormatter(20)],
                controller: searchCtrl,
                style: const TextStyle(color: AppColors.black, fontFamily: robotoSemiBold),
                onSubmitted: (v) => context.read<HouseCubit>().search(searchCtrl.text),
                decoration: InputDecoration(
                  fillColor: AppColors.background,
                  suffixIcon: IconButton(
                    onPressed: () {
                      context.read<HouseCubit>().search(searchCtrl.text);
                    },
                    icon: const Icon(
                      IconlyLight.search,
                      color: AppColors.mainTextDark,
                    ),
                  ),
                  hintText: locals.kat11,
                  hintStyle: TextStyle(color: AppColors.statusBar.withOpacity(.8)),
                  contentPadding: const EdgeInsets.only(left: AppSizes.pix10 + 10, top: 1),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: borderAll,
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              var navFilter = await go(context, const FilterPage());
              setState(() {
                _selectedSort = navFilter ?? 'saýlanmadyk';
              });
            },
            child: Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(color: Colors.transparent, shape: BoxShape.circle, border: Border.all(color: Colors.white)),
                child: const SvgAsset('filter2', size: 25, Colors.white)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: AppColors.secondary, // status bar color
      statusBarBrightness: Brightness.light,
    ));
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        controller: _scrollController,
        scrollDirection: Axis.vertical,
        body: TabBarView(controller: _controller, children: [homeViewPage(locals), categories()]),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 150.0,
              backgroundColor: AppColors.primary,
              collapsedHeight: 75,
              floating: false,
              pinned: true,
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(40),
                  child: Column(
                    children: [
                      searchWidget(context, locals),
                      TabBar(
                          controller: _controller,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: const TextStyle(fontFamily: robotoSemiBold, fontSize: 18),
                          unselectedLabelStyle: const TextStyle(fontFamily: robotoRegular, fontSize: 16),
                          unselectedLabelColor: Colors.white60,
                          indicatorColor: Colors.white,
                          indicatorWeight: 2,
                          labelColor: Colors.white,
                          tabs: [
                            Tab(
                                child: Text(
                              locals.kat12,
                            )),
                            Tab(child: Text(locals.kat13)),
                          ]),
                    ],
                  )),
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: const EdgeInsets.only(bottom: 110, left: 15, right: 20),
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.primary, AppColors.secondary],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                          child: Image.asset(
                        'assets/images/mekanly.png',
                        height: 35,
                        alignment: Alignment.centerLeft,
                      )),
                      GestureDetector(
                          onTap: () {
                            go(context, const NotifcationPageView());
                          },
                          child: const SvgAsset('notifcation', Colors.white)),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },
      ),
    );
  }
}
