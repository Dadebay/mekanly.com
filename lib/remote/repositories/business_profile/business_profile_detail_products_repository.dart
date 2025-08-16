import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mekanly/utils/api_provider.dart';

import '../../../features/business_porfile_detail/models/business_product_model.dart';
import '../../../features/business_porfile_detail/models/business_profile_detail_products_response.dart';
import '../../../features/business_porfile_detail/models/business_profile_house_products_response.dart';
import '../../../utils/api_end_points.dart';
import '../../http_client/dio_http_client.dart';
import '../../in_memory_token.dart';
import '../../response_error.dart';

@injectable
class BusinessProfileDetailProductsRepository {
  BusinessProfileDetailProductsRepository({required DioHttpClient client})
      : _client = client;

  final DioHttpClient _client;

  /// Ortak header yapıcı
  Options _buildAuthHeaders() {
    final token = InMemoryToken.instance.token;

    if (token == null || token.isEmpty) {
      throw Exception('No authentication token found');
    }

    return Options(
      headers: {
        'Authorization': 'Bearer $token',
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );
  }

  /// [ Business Profile House Products ]
  Future<Either<ResponseError<dynamic>, BusinessProfileHouseProductsResponse>>
      getHouseProducts({
    required int categoryId,
    required int shopId,
  }) async {
    return _client
        .get(
      ApiEndpoints.businessProfileHouses(
        categoryId: categoryId,
        shopId: shopId,
      ),
      options: _buildAuthHeaders(),
    )
        .then((res) {
      print('📥 getHouseProducts Response: ${res?.statusCode} => ${res?.data}');
      return _onResDetail(res);
    }).catchError(_onErrorDetail);
  }

  Either<ResponseError<dynamic>, BusinessProfileHouseProductsResponse>
      _onResDetail(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = BusinessProfileHouseProductsResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, BusinessProfileHouseProductsResponse>
      _onErrorDetail(
    dynamic err,
  ) {
    print('❌ getHouseProducts Error: $err');
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }

  /// [ Business Profile Products ]
  Future<Either<ResponseError<dynamic>, BusinessProfileDetailProductsResponse>>
      getProducts({
    required int shopId,
    required int categoryId,
  }) async {
    return _client
        .get(
      ApiEndpoints.businessProfileProducts(
        categoryId: categoryId,
        shopId: shopId,
      ),
      options: _buildAuthHeaders(),
    )
        .then((res) {
      print('📥 getProducts Response: ${res?.statusCode} => ${res?.data}');
      return _onResProducts(res);
    }).catchError(_onErrorProducts);
  }

  Either<ResponseError<dynamic>, BusinessProfileDetailProductsResponse>
      _onResProducts(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = BusinessProfileDetailProductsResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, BusinessProfileDetailProductsResponse>
      _onErrorProducts(
    dynamic err,
  ) {
    print('❌ getProducts Error: $err');
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }

  Future<Either<Exception, BusinessProductModel>> getProductsAll({
    required int shopId,
    required int offset,
    required int limit,
  }) async {
    print('DEBUG: Repository - getProductsAll called with shopId: $shopId');
    if (shopId == 0) {
      return Right(
          BusinessProductModel(data: [])); // Return empty data if shopId is 0
    }
    try {
      final response = await _client.get(
        '${ApiProvider().baseUrl}/api/v2/business/profile/$shopId/products/$offset/$limit',
        options: _buildAuthHeaders(),
      );

      print(
        '📥 getProductsAll Response: ${response?.statusCode} => ${response?.data}',
      );

      if (response != null && response.statusCode == 200) {
        final model = BusinessProductModel.fromJson(
          response.data as Map<String, dynamic>,
        );
        return Right(model);
      } else {
        return Left(
          Exception('Failed: status code ${response?.statusCode}'),
        );
      }
    } catch (e) {
      print('❌ getProductsAll Error: $e');
      return Left(Exception('Error fetching products: $e'));
    }
  }
}
