import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart'; // Added import
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../product/constants/constants.dart';
import '../../remote/entities/business_profile/business_profile_category_entity.dart';
import '../../remote/repositories/business_profile/product_cubit.dart';
import '../../utils/extensions.dart';
import '../../utils/api_provider.dart';
import 'app_text.dart';
import 'sub_category/product_view.dart';
import 'sub_category/sub_category_view.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({super.key, this.categories});

  final List<BusinessProfileCategoryEntity>? categories;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 7.w,
        crossAxisSpacing: 6.w,
        childAspectRatio: 107.w / 90.w,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12).w,
      children: categories?.map((c) {
            return _CategoryCard(
              title: c.title ?? '',
              count: '${c.businessProfiles ?? 0}',
              icon: c.buildIcon,
              category: c,
            );
          }).toList() ??
          [],
    );
  }
}

class SubCategoriesCard extends StatelessWidget {
  const SubCategoriesCard({super.key, required this.subcategories});

  final List<BusinessProfileCategoryEntity> subcategories;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 7.w,
        crossAxisSpacing: 6.w,
        childAspectRatio: 107.w / 120.w,
      ),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12).w,
      children: subcategories.map((sub) {
        return _SubCategoryCard(
          id: sub.id,
          title: sub.title ?? '',
          count: '${sub.businessProfiles ?? 0}',
          imageUrl: sub.image ?? '',
        );
      }).toList(),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    required this.title,
    required this.count,
    required this.icon,
    required this.category,
  });
  final String title;
  final String count;
  final Widget icon;
  final BusinessProfileCategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (category.subcategories != null &&
            category.subcategories!.isNotEmpty) {
          Navigator.push(
            context,
            // ignore: inference_failure_on_instance_creation
            MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(
                  backgroundColor: ColorName.main,
                  leading: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Color.fromARGB(255, 248, 248, 248),
                    ),
                  ),
                  title: Text(
                    title,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 248, 248, 248),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: StringConstants.roboto,
                    ),
                  ),
                ),
                body: BusinessProfileViewSubcategory(
                  subcategories: category.subcategories!,
                  categoryId: category.id,
                ),
              ),
            ),
          );
        }
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ColorName.lightGrayish,
          borderRadius: BorderRadius.circular(10).r,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 8).w,
              child: AppText.s10w400LbS(title, color: ColorName.grayMediumDark),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                6.boxW,
                Container(
                  margin: const EdgeInsets.only(bottom: 6).w,
                  alignment: Alignment.bottomCenter,
                  padding: count.length < 2
                      ? const EdgeInsets.all(6).w
                      : const EdgeInsets.all(4).w,
                  decoration: const BoxDecoration(
                    color: ColorName.superLightGray,
                    shape: BoxShape.circle,
                  ),
                  child: AppText.s10w400LbS(count),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: icon,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SubCategoryCard extends StatelessWidget {
  const _SubCategoryCard({
    required this.id,
    required this.title,
    required this.count,
    required this.imageUrl,
  });
  final int id;
  final String title;
  final String count;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          // ignore: inference_failure_on_instance_creation
          MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (_) => GetIt.instance<ProductCubit>(),
              child: ProductListScreen(
                categoryId: id,
                title: title,
              ),
            ),
          ),
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: ColorName.lightGrayish,
          borderRadius: BorderRadius.circular(10).r,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 8).w,
              child: AppText.s10w400LbS(title, color: ColorName.grayMediumDark),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                6.boxW,
                Container(
                  margin: const EdgeInsets.only(bottom: 6).w,
                  alignment: Alignment.bottomCenter,
                  padding: count.length < 2
                      ? const EdgeInsets.all(6).w
                      : const EdgeInsets.all(4).w,
                  decoration: const BoxDecoration(
                    color: ColorName.superLightGray,
                    shape: BoxShape.circle,
                  ),
                  child: AppText.s10w400LbS(count),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8, bottom: 8).w,
                      child: imageUrl.isNotEmpty
                          ? CachedNetworkImage(
                              imageUrl: ApiProvider().baseUrl + imageUrl,
                              width: 55.w,
                              height: 50.w,
                              fit: BoxFit.contain,
                              placeholder: (context, url) =>
                                  const SizedBox.shrink(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.category, size: 24.w),
                            )
                          : Icon(Icons.category, size: 24.w),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
