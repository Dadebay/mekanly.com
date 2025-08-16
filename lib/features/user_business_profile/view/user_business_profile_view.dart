import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/loading_indicator.dart';
import '../../../core/components/try_again_widget.dart';
import '../../../product/base/base_status/base_status.dart';
import '../../../product/injection/injector.dart';
import '../../../utils/extensions.dart';
import '../../business_porfile_detail/models/business_profile_detail_products_response.dart';
import '../../business_porfile_detail/models/business_profile_detail_response.dart';
import '../../business_porfile_detail/models/business_profile_house_products_response.dart';
import '../../business_porfile_detail/widgets/business_detail_app_bar.dart';
import '../../content/bloc/content_bloc.dart';
import '../../content/widgets/content_card_widget.dart';
import '../bloc/user_business_profile_bloc.dart';
import '../widgets/categories_chip_horizontal_list_view.dart';

class UserBusinessProfileView extends StatefulWidget {
  const UserBusinessProfileView({super.key, required this.id});

  final int id;

  static const routePath = '/user-business-profile-view';
  static const routeName = 'user-business-profile-view';

  static Widget builder(BuildContext context, int id) {
    final bloc = injector<UserBusinessProfileBloc>();
    return BlocProvider(
      create: (context) => bloc,
      child: UserBusinessProfileView(
        id: id,
      ),
    );
  }

  @override
  State<UserBusinessProfileView> createState() =>
      _UserBusinessProfileViewState();
}

class _UserBusinessProfileViewState extends State<UserBusinessProfileView>
    with SingleTickerProviderStateMixin {
  late UserBusinessProfileBloc _bloc;

  late TabController _tabController;

  int tabIndex = 0;

  @override
  void initState() {
    _bloc = context.read<UserBusinessProfileBloc>();

    _bloc.add(UserBusinessProfileEvent.init(widget.id));

    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener(_listener);
    super.initState();
  }

  void _listener() {
    tabIndex = _tabController.index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserBusinessProfileBloc, UserBusinessProfileState>(
        // buildWhen: (pr, cr) => pr.status != cr.status,
        builder: (context, state) {
          if (state.status.isLoading) {
            return LoadingIndicator.circle();
          }

          if (state.status.isFailure) {
            return TryAgainWidget(
              onTryAgain: () async {
                _bloc = context.read<UserBusinessProfileBloc>();

                _bloc.add(UserBusinessProfileEvent.init(widget.id));
              },
            );
          }
          final categories = state.profile?.productCategories;
          final detail = state.profile;
          final products =
              state.currentCategory?.typeProd == ProductCategoryType.product
                  ? state.products
                  : state.houseProducts;
          return ExtendedNestedScrollView(
            onlyOneScrollInBody: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: buildHeader(detail),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 2.h,
                    color: ColorName.blueishLight,
                  ),
                ),
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  primary: false,
                  shadowColor: Colors.white,
                  foregroundColor: Colors.white,
                  surfaceTintColor: Colors.white,
                  title: TabBar(
                    overlayColor: WidgetStateColor.transparent,
                    controller: _tabController,
                    padding: EdgeInsets.zero,
                    dividerColor: Colors.transparent,
                    labelStyle:
                        context.textTheme.bodyMedium?.copyWith(fontSize: 12),
                    indicatorColor: const Color(0xff474747),
                    tabs: [
                      Tab(
                        height: 45,
                        text: 'Bildirişler',
                        icon: Assets.icons.icCategory
                            .svg(package: 'gen', color: ColorName.black),
                      ),
                      Tab(
                        height: 45,
                        text: 'Satyjy profili',
                        icon:
                            Assets.icons.icBusinessProfile.svg(package: 'gen'),
                      ),
                    ],
                  ),
                  backgroundColor: Colors.white,
                ),
                if ((categories?.isNotEmpty ?? false) && tabIndex == 0)
                  SliverAppBar(
                    primary: false,
                    backgroundColor: ColorName.blueishLight,
                    automaticallyImplyLeading: false,
                    scrolledUnderElevation: 0,
                    elevation: 0,
                    titleSpacing: 0,
                    surfaceTintColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    pinned: true,
                    title: CategoriesChipHorizontalListView(
                      categories: categories,
                      selectedCategory: state.currentCategory,
                      onTap: (category) {
                        if (category == null) return;
                        _bloc.add(
                          UserBusinessProfileEvent.getProductsByCtg(
                            widget.id,
                            category,
                          ),
                        );
                      },
                    ),
                  ),
              ];
            },
            body:
                BlocBuilder<UserBusinessProfileBloc, UserBusinessProfileState>(
              buildWhen: (pr, cr) => pr.productsStatus != cr.productsStatus,
              builder: (context, state) {
                if (state.productsStatus.isLoading) {
                  return LoadingIndicator.circle();
                }

                if (state.productsStatus.isFailure) {
                  return TryAgainWidget(
                    onTryAgain: () async {},
                  );
                }
                final ctg = state.currentCategory;
                final houseProducts = state.houseProducts;
                final products = state.products;
                return TabBarView(
                  controller: _tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _buildByTypeProducts(
                      currentCategory: ctg,
                      houseProducts: houseProducts,
                      products: products,
                    ),
                    Container(
                      color: Colors.teal,
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildByTypeProducts({
    ProductCategory? currentCategory,
    List<HouseProduct>? houseProducts,
    List<ProductData>? products,
  }) {
    if (currentCategory?.typeProd == ProductCategoryType.house) {
      return ColoredBox(
        color: ColorName.blueishLight,
        child: GridView.builder(
          primary: false,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0).w,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 167 / 223,
            crossAxisCount: 2,
          ),
          itemCount: houseProducts?.length ?? 0,
          itemBuilder: (context, index) {
            final house = houseProducts?[index];
            final images = house?.images?.map((m) => m.url).toList() ?? [];

            // Null barlagy bilen
            if (house == null || house.id == null) {
              return const SizedBox.shrink();
            }

            return ContentCardWidget(
              id: house.id!,
              description: house.description,
              title: house.name ?? '',
              imgUrls: images,
              price: house.price,
              onDeleted: () {
                context.read<ContentBloc>().add(const ContentEvent.init());
              },
            );
          },
        ),
      );
    }

    return ColoredBox(
      color: ColorName.blueishLight,
      child: GridView.builder(
        primary: false,
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0).w,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 167 / 223,
          crossAxisCount: 2,
        ),
        itemCount: products?.length ?? 0,
        itemBuilder: (context, index) {
          final item = products?[index];
          final images = item?.images?.map((m) => m.path).toList() ?? [];

          // Null barlagy bilen
          if (item == null) {
            return const SizedBox.shrink();
          }

          return ContentCardWidget(
            id: item.id ?? 0,
            description: item.description,
            title: item.name ?? '',
            imgUrls: images,
            price: item.price?.toString() ?? '',
            onDeleted: () {
              context.read<ContentBloc>().add(const ContentEvent.init());
            },
          );
        },
      ),
    );
  }

  SliverPersistentHeaderDelegate buildHeader(BusinessProfileData? detail) {
    if (detail?.coverMedia != null) {
      return CollapsibleLogoHeader(
        logoUrl: detail?.logo,
        viewCount: detail?.views,
        time: DateTime.now(),
        subTitle: detail?.description,
        title: detail?.brand,
      );
    }

    if (detail?.image != null) {
      return CollapsibleImageHeader(
        bgUrl: detail?.image,
        logoUrl: detail?.logo,
        viewCount: detail?.views,
        time: DateTime.now(),
        subTitle: detail?.description,
        title: detail?.brand,
      );
    }

    return CollapsibleLogoHeader(
      logoUrl: detail?.logo,
      viewCount: detail?.views,
      time: DateTime.now(),
      subTitle: detail?.description,
      title: detail?.brand,
    );
  }
}
