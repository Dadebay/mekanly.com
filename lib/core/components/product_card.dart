import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import '../../product/constants/app_colors.dart';
import '../../product/constants/app_dimensions.dart';
import '../../remote/repositories/business_profile/product_model.dart';
import '../../utils/api_provider.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.toggleFavoriteItem,
  });

  final Product product;
  final Future<void> Function() toggleFavoriteItem;

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    final pageNotifier = ValueNotifier<int>(0);

    return Stack(
      children: [
        Container(
          width: AppDimensions.productCardWidth,
          height: AppDimensions.productCardHeight,
          decoration: BoxDecoration(
            color: AppColors.productCardBackground,
            borderRadius:
                BorderRadius.circular(AppDimensions.productCardBorderRadius),
            boxShadow: [
              BoxShadow(
                color: AppColors.productCardShadow,
                blurRadius: AppDimensions.productCardShadowBlurRadius,
                offset: Offset(0, AppDimensions.productCardShadowOffsetY),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                          AppDimensions.productCardImageBorderRadius)),
                  child: product.images.isNotEmpty
                      ? Stack(
                          children: [
                            PageView.builder(
                              controller: pageController,
                              itemCount: product.images.length,
                              onPageChanged: (index) =>
                                  pageNotifier.value = index,
                              itemBuilder: (context, index) {
                                final imgUrl = product.images[index].original;
                                return Image.network(
                                  ApiProvider().baseUrl + imgUrl,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  errorBuilder: (_, __, ___) => Center(
                                    child: Assets.icons.imageyok.svg(
                                      package: 'gen',
                                    ),
                                  ),
                                );
                              },
                            ),
                            if (product.images.length > 1)
                              Positioned(
                                bottom: AppDimensions.spacingMedium,
                                left: 0,
                                right: 0,
                                child: ValueListenableBuilder<int>(
                                  valueListenable: pageNotifier,
                                  builder: (_, page, __) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: List.generate(
                                        product.images.length,
                                        (index) => AnimatedContainer(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          width: page == index
                                              ? AppDimensions
                                                  .productCardDotActiveSize
                                              : AppDimensions
                                                  .productCardDotInactiveSize,
                                          height: page == index
                                              ? AppDimensions
                                                  .productCardDotActiveSize
                                              : AppDimensions
                                                  .productCardDotInactiveSize,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: AppDimensions
                                                  .productCardDotMarginHorizontal),
                                          decoration: BoxDecoration(
                                            color: page == index
                                                ? AppColors.dotActive
                                                : AppColors.dotInactive,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                          ],
                        )
                      : Center(
                          child: Assets.icons.imageyok.svg(
                            package: 'gen',
                          ),
                        ),
                ),
              ),
              // Product Info
              Padding(
                padding: EdgeInsets.all(AppDimensions.productCardPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: TextStyle(
                        fontSize: AppDimensions.fontSizeLarge,
                        fontWeight: FontWeight.bold,
                        color: AppColors.productTitle,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: AppDimensions.spacingSmall),
                    Text(
                      product.description.isNotEmpty
                          ? product.description
                          : 'Gyssagly satiyk kwartira',
                      style: TextStyle(
                        fontSize: AppDimensions.fontSizeMedium,
                        color: AppColors.productDescription,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: AppDimensions.spacingMedium),
                    Text(
                      '${product.price ?? 0} TMT',
                      style: TextStyle(
                        fontSize: AppDimensions.fontSizeMedium,
                        fontWeight: FontWeight.w500,
                        color: AppColors.productTitle,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: AppDimensions.productCardFavoriteIconPadding,
          right: AppDimensions.productCardFavoriteIconPadding,
          child: GestureDetector(
            onTap: toggleFavoriteItem,
            child: Container(
              child: product.favorited
                  ? Assets.icons.saylanan.svg(
                      package: 'gen',
                    )
                  : Assets.icons.icFavoriteDarkFill.svg(
                      package: 'gen',
                    ),
            ),
          ),
        ),
        // ignore: use_if_null_to_convert_nulls_to_bools
        if (product.vip == true || product.exclusive == 1)
          Positioned(
            top: AppDimensions.productCardFavoriteIconPadding,
            left: AppDimensions.productCardFavoriteIconPadding,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Assets.icons.vip.svg(
                  package: 'gen',
                  width: AppDimensions.productCardVipIconWidth,
                  height: AppDimensions.productCardVipIconHeight,
                ),
                Text(
                  // ignore: use_if_null_to_convert_nulls_to_bools
                  product.vip == true ? 'VIP' : 'exclusive',
                  style: TextStyle(
                    color: AppColors.vipExclusive,
                    fontSize: AppDimensions.fontSizeSmall,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
