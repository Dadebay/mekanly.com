import 'package:dio/dio.dart';

import '../../../utils/api_provider.dart';
import '../../header.dart';
import '../../in_memory_token.dart';

class HouseService {
  HouseService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: ApiProvider().baseUrl,
            headers: AppHttpHeaders.commonHeaders,
          ),
        )..interceptors.addAll([
            InterceptorsWrapper(
              onRequest: (options, handler) {
                final token = InMemoryToken.instance.token;
                if (token != null) {
                  options.headers['Authorization'] = 'Bearer $token';
                }
                return handler.next(options);
              },
            ),
            LogInterceptor(),
          ]);

  final Dio _dio;

  Future<void> deleteHouse(int houseId) async {
    try {
      // ignore: inference_failure_on_function_invocation
      final response = await _dio.delete(
        '/api/v2/houses/$houseId/delete',
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to delete house');
      }
    } on DioException catch (e) {
      throw Exception('Delete failed: ${e.message}');
    }
  }

  Future<void> moveHouse(int houseId) async {
    try {
      // ignore: inference_failure_on_function_invocation
      final response = await _dio.post(
        '/api/v2/houses/$houseId/move',
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      if (response.statusCode != 200) {
        // ignore: avoid_dynamic_calls
        final message = response.data['message']?.toString() ?? '';
        throw Exception(message);
      }
    } on DioException catch (e) {
      throw Exception('Move failed: ${e.message}');
    }
  }

  Future<void> discountHouse(int houseId, int loverPrice) async {
    try {
      // ignore: inference_failure_on_function_invocation
      final response = await _dio.post(
        '/api/v2/houses/$houseId/update',
        data: {'lover_price': loverPrice},
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      print('xxx $response');
      if (response.statusCode != 200) {
        // ignore: avoid_dynamic_calls
        final message = response.data['message']?.toString() ?? '';
        print(message);
        throw Exception(message);
      }
    } on DioException catch (e) {
      throw Exception('Discount failed: ${e.message}');
    }
  }

  Future<void> updateHouse({
    required int houseId,
    String? name,
    String? description,
    String? bronNumber,
    double? price,
    double? area,
    bool? writeComment,
    int? floorNumber,
    int? roomNumber,
    bool? exclusive,
    String? hashtag,
    int? levelNumber,
    int? propertyTypeId,
    int? repairTypeId,
    int? locationId,
    int? categoryId,
    List<int>? possibilities,
    String? who,
  }) async {
    try {
      // API'ye gonderilmeli datalary dine null bolmadyklardan ybarat et
      final data = <String, dynamic>{
        if (name != null) 'name': name,
        if (description != null) 'description': description,
        if (bronNumber != null) 'bron_number': bronNumber,
        if (price != null) 'price': price,
        if (area != null) 'area': area,
        if (writeComment != null) 'write_comment': writeComment,
        if (floorNumber != null) 'floor_number': floorNumber,
        if (roomNumber != null) 'room_number': roomNumber,
        if (exclusive != null) 'exclusive': exclusive,
        if (hashtag != null) 'hashtag': hashtag,
        if (levelNumber != null) 'level_number': levelNumber,
        if (propertyTypeId != null) 'property_type_id': propertyTypeId,
        if (repairTypeId != null) 'repair_type_id': repairTypeId,
        if (locationId != null) 'location_id': locationId,
        if (categoryId != null) 'category_id': categoryId,
        if (possibilities != null) 'possibilities': possibilities.join(','),
        if (who != null) 'who': who,
      };

      final response = await _dio.post(
        '/api/v2/houses/$houseId/update',
        data: data,
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      print('xxx $response');

      if (response.statusCode != 200) {
        final message = response.data['message']?.toString() ?? 'Ýalňyşlyk ýüze çykdy.';
        print(message);
        throw Exception(message);
      }
    } on DioException catch (e) {
      throw Exception('Öý maglumatyny täzeläp bolmady: ${e.message}');
    }
  }

  Future<Response> fetchServiceList({
    required int id,
    required String type,
  }) async {
    try {
      final token = InMemoryToken.instance.token;
      // ignore: inference_failure_on_function_invocation
      final response = await _dio.get(
        '/api/v2/service/servicesList',
        queryParameters: {
          'id': id,
          'type': type,
        },
        options: Options(
          headers: {
            ...AppHttpHeaders.commonHeaders,
            if (token != null) AppHttpHeaders.authorizationHeader: 'Bearer $token',
            AppHttpHeaders.acceptLanguageHeader: 'ru',
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      return response;
    } on DioException catch (e) {
      throw Exception('fetchServiceList failed: ${e.message}');
    }
  }

  Future<Response> fetchBankList() async {
    try {
      final token = InMemoryToken.instance.token;
      // ignore: inference_failure_on_function_invocation
      final response = await _dio.get(
        '/api/v2/service/bank-list',
        options: Options(
          headers: {
            ...AppHttpHeaders.commonHeaders,
            if (token != null) 'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      return response;
    } on DioException catch (e) {
      throw Exception('fetchBankList failed: ${e.message}');
    }
  }

  Future<Response> fetchPaymentInfo({
    required String param,
    required String model,
    required String type,
    required String bankId,
  }) async {
    try {
      final token = InMemoryToken.instance.token;

      // ignore: inference_failure_on_function_invocation
      final response = await _dio.get(
        '/api/v2/service/payment',
        queryParameters: {
          'item_id': param,
          'model': model,
          'type': type,
          'bank_id': bankId,
        },
        options: Options(
          headers: {
            ...AppHttpHeaders.commonHeaders,
            if (token != null) 'Authorization': 'Bearer $token',
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          },
          validateStatus: (status) => status != null && status < 500,
        ),
      );

      return response;
    } on DioException catch (e) {
      throw Exception('fetchPaymentInfo failed: ${e.message}');
    }
  }

  Future<Response> makeVip(int houseId) async {
    try {
      final response = await _dio.get(
        '/api/v2/service/house/$houseId/make/vip',
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      return response;
    } on DioException catch (e) {
      throw Exception('makeVip failed: ${e.message}');
    }
  }

  Future<Response> makeLuxe(int houseId) async {
    try {
      final response = await _dio.get(
        '/api/v2/service/house/$houseId/make/luxe',
        options: Options(
          validateStatus: (status) => status != null && status < 500,
        ),
      );
      return response;
    } on DioException catch (e) {
      throw Exception('makeLuxe failed: ${e.message}');
    }
  }
}
