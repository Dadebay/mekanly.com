import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../remote/repositories/business_profile/business_profile_detail_products_repository.dart';
import '../../models/business_product_model.dart';

abstract class BusinessProductDetailState {}

class BusinessProductInitial extends BusinessProductDetailState {}

class BusinessProductLoading extends BusinessProductDetailState {}

class BusinessProductLoaded extends BusinessProductDetailState {
  BusinessProductLoaded(this.products, {this.hasMore = true});

  final List<ProductBusinessProfile> products;
  final bool hasMore;
}

class ProductError extends BusinessProductDetailState {
  ProductError(this.message);

  final String message;
}

@injectable
class BusinessProfileProductCubit extends Cubit<BusinessProductDetailState> {
  BusinessProfileProductCubit(this._repository)
      : super(BusinessProductInitial());

  final BusinessProfileDetailProductsRepository _repository;

  final List<ProductBusinessProfile> _allProducts = [];
  int _offset = 0;
  final int _limit = 10;
  bool _isFetching = false;

  int? _currentShopId; // Add this line

  Future<void> fetchProducts({bool reset = false, required int shopId}) async {
    if (_isFetching) return;

    // If shopId changes, force a reset
    if (_currentShopId != shopId) {
      reset = true;
      _currentShopId = shopId;
    }

    _isFetching = true;

    if (reset) {
      _offset = 0;
      _allProducts.clear();
      emit(BusinessProductLoading());
    }

    try {
      final result = await _repository.getProductsAll(
        shopId: shopId,
        offset: _offset,
        limit: _limit,
      );

      result.fold(
        (error) {
          log('❌ Cubit ERROR: $error');
          emit(ProductError('Ürünler ýüklenmedi: ${error}'));
        },
        (response) {
          print(
              'DEBUG: Cubit - Raw response.data for VIP/Lux check: ${response.data}');

          final products = response.data ?? [];

          _allProducts.addAll(products);
          _offset += _limit;

          emit(BusinessProductLoaded(
            List<ProductBusinessProfile>.from(_allProducts),
            hasMore: products.length == _limit,
          ));
        },
      );
    } catch (e) {
      log('Cubit EXCEPTION: $e');
      emit(ProductError('Ürünler ýüklenmedi: $e'));
    } finally {
      _isFetching = false;
    }
  }

  void updateProductFavoriteStatus(int productId, bool isFavorite) {
    if (state is BusinessProductLoaded) {
      final currentProducts = (state as BusinessProductLoaded).products;
      final updatedProducts = currentProducts.map((product) {
        if (product.id == productId) {
          return ProductBusinessProfile(
            id: product.id,
            name: product.name,
            commentCount: product.commentCount,
            price: product.price,
            status: product.status,
            favorited: isFavorite, // Update favorited status
            expire: product.expire,
            phone: product.phone,
            who: product.who,
            delivery: product.delivery,
            comment: product.comment,
            description: product.description,
            loverPercentage: product.loverPercentage,
            loverPrice: product.loverPrice,
            vip: product.vip,
            exclusive: product.exclusive,
            hashtag: product.hashtag,
            images: product.images,
            createdAt: product.createdAt,
            user: product.user,
            userId: product.userId,
            userName: product.userName,
            userPhone: product.userPhone,
            locationId: product.locationId,
            locationName: product.locationName,
            locationParent: product.locationParent,
            categoryId: product.categoryId,
            categoryTitle: product.categoryTitle,
            categoryParent: product.categoryParent,
            shop: product.shop,
            shopId: product.shopId,
            shopBrand: product.shopBrand,
            shopLogo: product.shopLogo,
            type: product.type,
            reason: product.reason,
          );
        }
        return product;
      }).toList();

      emit(BusinessProductLoaded(
        updatedProducts,
        hasMore: (state as BusinessProductLoaded).hasMore,
      ));
    }
  }
}
