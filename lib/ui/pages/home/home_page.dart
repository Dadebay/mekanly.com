import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/cubits/house/house_cubit.dart';
import '../../../models/category/category_model.dart';
import '../../style/style.dart';
import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/core/errors/types.dart';
import '/logic/cubits/categs/categs_cubit.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/models/favorite/favorite_model.dart';
import '/ui/pages/home/house_card.dart';
import '/ui/style/app_sizes.dart';
import '/ui/widgets/widgets.dart';
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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leadingWidth: 1,
        titleSpacing: 0.0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix16),
          child: SizedBox(
            height: AppSizes.pix45,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Card(
                    surfaceTintColor: Colors.transparent,
                    color: AppColors.background,
                    elevation: 4,
                    margin: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
                    child: Center(
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
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: borderAll,
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: borderAll,
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(AppSizes.pix10),
                            child: Icon(
                              Icons.search,
                              color: AppColors.mainTextDark,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: AppSizes.pix6),
                IconButton(
                  style: IconButton.styleFrom(
                    shape: CircleBorder(side: BorderSide(color: AppColors.secondaryText.withOpacity(.70))),
                  ),
                  padding: EdgeInsets.zero,
                  onPressed: () => _navToFilter(),
                  icon: const SvgAsset(
                    'filter',
                    AppColors.mainTextDark,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: AppColors.background,
      body: RefreshIndicator(
        color: AppColors.primary,
        onRefresh: () => onRefresh(),
        child: BlocBuilder<FavCubit, FavModel>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSizes.pix4),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  BlocBuilder<CategsCubit, CategsState>(
                    builder: (context, categsState) {
                      if (categsState is CategsLoading) {
                        return Container();
                      } else if (categsState is CategsSuccess) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: AppSizes.pix8),
                          child: Container(
                            alignment: Alignment.topCenter,
                            decoration: const BoxDecoration(
                              color: AppColors.background,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 5.0),
                                  blurRadius: 2.0,
                                ),
                              ],
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ...List.generate(
                                      categNames(context).length,
                                      (i) => SizedBox(
                                            width: width(context) / 6,
                                            child: GestureDetector(
                                              onTap: () => setState(() => selectedIndex = i),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    height: 40,
                                                    width: 40,
                                                    child: SvgAsset(
                                                      svgs[i],
                                                      selectedIndex == i ? AppColors.buttons : AppColors.mainTextDark,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  Text(
                                                    categNames(context)[i],
                                                    style: TextStyle(
                                                        color: selectedIndex == i ? AppColors.buttons : AppColors.mainTextDark,
                                                        fontSize: height(context) / 65,
                                                        overflow: TextOverflow.ellipsis,
                                                        fontWeight: !(selectedIndex == i) ? FontWeight.w500 : FontWeight.w700),
                                                    maxLines: 1,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 6.0),
                                                    child: Divider(
                                                      height: 2,
                                                      color: selectedIndex == i ? AppColors.buttons : Colors.transparent,
                                                      thickness: selectedIndex == i ? 2 : 1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ))
                                ],
                              ),
                            ),
                          ),
                        );
                      } else if (categsState is CategsError) {
                        return Container();
                      } else {
                        return const EmptyWidget('.', icon: Icons.warning_amber_rounded);
                      }
                    },
                  ),
                  BlocBuilder<HouseCubit, HouseState>(
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

                        return Flexible(
                          child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: AppSizes.pix16);
                            },
                            itemCount: houses.length,
                            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return HouseCard(house: houses[index]);
                            },
                          ),
                        );
                      } else if (state is HouseError) {
                        if (state.errorType == ErrorType.houseEmpty) {
                          return Expanded(
                            child: Center(
                              child: SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  onTap: () => onRefresh(),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 30),
                                      EmptyWidget(locals.notFoundInfo, icon: Icons.refresh_outlined),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Center(
                            child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(height: 30),
                                  EmptyWidget(locals.checkYourInternetRetry, icon: Icons.error_outline_rounded),
                                  SizedBox(height: 150 - (MediaQuery.of(context).viewInsets.bottom)),
                                ],
                              ),
                            ),
                          );
                        }
                      } else {
                        return Tex('${locals.checkYourInternetRetry}\n', con: context);
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
