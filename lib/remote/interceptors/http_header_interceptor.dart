import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../app/app.dart';
import '../header.dart';
import '../in_memory_token.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final options = err.requestOptions;
    final requestPath = '${options.baseUrl}${options.path}';
    BaseLogger.error(
      '!!! STATUS  ${err.response?.statusCode} request => $requestPath',
    );
    BaseLogger.error(
      'Error here bro -> -> -> ${options.method} request => ${options.headers}',
    );
    // BaseLogger.error('!!! ${options.method} request => $requestPath');
    BaseLogger.error(
      '!!! Error: ${err.error}, Message: ${err.message}',
    ); // Error log

    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // final requestPath = '${options.baseUrl}${options.path}';
    final body = '${options.data}';
    BaseLogger.log(
      '-> -> -> ${options.method} request => ${options.headers}',
    ); // Info log
    if (options.data is FormData) {
      BaseLogger.log(
        '-> -> -> FormData request => ${(options.data as FormData).fields}',
      ); // Info log
    } else {
      BaseLogger.log(
        '-> -> -> ${options.method} request => $body',
      ); // Info log
    }

    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    final options = response.requestOptions;
    final requestPath =
        '${options.baseUrl}${options.path}${options.queryParameters}';

    BaseLogger.log('<- <- <- URL: $requestPath}');
    BaseLogger.log('<- <- <- StatusCode: ${response.statusCode}');
    BaseLogger.log('<- <- <- Data: ${response.data}');

    handler.next(response);
  }
}

class HttpHeaderInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    handler.next(err);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = InMemoryToken.instance.token;
    if (token != null) {
      BaseLogger.log(
        '-> -> -> $token <-- - - -',
      ); // Info log
      options.headers[AppHttpHeaders.authorizationHeader] = 'Bearer $token';
    }
    final languageCode =
        Localizations.localeOf(navigatorKey.currentContext!).languageCode;

    options.headers[AppHttpHeaders.acceptLanguageHeader] = languageCode;

    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    BaseLogger.log('<- <- <- StatusCode: ${response.statusCode}');
    BaseLogger.log('<- <- <- Data: ${response.data}');

    handler.next(response);
  }
}
