import 'package:dio/dio.dart';
import 'package:common/common.dart';

import '../../../utils/api_end_points.dart';
import '../../header.dart';
import '../../in_memory_token.dart';

class HouseRepository {
  final Dio _dio;

  HouseRepository(this._dio);

  Future<void> contactHouseOwner({
    required int houseId,
    required String message,
  }) async {
    try {
      final response = await _dio.post(
        '${ApiEndpoints.baseUrl}/v2/houses/$houseId/contact',
        data: {
          'message': message,
        },
        options: Options(
          headers: {
            ...AppHttpHeaders.commonHeaders,
            if (InMemoryToken.instance.token != null)
              AppHttpHeaders.authorizationHeader:
                  'Bearer ${InMemoryToken.instance.token}',
          },
        ),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to contact house owner');
      }

      return response.data;
    } on DioException catch (e) {
      BaseLogger.error('Error contacting house owner: ${e.message}');
      rethrow;
    }
  }

  // Future<void> deleteHouse(int houseId) async {
  //   final token = InMemoryToken.instance.token;
  //   if (token == null) throw Exception("Token not found");

  //   final response = await _dio.delete(
  //     '/v2/houses/houses/$houseId/delete',
  //     options: Options(
  //       headers: {
  //         'Authorization': 'Bearer $token',
  //         'Accept': 'application/json',
  //         'Content-Type': 'application/json',
  //       },
  //     ),
  //   );

  //   if (response.statusCode != 200) {
  //     throw Exception("Failed to delete house");
  //   }
  // }
}
