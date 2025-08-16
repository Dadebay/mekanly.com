import 'package:dio/dio.dart';
import 'package:mekanly/utils/api_provider.dart';
import '../../remote/header.dart';
import '../../remote/in_memory_token.dart' show InMemoryToken;
import '../api_end_points.dart';
import 'model.dart';

class AbuseService {
  final Dio _dio;

  AbuseService()
      : _dio = Dio(
          BaseOptions(
            baseUrl: ApiProvider().baseUrl,
            headers: AppHttpHeaders.commonHeaders,
          ),
        )..interceptors.addAll([
            InterceptorsWrapper(
              onRequest: (options, handler) {
                if (InMemoryToken.instance.token != null) {
                  options.headers['Authorization'] =
                      'Bearer ${InMemoryToken.instance.token}';
                }
                return handler.next(options);
              },
            ),
            LogInterceptor(
              request: true,
              requestHeader: true,
              responseHeader: true,
            ),
          ]);

  Future<List<AbuseReason>> getReasons() async {
    try {
      final response = await _dio.get(
        '/api/v2/abuse/list',
      );

      if (response.statusCode == 200) {
        final data = response.data['data'] as List<dynamic>;
        return data
            .map((json) => AbuseReason.fromJson(json as Map<String, dynamic>))
            .toList();
      }
      throw Exception('Failed to load reasons: ${response.statusCode}');
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.message}');
    }
  }

  Future<void> sendReason({
    required int abuseListId,
    required int itemId,
    required String message,
    required String type,
  }) async {
    try {
      final response = await _dio.post(
        '/api/v2/user/abuse/message',
        queryParameters: {
          'abuse_list_id': abuseListId,
          'item_id': itemId,
          'message': message,
          'type': type,
        },
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to send report: ${response.data}');
      }
    } on DioException catch (e) {
      throw Exception('''
Dio error: ${e.message}
URL: ${e.requestOptions.uri}
Response: ${e.response?.data}
      ''');
    }
  }
}
