import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:mekanly_com/logic/core/errors/types.dart';
import 'package:mekanly_com/models/category/category_model.dart';
import 'package:mekanly_com/ui/pages/home/detail/category_view.dart';
import 'package:mekanly_com/ui/pages/home/house_card.dart';

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

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  Future<void> onRefresh() async {
    context.read<CategsCubit>().fetchCategsorites();
    context.read<HouseCubit>().getAllHouses();
    _selectedSort = 'saýlanmadyk';
    searchCtrl.clear();
  }

  TextEditingController searchCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  String _selectedSort = 'saýlanmadyk';

  void _navToFilter() async {
    var navFilter = await go(context, const FilterPage());
    setState(() {
      _selectedSort = navFilter ?? 'saýlanmadyk';
    });
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: appBar(context, locals),
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            searchfield(context, locals),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.secondary,
              ),
              child: TabBar(
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
                      locals.allReg,
                    )),
                    Tab(child: Text(locals.category)),
                  ]),
            ),
            Expanded(child: TabBarView(children: [page1(locals), categories()])),
          ],
        ),
      ),
    );
  }

  RefreshIndicator page1(Locals locals) {
    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: () => onRefresh(),
      child: Center(
        child: BlocBuilder<FavCubit, FavModel>(
          builder: (context, state) {
            return BlocBuilder<HouseCubit, HouseState>(
              builder: (context, state) {
                List<House> houses = [];
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

                  return ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: AppSizes.pix16);
                    },
                    scrollDirection: Axis.vertical,
                    itemCount: houses.length,
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                    shrinkWrap: true,
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
            itemCount: categNames(context).length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return CategoryViewPage(
                        categoryID: index,
                        pageName: categNames(context)[index],
                      );
                    },
                  ));
                },
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                      height: 35,
                      width: 35,
                      padding: const EdgeInsets.all(5),
                      child: SvgAsset(
                        svgs[index],
                        size: 50,
                        AppColors.mainTextDark,
                      ),
                    ),
                    Text(
                      categNames(context)[index],
                      style: const TextStyle(color: AppColors.mainTextDark, fontSize: 16, overflow: TextOverflow.ellipsis, fontFamily: robotoSemiBold),
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

  AppBar appBar(BuildContext context, Locals locals) {
    return AppBar(
      backgroundColor: AppColors.secondary,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      leadingWidth: 1,
      titleSpacing: 0.0,
      title: logoAndNotification(),
    );
  }

  Widget logoAndNotification() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Image.asset(
            'assets/images/mekanly.png',
            color: Colors.white,
            height: 35,
            alignment: Alignment.centerLeft,
          )),
          GestureDetector(
            child: const Icon(
              IconlyLight.notification,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  Widget searchfield(BuildContext context, Locals locals) {
    return Container(
      color: AppColors.secondary,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(color: Colors.white, borderRadius: borderAll10),
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
                style: const TextStyle(color: AppColors.mainTextDark),
                onSubmitted: (v) => context.read<HouseCubit>().search(searchCtrl.text),
                decoration: InputDecoration(
                  fillColor: AppColors.background,
                  suffixIcon: searchCtrl.text.isNotEmpty ? IconButton(onPressed: () => setState(() => searchCtrl.clear()), icon: const Icon(Icons.close)) : null,
                  hintText: locals.where,
                  hintStyle: TextStyle(color: AppColors.statusBar.withOpacity(.8)),
                  contentPadding: const EdgeInsets.only(left: AppSizes.pix10, top: 1),
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
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(AppSizes.pix10),
                    child: Icon(
                      IconlyLight.search,
                      color: AppColors.mainTextDark,
                    ),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => _navToFilter(),
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: borderAll10,
                ),
                child: const Icon(
                  IconlyLight.filter,
                  size: 24,
                )),
          ),
        ],
      ),
    );
  }
}
