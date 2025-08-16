import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../core/components/app_text.dart';
import '../../core/components/loading_indicator.dart';
import '../../core/components/try_again_widget.dart';
import '../../localization/extensions.dart';
import '../../product/base/base_status/base_status.dart';
import '../../product/injection/injector.dart';
import '../../utils/extensions.dart';
import 'bloc/business_profile_detail_bloc.dart';
import 'bloc/product_cubit.dart/business_product_detail_cubit.dart';
import 'models/business_profile_detail_response.dart';
import 'widgets/business_detail_app_bar.dart';
import 'widgets/main_business_profile_item.dart';

class BusinessProfileDetailView extends StatefulWidget {
  const BusinessProfileDetailView({super.key, required this.id});

  static const routePath = '/business-profile-detail-view';
  static const routeName = 'business-profile-detail-view';

  final int? id;

  static Widget builder(BuildContext context, int id) {
    final bloc = injector<BusinessProfileDetailBloc>();
    return BlocProvider(
      create: (context) => bloc,
      child: BusinessProfileDetailView(id: id),
    );
  }

  @override
  State<BusinessProfileDetailView> createState() =>
      _BusinessProfileDetailViewState();
}

class _BusinessProfileDetailViewState extends State<BusinessProfileDetailView> {
  @override
  void initState() {
    if (widget.id != null) {
      context.read<BusinessProfileDetailBloc>().add(
            BusinessProfileDetailEvent.init(widget.id!),
          );
      print('DEBUG: shopId being fetched: ${widget.id!}');
      context
          .read<BusinessProfileProductCubit>()
          .fetchProducts(shopId: widget.id!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BusinessProfileDetailBloc, BusinessProfileDetailState>(
        builder: (context, state) {
          if (state.status.isLoading) {
            return LoadingIndicator.circle();
          }

          if (state.status.isFailure) {
            return TryAgainWidget(onTryAgain: () async {});
          }
          final detail =
              (state.response?.data != null) ? state.response?.data : null;

          // if (detail?.coverMedia != null) {
          //   return Column(
          //     children: [
          //       24.boxH,
          //       AspectRatio(
          //         aspectRatio: 16 / 9,
          //         child: HeaderVideoPlayer(
          //           videoUrl: detail?.coverMedia ?? '',
          //         ),
          //       ),
          //     ],
          //   );
          // }

          return DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: buildHeader(detail),
                  ),
                  SliverToBoxAdapter(child: 2.boxH),
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    primary: false,
                    title: TabBar(
                      padding: EdgeInsets.zero,
                      dividerColor: Colors.transparent,
                      labelStyle: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 12,
                      ),
                      indicatorColor: const Color(0xff474747),
                      tabs: [
                        Tab(
                          height: 45,
                          text: context.translation.announcements,
                          icon: Assets.icons.bildir.svg(package: 'gen'),
                        ),
                        Tab(
                          height: 45,
                          text: context.translation.seller_profile,
                          icon: Assets.icons.saty.svg(package: 'gen'),
                        ),
                      ],
                    ),
                    backgroundColor: const Color(0xffE9E9E9),
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  BlocConsumer<BusinessProfileProductCubit,
                      BusinessProductDetailState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      if (state is BusinessProductLoading) {
                        return LoadingIndicator.circle();
                      }
                      if (state is BusinessProductLoaded) {
                        return ColoredBox(
                          color: const Color.fromRGBO(246, 251, 253, 1),
                          child: Padding(
                            padding: const EdgeInsets.all(6),
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 5,
                              ),
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 167 / 255,
                              ),
                              itemCount: state.products.length,
                              itemBuilder: (context, index) {
                                final product = state.products[index];
                                return MainBusinessProfileItem(
                                  productData: product,
                                );
                              },
                            ),
                          ),
                        );
                      }
                      if (state is ProductError) {
                        log('<<<<<<<<<<<<<<<<<<${state.message}');
                        return Text('Error');
                      }
                      return const SizedBox.shrink();
                    },
                  ),
                  ColoredBox(
                    color: const Color.fromRGBO(246, 251, 253, 1),
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (detail?.locationName != null)
                            AppText.s14w400BdM(
                              context.translation.our_location,
                            ),
                          8.boxH,
                          if (detail?.locationParent?.name != null)
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: Colors.black54,
                                ),
                                6.boxW,
                                AppText.s14w400BdM(
                                  detail?.locationParent?.name ?? '',
                                ),
                              ],
                            ),
                          if (detail?.locationParent != null)
                            Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.map,
                                    size: 16,
                                    color: Colors.black54,
                                  ),
                                  6.boxW,
                                  AppText.s14w400BdM(
                                    detail!.locationParent!.name ?? '',
                                  ),
                                ],
                              ),
                            ),
                          16.boxH,
                          AppText.s14w400BdM(
                            context.translation.for_contact,
                            fontWeight: FontWeight.w500,
                          ),
                          8.boxH,
                          if (detail?.phoneNumbers != null &&
                              detail!.phoneNumbers!.isNotEmpty) ...[
                            ...detail.phoneNumbers!.map(
                              (phone) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 4,
                                ),
                                child: Row(
                                  children: [
                                    Assets.icons.calicon.svg(package: 'gen'),
                                    const SizedBox(width: 6),
                                    SelectableText(
                                      phone,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                          if (detail?.socialProfiles != null &&
                              detail!.socialProfiles!.isNotEmpty) ...[
                            10.boxH,
                            ...detail.socialProfiles!.map(
                              (profile) => Column(
                                children: [
                                  Row(
                                    children: [
                                      _getSocialIconWidget(profile.platform),
                                      10.boxW,
                                      AppText.s14w400BdM(profile.url ?? ''),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                ],
                              ),
                            ),
                          ],
                          8.boxH,
                          if (detail?.site != null) ...[
                            Row(
                              children: [
                                const Icon(Icons.language, size: 16),
                                6.boxW,
                                AppText.s14w400BdM(detail!.site!),
                              ],
                            ),
                            8.boxH,
                          ],
                          if (detail?.mail != null) ...[
                            Row(
                              children: [
                                Assets.icons.maill.svg(package: 'gen'),
                                6.boxW,
                                AppText.s14w400BdM(detail!.mail!),
                              ],
                            ),
                            8.boxH,
                          ],
                          16.boxH,
                          AppText.s14w400BdM(
                            context.translation.description,
                            fontWeight: FontWeight.w500,
                          ),
                          8.boxH,
                          if (detail?.description != null)
                            AppText.s14w400BdM('• ${detail!.description}'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _getSocialIconWidget(String? platform) {
    switch (platform) {
      case 'tiktok':
        return Assets.icons.tiktok.svg(package: 'gen');
      case 'instagram':
        return Assets.icons.insta.svg(package: 'gen');
      case 'link':
        return Assets.icons.link.svg(package: 'gen');
      case 'imo':
        return Assets.icons.imo.svg(package: 'gen');
      case 'youtube':
        return Assets.icons.link.svg(package: 'gen');
      default:
        return const Icon(Icons.link, size: 16, color: Colors.black54);
    }
  }

  SliverPersistentHeaderDelegate buildHeader(BusinessProfileData? detail) {
    DateTime? createdAt;
    if (detail?.shop?.createdAt != null) {
      try {
        createdAt = DateTime.parse(detail!.shop!.createdAt!);
      } catch (e) {
        log('Error parsing createdAt date: $e');
      }
    }

    if (detail?.coverMedia != null) {
      return CollapsibleVideoHeader(
        logoUrl: detail?.logo,
        videoUrl: detail?.coverMedia,
        viewCount: detail?.views,
        time: createdAt, // Use parsed createdAt
        subTitle: detail?.description,
        title: detail?.brand,
      );
    }

    if (detail?.image != null) {
      return CollapsibleImageHeader(
        bgUrl: detail?.image,
        logoUrl: detail?.logo,
        viewCount: detail?.views,
        time: createdAt, // Use parsed createdAt
        subTitle: detail?.description,
        title: detail?.brand,
      );
    } else {
      return CollapsibleLogoHeader(
        logoUrl: detail?.logo,
        viewCount: detail?.views,
        time: createdAt, // Use parsed createdAt
        subTitle: detail?.description,
        title: detail?.brand,
      );
    }
  }
}
