import 'package:dio/dio.dart';
import 'package:dio/io.dart';
// dio_http_adapter import'una gerek yok!
import 'package:http_parser/src/media_type.dart' as parser;
import 'package:image_picker/image_picker.dart';

import '../response_error.dart';
import 'http_client.dart';
import 'dart:io';

// Bununla değiştirin
import 'dart:io' as io;

extension ResponseStatus<T> on Response<T> {
  /// Whether the network call was successful or not.
  ///
  /// `true` if the result code of the network call is >= 200 && <300
  /// If false, [error] will contain the converted error response body.
  bool get isSuccessful => statusCode != null ? (statusCode! >= 200 && statusCode! < 300) : false;
}

/// Abstraction of the Dio http client class.

class DioHttpClient extends HttpClient {
  DioHttpClient(this._dio) {
    // GÜNCEL VE DOĞRU YÖNTEM
    _dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        // dart:io'dan gelen HttpClient'ı kullandığımızı belirtiyoruz
        final client = io.HttpClient();

        // Güvenli olmayan (self-signed) sertifikalara izin veriyoruz
        // X509Certificate'in de dart:io'dan geldiğini belirtiyoruz
        client.badCertificateCallback = (io.X509Certificate cert, String host, int port) {
          print('Bad certificate callback triggered for host: $host, port: $port');
          return true;
        };
        return client;
      },
    );
  }

  final Dio _dio;

  Dio get dio => _dio;

  @override
  Map<String, dynamic> get headers => _dio.options.headers;

  Interceptors get interceptors => _dio.interceptors;

  /// Invoke the get method in the provided [Dio] instance.
  ///
  /// [T] is the type of data in case of success.
  ///
  /// Either return the data or throws a [ResponseErrors] object containing
  /// the error cause.
  @override
  Future<Response<dynamic>?> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    final options0 = (options ?? Options()).copyWith(
      headers: headers,
    );

    try {
      return await _dio.get<dynamic>(
        path,
        options: options0,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      throw ResponseError.from(e);
    }
  }

  /// Invoke the post method in the provided [Dio] instance.
  ///
  /// [T] is the type of data in case of success.
  ///
  /// Either return the data or throws a [ResponseErrors] object containing
  /// the error cause.
  @override
  Future<Response<dynamic>?> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.post<dynamic>(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      throw ResponseError.from(e);
    }
  }

  /// Invoke the put method in the provided [Dio] instance.
  ///
  /// [T] is the type of data in case of success.
  ///
  /// Either return the data or throws a [ResponseErrors] object containing
  /// the error cause.
  @override
  Future<Response<dynamic>?> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.put<dynamic>(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
    } catch (e) {
      // ignore: only_throw_errors
      throw ResponseError.from(e);
    }
  }

  Future<Response<T>> fetch<T>(RequestOptions options) async {
    try {
      return _dio.fetch<T>(options);
    } catch (e) {
      throw ResponseError.from(e);
    }
  }

  @override
  Future<Response<dynamic>> download(
    String urlPath,
    dynamic savePath, {
    void Function(int, int)? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool deleteOnError = true,
    String lengthHeader = Headers.contentLengthHeader,
    Object? data,
    Options? options,
  }) async {
    try {
      return await _dio.download(
        urlPath,
        savePath,
        onReceiveProgress: onReceiveProgress,
        queryParameters: queryParameters,
      );
    } catch (e) {
      throw ResponseError.from(e);
    }
  }

  @override
  Future<Response<dynamic>?> multiPartRequest(
    String path, {
    required File file,
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      FormData? formData;

      if (data != null && data is Map<String, dynamic>) {
        formData = FormData.fromMap(data);
      } else {
        formData = FormData.fromMap({});
      }
      final fileName = file.path.split('/').last;
      formData.files.addAll([
        MapEntry(
          'file',
          await MultipartFile.fromFile(
            file.path,
            filename: fileName,
            contentType: parser.MediaType('image', 'jpg'),
          ),
        ),
      ]);

      return await _dio.post(path, data: formData);
    } catch (ex) {
      throw ResponseError.from(ex);
    }
  }

  @override
  Future<Response<dynamic>?> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      return await _dio.delete<dynamic>(
        path,
        data: data,
        options: options,
        cancelToken: cancelToken,
        queryParameters: queryParameters,
      );
    } catch (e) {
      throw ResponseError.from(e);
    }
  }

  @override
  Future<Response<dynamic>?> uploadMultipleImagesWithData(
    String path, {
    required List<XFile> images,
    required Map<String, dynamic> otherFields,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      // Create FormData instance
      final formData = FormData();

      // Add all other fields
      otherFields.forEach((key, value) {
        formData.fields.add(MapEntry(key, value.toString()));
      });

      if (images.isEmpty) {
        return await _dio.post(path, data: formData);
      }
      // Add multiple images
      for (var i = 0; i < images.length; i++) {
        final file = images[i];
        final fileName = file.path.split('/').last;

        formData.files.add(
          MapEntry(
            'image[]', // Field name for the server to recognize multiple images
            await MultipartFile.fromFile(
              file.path,
              filename: fileName,
              contentType: parser.MediaType(
                'image',
                'jpeg',
              ), // Adjust content type as needed
            ),
          ),
        );
      }

      return await _dio.post(path, data: formData);
    } catch (ex) {
      throw ResponseError.from(ex);
    }
  }
}
