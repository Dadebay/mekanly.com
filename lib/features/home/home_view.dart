import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../core/components/adv_card.dart';
import '../../core/components/announcement_card.dart';
import '../../core/components/app_btn.dart';
import '../../core/components/app_text.dart';
import '../../core/components/horizontal_adv_card.dart';
import '../../core/components/loading_indicator.dart';
import '../../core/components/try_again_widget.dart';
import '../../localization/extensions.dart';
import '../../product/base/base_status/base_status.dart';
import '../../product/constants/constants.dart';
import '../../utils/api_provider.dart';
import '../../utils/extensions.dart';
import '../root/cubit/navigation_cubit.dart';
import 'cubit/home_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  static const routePath = '/home-view';
  static const routeName = 'home-view';

  static Widget builder() {
    return const HomeView();
  }

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with AutomaticKeepAliveClientMixin {
  final ScrollController _smallBannersScrollController = ScrollController();
  Timer? _autoScrollTimer;
  int _itemCount = 0;
  int _currentScrollIndex = 0;

  @override
  void initState() {
    BaseLogger.warning(' init houses');
    super.initState();
  }

  void _startContinuousScrolling({int? count}) {
    if (_itemCount == 0 && count != null && mounted) {
      setState(() {
        _itemCount = count;
      });
    }

    _autoScrollTimer?.cancel();
    _currentScrollIndex = 0;

    _autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_smallBannersScrollController.hasClients) {
        _currentScrollIndex = (_currentScrollIndex + 2) % _itemCount;
        _scrollToIndex(_currentScrollIndex);
      }
    });
  }

  void _scrollToIndex(int index) {
    final position = index * (157 + (5.w) * 2);

    if (_smallBannersScrollController.hasClients) {
      _smallBannersScrollController.animateTo(
        position,
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _smallBannersScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state.smallBanners?.isNotEmpty ?? false) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _startContinuousScrolling(count: state.smallBanners?.length);
          });
        }
      },
      builder: (context, state) {
        if (state.status.isLoading) {
          return LoadingIndicator.circle();
        }

        if (state.status.isFailure) {
          return TryAgainWidget(
            onTryAgain: () async {
              await context.read<HomeCubit>().getHome();
            },
          );
        }

        final smallBanners = state.smallBanners;
        final bigBanners = state.bigBanners;
        final topAds = state.topAds;

        return ListView(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            //small banners section

            if (smallBanners?.isNotEmpty ?? false)
              CarouselSlider.builder(
                itemCount: smallBanners!.length,
                itemBuilder: (context, index, realIndex) {
                  final banner = smallBanners[index];
                  final bannerColor = switch (index) {
                    0 => const Color.fromRGBO(76, 177, 255, 1),
                    1 => const Color.fromRGBO(99, 164, 255, 1),
                    2 => const Color.fromRGBO(239, 138, 80, 1),
                    3 => const Color.fromRGBO(239, 83, 80, 1),
                    4 => const Color.fromRGBO(86, 174, 198, 1),
                    5 => const Color.fromRGBO(76, 177, 255, 1),
                    6 => const Color.fromRGBO(155, 169, 188, 1),
                    7 => const Color.fromRGBO(93, 202, 133, 1),
                    _ => ColorName.ads1,
                  };

                  return Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: HorizontalAdvCard(
                      imgUrl: banner.image != null && (banner.image!.startsWith('http://') || banner.image!.startsWith('https://'))
                          ? banner.image
                          : '${ApiProvider().baseUrl}/${banner.image ?? ''}',
                      logo: banner.logo != null && banner.logo != 'storage/' && (banner.logo!.startsWith('http://') || banner.logo!.startsWith('https://'))
                          ? banner.logo
                          : banner.logo != null && banner.logo != 'storage/'
                              ? '${ApiProvider().baseUrl}/${banner.logo ?? ''}'
                              : null,
                      title: banner.title ?? '',
                      color: bannerColor,
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 210.w,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  viewportFraction: 0.45,
                  scrollPhysics: const BouncingScrollPhysics(),
                ),
              ),

            // Big banners section
            if (bigBanners?.isNotEmpty ?? false)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4).w,
                child: CarouselSlider.builder(
                  itemCount: bigBanners!.length,
                  itemBuilder: (context, index, realIndex) {
                    final banner = bigBanners[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: AdvCard(
                        imgUrl: banner.image != null && (banner.image!.startsWith('http://') || banner.image!.startsWith('https://'))
                            ? banner.image
                            : '${ApiProvider().baseUrl}/${banner.image ?? ''}',
                        logo: banner.logo != null && banner.logo != 'storage/' && (banner.logo!.startsWith('http://') || banner.logo!.startsWith('https://'))
                            ? banner.logo
                            : banner.logo != null && banner.logo != 'storage/'
                                ? '${ApiProvider().baseUrl}/${banner.logo ?? ''}'
                                : null,
                        title: banner.title ?? '',
                        // color: bannerColor,
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 210.w,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 10),
                    viewportFraction: 1,
                    scrollPhysics: const NeverScrollableScrollPhysics(),
                    disableCenter: true,
                  ),
                ),
              ),

            // Section header translation.home
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 17, bottom: 7),
              child: AppText.s14w400BdM(
                context.translation.announcements,
                fontFamily: StringConstants.roboto,
                textAlign: TextAlign.start,
              ),
            ),

            // Top ads section
            if (topAds?.isNotEmpty ?? false)
              ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => 5.boxH,
                itemCount: topAds?.length ?? 0,
                itemBuilder: (context, index) {
                  final ads = topAds?[index];
                  return AnnouncementCard(topAds: ads);
                },
              ),

            // Button section
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ).w,
              child: AppBtn(
                onTap: () {
                  context.read<NavigationCubit>().changeTab(1);
                },
                text: context.translation.real_estate1,
                rgIcon: Assets.icons.icForwardIcon.svg(package: 'gen'),
                fontWeight: FontWeight.w600,
                fontSize: 13.sp,
                fontFamily: StringConstants.roboto,
                textColor: const Color(0xff3A8BCF),
                bgColor: const Color(0xffE5F6FE),
              ),
            ),

            SizedBox(height: 20.w),
          ],
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
