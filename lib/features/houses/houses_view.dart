import 'dart:async';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../core/components/app_text.dart';
import '../../core/components/loading_indicator.dart';
import '../../core/components/search_field_house.dart';
import '../../core/components/try_again_widget.dart';
import '../../localization/extensions.dart';
import '../../product/base/base_status/base_status.dart';
import '../../product/constants/constants.dart';
import '../../product/transitions/custom_page_route.dart';
import '../../remote/entities/global_options/global_options.dart'
    show CategoryHouse, Location, SubLocations;
import '../../utils/extensions.dart';
import '../house_filters/house_filters_view.dart';
import '../house_filters/widgets/option_categories_modal_sheet.dart';
import '../house_filters/widgets/option_locations_modal_sheet.dart';
import 'bloc/houses_bloc.dart';
import 'widgets/bottom_sheet_price.dart';
import 'widgets/main_house_item.dart';
import 'widgets/rounded_blue_bordered_chip_btn.dart';

class HousesView extends StatefulWidget {
  const HousesView({super.key});

  static const routePath = '/houses-view';
  static const routeName = 'houses-view';

  @override
  State<HousesView> createState() => _HousesViewState();
}

class _HousesViewState extends State<HousesView>
    with AutomaticKeepAliveClientMixin {
  final ValueNotifier<bool> _showActionsNotifier = ValueNotifier<bool>(true);
  final ScrollController _scrollController = ScrollController();
  final TextEditingController inArzanController = TextEditingController();
  final TextEditingController inGymmatController = TextEditingController();
  final TextEditingController _searchController = TextEditingController();
  Timer? _debounce;

  bool _showScrollToTopButton = false;
  bool _showClearButton = false;
  List<Location> locations = [];
  List<CategoryHouse> categories = [];
  List<SubLocations>? currentLoc;
  List<CategoryHouse>? currentCategory;

  @override
  void initState() {
    super.initState();
    BaseLogger.warning('init houses');

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<HousesBloc>().add(const HousesEvent.refresh());
    });

    _scrollController.addListener(_scrollListener);
    _searchController.addListener(() {
      setState(() {
        _showClearButton = _searchController.text.isNotEmpty;
      });
    });
  }

  void _onSearchChanged() {
    final bloc = context.read<HousesBloc>();
    final searchText = _searchController.text;

    FocusScope.of(context).unfocus();

    BaseLogger.info('Search query: $searchText');
    final globalOptions = bloc.state.globalOptions?.data;

    if (globalOptions != null) {
      final filtered = globalOptions.copyWith(
        search: searchText,
      );
      bloc.add(HousesEvent.filter(filtered));
    } else {
      BaseLogger.warning('Global options are null, cannot perform search.');
    }
  }

  void _onClearSearch() {
    _searchController.clear();
    FocusScope.of(context).unfocus();
    final bloc = context.read<HousesBloc>();
    final globalOptions = bloc.state.globalOptions?.data;

    if (globalOptions != null) {
      final filtered = globalOptions.copyWith(
        search: '',
      );
      bloc.add(HousesEvent.filter(filtered));
    } else {
      BaseLogger.warning('Global options are null, cannot perform search.');
    }
  }

  void _scrollListener() {
    if (_scrollController.offset >= 300 && !_showScrollToTopButton) {
      setState(() {
        _showScrollToTopButton = true;
      });
    } else if (_scrollController.offset < 300 && _showScrollToTopButton) {
      setState(() {
        _showScrollToTopButton = false;
      });
    }

    if (_scrollController.position.userScrollDirection ==
        ScrollDirection.reverse) {
      _showActionsNotifier.value = false;
    } else if (_scrollController.position.userScrollDirection ==
        ScrollDirection.forward) {
      _showActionsNotifier.value = true;
    }

    // 👇 P A G I N A T I O N  – en alta ulaşıldığında
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      final bloc = context.read<HousesBloc>();
      final state = bloc.state;

      if (!state.isPaginating && state.hasMorePages) {
        bloc.add(const HousesEvent.loadMore());
      }
    }
  }

  void _scrollToTop() {
    _showActionsNotifier.value = true;
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    inArzanController.dispose();
    inGymmatController.dispose();
    _scrollController.removeListener(_scrollListener);
    _showActionsNotifier.dispose();
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: BlocConsumer<HousesBloc, HousesState>(
        listenWhen: (prev, curr) => prev.globalOptions != curr.globalOptions,
        listener: (context, state) {
          final options = state.globalOptions?.data;
          if (options != null && locations.isEmpty && categories.isEmpty) {
            setState(() {
              locations = List.of(options.locations);
              currentLoc = List.of(options.locations.getAllSelected ?? []);

              categories = List.of(options.categoryHouses);
              currentCategory =
                  List.of(options.categoryHouses.getAllSelected ?? []);

              inArzanController.text =
                  options.minPrice != null ? options.minPrice.toString() : '';
              inGymmatController.text =
                  options.maxPrice != null ? options.maxPrice.toString() : '';
            });
          }
        },
        builder: (context, state) {
          final filter = state.globalOptions;
          final houses = state.houses;
          String formatPrice(int? price) {
            if (price == null) return '-';

            if (price >= 1000000) {
              // ignore: lines_longer_than_80_chars
              return '${(price / 1000000).toStringAsFixed(price % 1000000 == 0 ? 0 : 1)} mln';
            } else if (price >= 1000) {
              // ignore: lines_longer_than_80_chars
              return '${(price / 1000).toStringAsFixed(price % 1000 == 0 ? 0 : 1)} müň';
            }
            return price.toString();
          }

          return Stack(
            children: [
              CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    titleSpacing: 0,
                    primary: false,
                    floating: true,
                    toolbarHeight: 75.w,
                    surfaceTintColor: Colors.white,
                    elevation: 5,
                    backgroundColor: ColorName.main,
                    // ignore: deprecated_member_use
                    shadowColor: Colors.black.withOpacity(0.1),
                    foregroundColor: Colors.transparent,
                    flexibleSpace: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: const Color.fromARGB(255, 0, 0, 25)
                                // ignore: deprecated_member_use
                                .withOpacity(0.02),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    title: Container(
                      // decoration: const BoxDecoration(
                      //   color: ColorName.main,
                      // ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 12,
                      ).w,
                      child: Row(
                        children: [
                          Expanded(
                            child: SearchField(
                              controller: _searchController,
                              onSearchTap: _onSearchChanged,
                              onClearTap: _onClearSearch,
                              showClearButton: _showClearButton,
                              onFieldSubmitted: (_) => _onSearchChanged(),
                            ),
                          ),
                          10.boxW,
                          GestureDetector(
                            onTap: () {
                              if (filter?.data != null) {
                                final data = HouseFilterRoute(
                                  globalOptions: filter!.data,
                                  bloc: context.read<HousesBloc>(),
                                );
                                Navigator.push(
                                  context,
                                  // ignore: inference_failure_on_function_invocation
                                  CustomPageRoute.slide(
                                    HouseFiltersView(filter: data),
                                  ),
                                );
                              }
                            },
                            child: SizedBox(
                              width: 35.w,
                              height: 35.w,
                              child: state.hasActiveFilters
                                  ? Assets.icons.icFilter.svg(package: 'gen')
                                  : Assets.icons.icFilterselected
                                      .svg(package: 'gen'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(40.w),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            height: 50.w,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Container(
                              color: Colors.white,
                              alignment: Alignment.center,
                              key: const Key('app_bar_actions'),
                              padding:
                                  const EdgeInsets.fromLTRB(14, 10, 14, 8).w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundedBlueBorderedChipBtn(
                                    onTap: () async {
                                      final updated =
                                          await OptionModalBottomSheetGysga
                                              .showOptionModal(
                                        context,
                                        locations: locations,
                                        isSingle: true,
                                      );

                                      if (updated != null) {
                                        setState(() {
                                          locations = List.of(updated);
                                          currentLoc = List.of(
                                            updated.getAllSelected ?? [],
                                          );
                                        });

                                        // ignore: use_build_context_synchronously
                                        final bloc = context.read<HousesBloc>();
                                        final globalOptions =
                                            bloc.state.globalOptions?.data;

                                        if (globalOptions != null) {
                                          final filtered =
                                              globalOptions.copyWith(
                                            locations: locations,
                                            selectedSubLocations: currentLoc,
                                          );
                                          bloc.add(
                                            HousesEvent.filter(
                                              filtered,
                                            ),
                                          );
                                        }
                                      }
                                    },
                                    title:
                                        (currentLoc?.nameAll?.isEmpty ?? true)
                                            ? context.translation.location
                                            : '${currentLoc?.nameAll}' ?? '',
                                    icon: Assets.icons.icLocation,
                                    // ignore: use_if_null_to_convert_nulls_to_bools
                                    isSelected: currentLoc?.isNotEmpty == true,
                                  ),
                                  6.boxW,
                                  RoundedBlueBorderedChipBtn(
                                    onTap: () async {
                                      final updated =
                                          await OptionCategoryModalBottomSheet
                                              .show(context,
                                                  categories: categories,
                                                  isSingle: true);

                                      if (updated != null) {
                                        setState(() {
                                          categories =
                                              List<CategoryHouse>.from(updated);
                                          currentCategory = List.of(
                                            updated.getAllSelected ?? [],
                                          );
                                        });

                                        final bloc = context.read<HousesBloc>();
                                        final globalOptions =
                                            bloc.state.globalOptions?.data;

                                        if (globalOptions != null) {
                                          final filtered =
                                              globalOptions.copyWith(
                                            categoryHouses: categories,
                                            selectedCategoryHouses:
                                                currentCategory,
                                          );
                                          bloc.add(
                                              HousesEvent.filter(filtered));
                                        }
                                      }
                                    },
                                    icon: Assets.icons.icCategory,
                                    title: (currentCategory?.isEmpty ?? true)
                                        ? context.translation.category
                                        : currentCategory?.nameAll ?? '',
                                    // ignore: use_if_null_to_convert_nulls_to_bools
                                    isSelected:
                                        // ignore: use_if_null_to_convert_nulls_to_bools
                                        currentCategory?.isNotEmpty == true,
                                  ),
                                  6.boxW,
                                  RoundedBlueBorderedChipBtn(
                                    onTap: () async {
                                      final result = await showModalBottomSheet<
                                          Map<String, int?>>(
                                        context: context,
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                            top: Radius.circular(24),
                                          ),
                                        ),
                                        builder: (context) =>
                                            BottomPriceSelectorSheet(
                                          initialMin: state
                                              .globalOptions?.data.minPrice,
                                          initialMax: state
                                              .globalOptions?.data.maxPrice,
                                        ),
                                      );

                                      if (result != null) {
                                        final minPrice = result['min'];
                                        final maxPrice = result['max'];

                                        final bloc = context.read<HousesBloc>();
                                        final globalOptions =
                                            bloc.state.globalOptions?.data;

                                        if (globalOptions != null) {
                                          final updatedOptions =
                                              globalOptions.copyWith(
                                            minPrice: minPrice,
                                            maxPrice: maxPrice,
                                          );

                                          bloc.add(HousesEvent.filter(
                                              updatedOptions));
                                        }
                                      }
                                    },
                                    title: (state.globalOptions?.data
                                                    .minPrice !=
                                                null ||
                                            state.globalOptions?.data
                                                    .maxPrice !=
                                                null)
                                        // ignore: lines_longer_than_80_chars
                                        ? '${formatPrice(state.globalOptions?.data.minPrice)} TMT - ${formatPrice(state.globalOptions?.data.maxPrice)} TMT'
                                        : context.translation.price,
                                    icon: Assets.icons.icCost,
                                    isSelected: state
                                                .globalOptions?.data.minPrice !=
                                            null ||
                                        state.globalOptions?.data.maxPrice !=
                                            null,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (state.status.isLoading)
                    SliverFillRemaining(
                      child: LoadingIndicator.circle(),
                    ),
                  if (state.status.isFailure)
                    SliverFillRemaining(
                      child: TryAgainWidget(onTryAgain: () {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          context
                              .read<HousesBloc>()
                              .add(const HousesEvent.refresh());
                        });
                      }),
                    ),
                  if (state.status.isSuccess) ...[
                    if (houses.isEmpty)
                      SliverFillRemaining(
                        child: _buildEmptyState(
                          context,
                        ),
                      )
                    else
                      SliverList.separated(
                        itemBuilder: (context, index) {
                          final house = houses[index];
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(14, 0, 14, 0).w,
                            child: MainHouseItem(
                              house: house,
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => 5.boxH,
                        itemCount: houses.length,
                      ),
                    if (state.isPaginating)
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: LoadingIndicator.circle(),
                        ),
                      ),
                    6.boxH.toSliver,
                    16.boxH.toSliver,
                  ],
                ],
              ),
              if (_showScrollToTopButton)
                Positioned(
                  right: 20.w,
                  bottom: 20.w,
                  child: AnimatedOpacity(
                    opacity: _showScrollToTopButton ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 300),
                    child: FloatingActionButton(
                      mini: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      splashColor: Colors.transparent,
                      highlightElevation: 0,
                      onPressed: _scrollToTop,
                      child: Assets.icons.yokaryk.svg(package: 'gen'),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

Widget _buildEmptyState(
  BuildContext context,
) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.icons.hiczatyok.svg(package: 'gen'),
        6.boxH,
        AppText.s14w400BdM(
          context.translation.not_found,
          fontFamily: StringConstants.roboto,
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF6A6A6A),
        ),
      ],
    ),
  );
}
