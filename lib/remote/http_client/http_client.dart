import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

/// Abstraction of the http client class.
abstract class HttpClient {
  /// All API endpoints that does not require auth token.
  static const List<String> nonAuthenticatedPaths = [
    // Add paths here...
    // UserService.loginPath,
  ];

  Map<String, dynamic> get headers;

  Future<Response<dynamic>?> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
  });
  Future<Response<dynamic>?> download(
    String urlPath,
    dynamic savePath, {
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    Object? data,
    Options? options,
  });

  Future<Response<dynamic>?> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
  Future<Response<dynamic>?> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
  Future<Response<dynamic>?> multiPartRequest(
    String path, {
    required File file,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
  Future<Response<dynamic>?> uploadMultipleImagesWithData(
    String path, {
    required List<XFile> images,
    required Map<String, dynamic> otherFields,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response<dynamic>?> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  });
}
