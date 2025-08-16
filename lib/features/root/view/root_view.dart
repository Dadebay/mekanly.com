import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../core/components/app_text.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';
import '../../business_porfile/business_profile.dart';
import '../../favorites/favorites_view.dart';
import '../../home/home_view.dart';
import '../../houses/houses_view.dart';
import '../../menu/menu_view.dart';
import '../cubit/navigation_cubit.dart';
import '../widgets/custom_scroll_controller.dart';
import 'root_view_handler.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  static const routePath = '/root-view';
  static const routeName = 'root-view';

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  final CustomScrollController _scrollController = CustomScrollController();
  late final NavigationCubit _navigationCubit;

  @override
  void initState() {
    super.initState();
    _navigationCubit = NavigationCubit(vsync: this);
  }

  @override
  void dispose() {
    _navigationCubit.close();
    super.dispose();
  }

  void _onTabSelected(int index) {
    _navigationCubit.changeTab(index);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider.value(
      value: _navigationCubit,
      child: BlocListener<NavigationCubit, NavigationState>(
        listener: (context, state) {
          if (state.index != 0) {
            _scrollController.animateTo(
              35.w,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
            _scrollController.appBarVisibility.value = false;
          } else {
            _scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
            _scrollController.appBarVisibility.value = true;
          }
        },
        child: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            final physics = state.index == 0
                ? const AlwaysScrollableScrollPhysics()
                : const NeverScrollableScrollPhysics();
            return Scaffold(
              backgroundColor: ColorName.main,
              body: Container(
                color: ColorName.white,
                margin: EdgeInsets.only(top: context.mediaQuery.padding.top),
                child: NestedScrollView(
                  physics: physics,
                  controller: _scrollController,
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return [
                      CustomSliverAppBar(
                        visibilityNotifier: _scrollController.appBarVisibility,
                        scrollController: _scrollController,
                        backgroundColor: ColorName.main,
                        shadowColor: Colors.black26,
                        height: 35.w,
                        currentTabIndex: state.index,
                        title: Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  // height: 20.w,
                                  child: Assets.icons.logoo.svg(package: 'gen'),
                                ).toLeft(),
                              ),
                              Assets.icons.icNotif.svg(package: 'gen'),
                            ],
                          ),
                        ),
                        bottom: _buildBottomNavigation(state.index),
                      ),
                    ];
                  },
                  body: TabBarView(
                    controller: _navigationCubit.tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      HomeView(
                        key: Key('home_view'),
                      ),
                      HousesView(
                        key: Key('houses_view'),
                      ),
                      BusinessProfileView(
                        key: Key('business_profile_view'),
                      ),
                      FavoritesView(
                        key: Key('favorites_view'),
                      ),
                      MenuView(
                        key: Key('menu_view'),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildBottomNavigation(int currentIndex) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8).w,
      child: Row(
        children: List.generate(
          navigationPages(context).length,
          (index) {
            final page = navigationPages(context)[index];
            return Expanded(
              child: InkWell(
                onTap: () => _onTabSelected(index),
                child: Container(
                  padding: const EdgeInsets.only(bottom: 0.2).w,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: 20.w,
                        height: 20.w,
                        child: currentIndex == page.index
                            ? page.activeIcon.svg(package: 'gen')
                            : page.icon.svg(package: 'gen'),
                      ),
                      const SizedBox(height: 4),
                      Flexible(
                        child: AppText.s12w400BdS(
                          page.label,
                          fontSize: 9.sp,
                          textAlign: TextAlign.center,
                          color: page.index == currentIndex
                              ? ColorName.white
                              : ColorName.cardShadow,
                          fontWeight: page.index == currentIndex
                              ? FontWeight.bold
                              : FontWeight.w500,
                          fontFamily: StringConstants.roboto,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 3),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 3,
                        width: 57,
                        decoration: BoxDecoration(
                          color: currentIndex == page.index
                              ? ColorName.white
                              : Colors.transparent,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(9),
                            topRight: Radius.circular(9),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
