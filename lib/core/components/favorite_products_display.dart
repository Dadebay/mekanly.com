// ignore_for_file: avoid_dynamic_calls
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import '../../../features/favorites/widgets/fav_card.dart';
import '../../../localization/extensions.dart';
import '../../features/house_detail/recoman/recomendation_biznes.dart';
import '../../product/constants/app_colors.dart';
import '../../product/constants/app_dimensions.dart';
import '../../product/constants/constants.dart';
import 'app_text.dart';
import 'loading_indicator.dart';

class FavoriteProductsDisplay extends StatelessWidget {
  const FavoriteProductsDisplay({
    super.key,
    required this.isFavoritesLoading,
    required this.favoritesErrorMessage,
    required this.favoriteProducts,
  });

  final bool isFavoritesLoading;
  final String? favoritesErrorMessage;
  final List<dynamic> favoriteProducts;

  @override
  Widget build(BuildContext context) {
    if (isFavoritesLoading) {
      return SliverToBoxAdapter(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height *
              AppDimensions.favoriteDisplayHeightMultiplier,
          child: LoadingIndicator.circle(),
        ),
      );
    } else if (favoritesErrorMessage != null) {
      return SliverToBoxAdapter(
        child: SizedBox(
          height: MediaQuery.of(context).size.height *
              AppDimensions.favoriteDisplayHeightMultiplier,
          child: Center(
            child: Text(favoritesErrorMessage!),
          ),
        ),
      );
    } else if (favoriteProducts.isEmpty) {
      return SliverToBoxAdapter(
        child: Container(
          height: MediaQuery.of(context).size.height *
              AppDimensions.favoriteDisplayHeightMultiplier,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.icons.favview.svg(package: 'gen'),
              AppDimensions.spacingMedium.boxH,
              AppText.s14w400BdM(
                context.translation.no_announcements_in_my_favorites_section,
                fontFamily: StringConstants.roboto,
                fontSize: AppDimensions.fontSizeExtraLarge,
                fontWeight: FontWeight.w400,
                color: AppColors.greyText,
              ),
            ],
          ),
        ),
      );
    } else {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final fav = favoriteProducts[index];

            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppDimensions.spacingSmall,
                vertical: AppDimensions.spacingSmall,
              ),
              child: FavoriteCard(
                id: fav['id'] as int?,
                name: fav['name']?.toString(),
                description: fav['description']?.toString(),
                price: (fav['price'] != null)
                    ? double.tryParse(fav['price'].toString())
                    : null,
                imageUrl: (fav['images'] != null &&
                        (fav['images'] as List).isNotEmpty)
                    ? (fav['images'][0] as Map<String, dynamic>)['original']
                        as String?
                    : null,
                locationName: fav['location']?['name']?.toString(),
                locationParent: fav['location']?['parent_name']?.toString(),
                categoryName: fav['category_name']?.toString(),
                roomNumber: fav['room_number']?.toString(),
                floorNumber: fav['floor_number']?.toString(),
                propertyType: fav['property_type']?['name']?.toString(),
                repairType: fav['repair_type']?['name']?.toString(),
                viewed: fav['viewed']?.toString(),
                commentCount: fav['comment_count']?.toString(),
                isLuxe: fav['luxe'] as bool? ?? false,
                isVip: fav['vip_status'] as bool? ?? false,
                bronNumber: fav['bron_number']?.toString(),
                username: fav['username']?.toString(),
                userPhone: fav['user_phone']?.toString(),
              ),
            );
          },
          childCount: favoriteProducts.length,
        ),
      );
    }
  }
}
