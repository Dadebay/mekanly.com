import 'dart:developer';
import 'dart:io';
import 'package:common/common.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../localization/extensions.dart';
part 'response_error.freezed.dart';

/// A representation of all possible errors while connecting with the
/// backend.
///
/// We return those errors to get localized messages to display to the user.
@freezed
class ResponseError<T> with _$ResponseError<T> implements Exception {
  const ResponseError._();
  const factory ResponseError.noInternetConnection() = _NoInternetConnection;
  const factory ResponseError.sendTimeout() = _SendTimeout;
  const factory ResponseError.connectTimeout() = _ConnectTimeout;
  const factory ResponseError.receiveTimeout() = _ReceiveTimeout;
  const factory ResponseError.badRequest(String message) = _BadRequest;
  const factory ResponseError.notFound() = _NotFound;
  const factory ResponseError.tooManyRequests() = _TooManyRequests;
  const factory ResponseError.unprocessableEntity() = _UnprocessableEntity;
  const factory ResponseError.internalServerError() = _InternalServerError;
  const factory ResponseError.unexpectedError(String  message) =
      _UnexpectedError;
  const factory ResponseError.requestCancelled() = _RequestCancelled;
  const factory ResponseError.conflict() = _Conflict;
  const factory ResponseError.unauthorized() = _Unauthorized;
  const factory ResponseError.tooLargeEntity(String message) = _TooLargeEntity;
  const factory ResponseError.invalidPassword() = _InvalidPasswordError;
  const factory ResponseError.invalidEmail() = _InvalidEmailError;
  const factory ResponseError.invalidLoginCredentials() =
      _InvalidLoginCredentials;
  const factory ResponseError.invalidRegistrationCredentials() =
      _InvalidRegistrationCredentials;
  const factory ResponseError.invalidSearchTerm() = _InvalidSearchTermError;

  static ResponseError<dynamic> from(Object error) {
    if (error is ResponseError) {
      return error;
    } else if (error is SocketException) {
      return const ResponseError.noInternetConnection();
    } else if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.sendTimeout:
          return const ResponseError.sendTimeout();
        case DioExceptionType.connectionTimeout:
          return const ResponseError.connectTimeout();
        case DioExceptionType.receiveTimeout:
          return const ResponseError.receiveTimeout();
        case DioExceptionType.unknown:
          return const ResponseError.noInternetConnection();
        case DioExceptionType.cancel:
          return const ResponseError.requestCancelled();
        case DioExceptionType.badResponse:
          log('Backend Error Response: ${error.response?.data}');
          final err = error.response?.data;
          // final errData = err is Map<String, dynamic>
          //     ? err
          //     : (err is String
          //         ? json.decode(err) as Map<String, dynamic>
          //         : {'message': err.toString()});
          BaseLogger.warning('${err.runtimeType}');
          switch (error.response!.statusCode) {
            // case 400:
            //   return ResponseError.badRequest(
            //     ErrorHandler.fromMap(errData).message ?? '',
            //   );
            // case 406:
            //   return ResponseError.badRequest(
            //     ErrorHandler.fromMap(errData).message ?? '',
            //   );
            // Returned when login credentials are invalid.
            case 302:
              return const ResponseError.unexpectedError(
                  'Redirect (302) occurred. Please check login status.');
            case 401:
              return const ResponseError.unauthorized();
            case 402:
              final err = error.response?.data as Map<String, dynamic>?;
              final message = err?['message'];
              return ResponseError.badRequest(
                message is String ? message : message.toString(),
              );

            case 404:
              return const ResponseError.notFound();
            case 409:
              return const ResponseError.conflict();
            case 413:
              BaseLogger.warning('YEAAAHH');
              return const ResponseError.tooLargeEntity(
                'Image size is too large, please try to upload less than 15.0 MB',
              );
            case 422:
              final err = error.response?.data as Map<String, dynamic>?;
              return ResponseError.badRequest('$err');
            case 429:
              return const ResponseError.tooManyRequests();
            case 500:
            case 502:
              final err = error.response?.data as Map<String, dynamic>?;

              return ResponseError.unexpectedError('${err!['message']}');
            default:
              // If we receive a unexpected status code, we throw an exception.
              final statusCode = error.response!.statusCode;
              throw Exception('Received invalid status code: $statusCode');
          }
        case DioExceptionType.badCertificate:
          return const ResponseError.badRequest('');
        case DioExceptionType.connectionError:
          return const ResponseError.connectTimeout();
      }
    } else if (error is TypeError) {
      BaseLogger.error(error.toString());
    }
    return ResponseError.unexpectedError(error.toString());
  }
}

extension ResponseErrorExtensions on ResponseError<dynamic> {
  String getErrorMessage(BuildContext context) {
    final localization = context.translation;
    //TODO: create error module for errors and set value accordingly
    return when<String>(
      noInternetConnection: () => 'No internet connection',
      sendTimeout: () => 'Send timeout',
      connectTimeout: () => 'Connect timeout',
      receiveTimeout: () => 'Receive timeout',
      badRequest: (m) => m,
      tooLargeEntity: (m) => m,
      notFound: () => 'Not found',
      tooManyRequests: () => 'Too many requests',
      unprocessableEntity: () => 'Un processable entity',
      internalServerError: () => 'Internal server error',
      unexpectedError: (m) => m,
      requestCancelled: () => 'Request Cancelled',
      conflict: () => 'Conflict',
      unauthorized: () => 'Unauthorized',
      invalidPassword: () => 'Invalid Password',
      invalidEmail: () => 'invalidEmail',
      invalidSearchTerm: () => '',
      invalidLoginCredentials: () => 'Invalid Login Credentials',
      invalidRegistrationCredentials: () => 'Invalid Registration Credentials',
    );
  }
}
