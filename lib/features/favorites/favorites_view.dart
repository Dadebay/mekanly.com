import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../core/components/app_text.dart';
import '../../core/components/loading_indicator.dart';
import '../../localization/extensions.dart';
import '../../product/constants/constants.dart';
import '../../remote/repositories/favorite/favorite_repository.dart';
import '../../utils/extensions.dart';
import 'widgets/fav_card.dart';

class FavoritesView extends StatefulWidget {
  const FavoritesView({super.key});

  static const routePath = '/favorites-view';
  static const routeName = 'favorites-view';

  @override
  State<FavoritesView> createState() => _FavoritesViewState();
}

class _FavoritesViewState extends State<FavoritesView> {
  bool isSelected = true;
  List<dynamic> favorites = [];
  bool isLoading = false;
  String? errorMessage;
  int totalFavorites = 0;

  final FavoriteService favoriteService = FavoriteService();

  @override
  void initState() {
    super.initState();
    fetchFavorites();
  }

  Future<void> fetchFavorites() async {
    setState(() {
      isLoading = true;
      errorMessage = null;
    });

    try {
      final type = isSelected ? 'House' : 'ShopProduct';
      const limit = 10;
      const offset = 0;

      final response = await favoriteService.getFavorites(
        type: type,
        limit: limit,
        offset: offset,
      );

      setState(() {
        favorites = response['data'] as List<dynamic>;
        totalFavorites = int.tryParse(response['total'].toString()) ?? 0;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 16, right: 16).w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildToggleButton(
                  label: context.translation.searchMain,
                  selected: isSelected,
                  onTap: () {
                    setState(() {
                      isSelected = true;
                    });
                    fetchFavorites();
                  },
                ),
                _buildToggleButton(
                  label: context.translation.business_accounts,
                  selected: !isSelected,
                  onTap: () {
                    setState(() {
                      isSelected = false;
                    });
                    fetchFavorites();
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: isLoading
                ? LoadingIndicator.circle()
                : errorMessage != null
                    ? _buildEmptyState()
                    : favorites.isEmpty
                        ? _buildEmptyState()
                        : ListView.builder(
                            padding: EdgeInsets.only(top: 4.h),
                            itemCount: favorites.length,
                            itemBuilder: (context, index) {
                              final fav = favorites[index];

                              return Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.w,
                                  vertical: 4.h,
                                ),
                                child: FavoriteCard(
                                  id: fav['id'] as int?,
                                  name: fav['name']?.toString(),
                                  description: fav['description']?.toString(),
                                  price: (fav['price'] != null)
                                      ? double.tryParse(fav['price'].toString())
                                      : null,
                                  // ignore: lines_longer_than_80_chars
                                  imageUrl: (fav['images'] != null &&
                                          (fav['images'] as List).isNotEmpty)
                                      // ignore: lines_longer_than_80_chars, avoid_dynamic_calls
                                      ? (fav['images'][0] as Map<String,
                                          dynamic>)['original'] as String?
                                      : null,
                                  locationName:
                                      // ignore: avoid_dynamic_calls
                                      fav['location']?['name']?.toString(),
                                  // ignore: avoid_dynamic_calls
                                  locationParent: fav['location']
                                          ?['parent_name']
                                      ?.toString(),
                                  categoryName:
                                      // ignore: avoid_dynamic_calls
                                      fav['category_name']?.toString(),
                                  // ignore: avoid_dynamic_calls
                                  roomNumber: fav['room_number']?.toString(),
                                  // ignore: avoid_dynamic_calls
                                  floorNumber: fav['floor_number']?.toString(),
                                  propertyType:
                                      // ignore: avoid_dynamic_calls
                                      fav['property_type']?['name']?.toString(),
                                  repairType:
                                      // ignore: avoid_dynamic_calls
                                      fav['repair_type']?['name']?.toString(),
                                  viewed: fav['viewed']?.toString(),
                                  commentCount:
                                      // ignore: avoid_dynamic_calls
                                      fav['comment_count']?.toString(),
                                  // ignore: avoid_dynamic_calls
                                  isLuxe: fav['luxe'] as bool? ?? false,
                                  isVip: fav['vip_status'] as bool? ?? false,
                                  bronNumber: fav['bron_number']?.toString(),
                                  username: fav['username']?.toString(),
                                  userPhone: fav['user_phone']?.toString(),
                                  images: fav['images'] as List<dynamic>?,
                                  type: fav['type']?.toString(),
                                  favorited: fav['favorited'] as bool? ?? false,
                                ),
                              );
                            },
                          ),
          ),
        ],
      ),
    );
  }

  Widget _buildToggleButton({
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: 0.4.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8).r,
          border: Border.all(
            width: 1.sp,
            color: selected ? const Color(0xFFE5F6FE) : const Color(0xFFEEEEEE),
          ),
          color: selected ? const Color(0xFFE5F6FE) : null,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6).h,
          child: AppText.s14w400BdM(
            label,
            fontWeight: selected ? FontWeight.w500 : FontWeight.w400,
            fontSize: 12.sp,
            fontFamily: StringConstants.roboto,
            color: selected ? const Color(0xFF3A8BCF) : const Color(0xFF6A6A6A),
          ),
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.favview.svg(package: 'gen'),
          6.boxH,
          AppText.s14w400BdM(
            context.translation.no_announcements_in_my_favorites_section,
            fontFamily: StringConstants.roboto,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF6A6A6A),
          ),
        ],
      ),
    );
  }
}
