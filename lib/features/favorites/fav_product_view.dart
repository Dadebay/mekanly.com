import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/app_colors.dart';
import '../../../remote/repositories/favorite/favorite_repository.dart';
import '../../core/components/favorite_products_display.dart';
import '../../product/constants/constants.dart';

class FavProductView extends StatefulWidget {
  const FavProductView({super.key, this.categoryId});

  final int? categoryId;

  @override
  State<FavProductView> createState() => _FavProductViewState();
}

class _FavProductViewState extends State<FavProductView> {
  final FavoriteService favoriteService = FavoriteService();

  bool _isFavoritesLoading = false;
  String? _favoritesErrorMessage;
  List<dynamic> _favoriteProducts = [];

  @override
  void initState() {
    super.initState();
    _fetchFavoriteProducts();
  }

  Future<void> _fetchFavoriteProducts() async {
    setState(() {
      _isFavoritesLoading = true;
      _favoritesErrorMessage = null;
    });

    try {
      final response = await favoriteService.getFavorites(
        type: 'ShopProduct',
        limit: 10,
        offset: 0,
        categoryId: widget.categoryId,
      );

      setState(() {
        _favoriteProducts = response['data'] as List<dynamic>;
        _isFavoritesLoading = false;
      });
    } catch (e) {
      setState(() {
        _favoritesErrorMessage = e.toString();
        _isFavoritesLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackground,
      appBar: AppBar(
        backgroundColor: ColorName.main,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.appBarContent,
          ),
        ),
        title: Text(
          context.translation.favorites,
          style: const TextStyle(
            color: AppColors.appBarContent,
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontFamily: StringConstants.roboto,
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          FavoriteProductsDisplay(
            isFavoritesLoading: _isFavoritesLoading,
            favoritesErrorMessage: _favoritesErrorMessage,
            favoriteProducts: _favoriteProducts,
          ),
        ],
      ),
    );
  }
}
