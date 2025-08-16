import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'product_model.dart';
import 'product_service.dart';

abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  ProductLoaded(this.products, {this.hasMore = true});
  final List<Product> products;
  final bool hasMore;
}

class ProductError extends ProductState {
  ProductError(this.message);
  final String message;
}

@injectable
class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this._service) : super(ProductInitial());

  final ProductService _service;
  final List<Product> _allProducts = [];
  int _offset = 0;
  final int _limit = 10;
  bool _isFetching = false;

  Future<void> fetchProducts(int categoryId, {bool reset = false}) async {
    print(
        'ProductCubit: fetchProducts called for categoryId: $categoryId, reset: $reset');
    if (_isFetching) return;
    _isFetching = true;

    if (reset) {
      _offset = 0;
      _allProducts.clear();
      emit(ProductLoading());
    }

    try {
      final response = await _service.fetchProductsByCategory(
        categoryId,
        offset: _offset,
        limit: _limit,
      );

      final products = response.data;
      _allProducts.addAll(products);
      _offset += _limit;

      emit(ProductLoaded(
        List<Product>.from(_allProducts),
        hasMore: products.length == _limit,
      ));
      print(
          'ProductCubit: Products loaded successfully. Count: ${_allProducts.length}');
    } catch (e) {
      print('ProductCubit: Error loading products: $e');
      emit(ProductError('Ürünler yüklenemedi: $e'));
    } finally {
      _isFetching = false;
      print('ProductCubit: _isFetching set to false');
    }
  }

  // ignore: avoid_positional_boolean_parameters
  void updateProductFavoriteStatus(int productId, bool isFavorite) {
    if (state is ProductLoaded) {
      final currentProducts = (state as ProductLoaded).products;
      final updatedProducts = currentProducts.map((product) {
        if (product.id == productId) {
          return product.copyWith(favorited: isFavorite);
        }
        return product;
      }).toList();
      emit(ProductLoaded(
        updatedProducts,
        hasMore: (state as ProductLoaded).hasMore,
      ));
    }
  }
}
