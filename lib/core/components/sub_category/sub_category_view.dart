import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../features/business_porfile/cubit/business_profile_cubit.dart';
import '../../../features/search/search_view.dart';
import '../../../localization/extensions.dart';
import '../../../product/base/base_status/base_status.dart';
import '../../../product/constants/constants.dart';
import '../../../remote/entities/business_profile/business_profile_category_entity.dart';
import '../../../utils/extensions.dart';
import '../app_text.dart';
import '../buisnes_profile_card.dart';
import '../categories_card.dart';
import '../loading_indicator.dart';
import '../search_field_business.dart';
import '../try_again_widget.dart';

class BusinessProfileViewSubcategory extends StatefulWidget {
  const BusinessProfileViewSubcategory({
    super.key,
    this.subcategories = const [],
    this.categoryName = '',
    required this.categoryId,
  });

  final List<BusinessProfileCategoryEntity> subcategories;
  final String categoryName;
  final int categoryId;

  static const routePath = '/business-profile-view';
  static const routeName = 'business-profile-view';

  @override
  State<BusinessProfileViewSubcategory> createState() =>
      _BusinessProfileViewState();
}

class _BusinessProfileViewState extends State<BusinessProfileViewSubcategory>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();

  Future<void> init() async {
    BaseLogger.warning('BusinessProfileView init');
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<BusinessProfileCubit>().init();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: BlocBuilder<BusinessProfileCubit, BusinessProfileState>(
        builder: (context, state) {
          if (state.status.isLoading) {
            return LoadingIndicator.circle();
          }

          if (state.status.isFailure) {
            return TryAgainWidget(
              onTryAgain: () async {
                await context.read<BusinessProfileCubit>().init();
              },
            );
          }
          final profiles = state.response?.data;
          return CustomScrollView(
            controller: _scrollController,
            slivers: [
              if (widget.subcategories.isNotEmpty)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubCategoriesCard(subcategories: widget.subcategories),
                      ],
                    ),
                  ),
                ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 12),
                  child: AppText.s14w400BdM(
                    context.translation.business_profiles,
                    fontFamily: StringConstants.roboto,
                    color: ColorName.black,
                  ),
                ),
              ),
              SliverList.separated(
                key: const Key('business_profile_card'),
                itemBuilder: (context, index) {
                  final profile = profiles?[index];
                  if (profile == null) return const SizedBox.shrink();
                  return BusinessProfileCard(profile: profile);
                },
                separatorBuilder: (context, index) => 5.boxH,
                itemCount: profiles?.length ?? 0,
              ),
              24.boxH.toSliver,
            ],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
