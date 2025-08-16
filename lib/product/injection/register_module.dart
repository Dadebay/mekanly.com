import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../remote/http_client/dio_http_client.dart';
import '../../remote/http_client/dio_http_client_builder.dart';
import '../../remote/interceptors/http_header_interceptor.dart';
import '../../utils/api_provider.dart';
import '../../utils/constants.dart';

@module
abstract class RegisterModule {
  @preResolve
  @lazySingleton
  Future<DioHttpClient> get dioHttpClient async {
    final apiProvider = ApiProvider();
    await apiProvider.initialize();

    final dioBuilder = DioHttpClientBuilder()
      ..baseUrl = '${apiProvider.baseUrl}/api'
      ..connectTimeout = AppConstants.connectTimeout
      ..sendTimeout = AppConstants.connectTimeout
      ..receiveTimeout = AppConstants.receiveTimeout;

    final dioClient = dioBuilder.build();

    dioClient.dio.interceptors.addAll(
      [
        HttpHeaderInterceptor(),
      ],
    );
    return dioClient;
  }

  @lazySingleton
  Dio dio(DioHttpClient client) => client.dio;
}
