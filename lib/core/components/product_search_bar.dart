import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import '../../product/constants/app_colors.dart';
import '../../product/constants/app_dimensions.dart';

import 'search_field_business.dart';

class ProductSearchBar extends StatelessWidget {
  const ProductSearchBar({
    super.key,
    required this.onSearchTap,
  });

  final VoidCallback onSearchTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorName.main,
        boxShadow: [
          BoxShadow(
            color: AppColors.searchBarShadow,
            offset: Offset(0, AppDimensions.searchBarShadowOffsetY),
            spreadRadius: AppDimensions.searchBarShadowSpreadRadius,
            blurRadius: AppDimensions.searchBarShadowBlurRadius,
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.searchBarPaddingVertical,
        horizontal: AppDimensions.searchBarPaddingHorizontal,
      ),
      child: Row(
        children: [
          Expanded(
            child: SearchFieldBusiness(
              onSearchTap: onSearchTap,
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            child: Assets.icons.icFilter.svg(
              package: 'gen',
              width: AppDimensions.searchBarFilterIconSize,
              height: AppDimensions.searchBarFilterIconSize,
            ),
          ),
        ],
      ),
    );
  }
}
