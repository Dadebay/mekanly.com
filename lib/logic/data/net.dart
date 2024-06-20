import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;
import 'package:mekanly_com/logic/core/core.dart';

import '../../config/config.dart';

typedef RefreshTokenHandler = Future<String?> Function();

class Net {
  Future<http.Response> requesExceptionHandler(ReqBody requesBody) async {
    try {
      return await requesBody();
    } on SocketException {
      logger('SocketException was thrown');
      throw const ServerException(errorType: HttpErrors.noInternetConnection);
    } on TimeoutException {
      logger('TimeoutException was thrown');
      throw const ServerException(errorType: HttpErrors.serverConnectionError);
    } on FormatException {
      logger('FormatException was thrown');
      throw const ServerException(errorType: CommonErrors.invalidData);
    } on Error catch (err) {
      logger('Unexpected error: $err');
      throw const ServerException(errorType: CommonErrors.unexpectedException);
    } on Exception catch (ex) {
      logger('Unexpected exception: $ex');
      throw const ServerException(errorType: CommonErrors.unexpectedException);
    }
  }

  http.Response newMethod() {
    return http.Response(
      jsonEncode({
        'error': {'code': 'Unknown'},
      }),
      500,
    );
  }

  getHeader() {
    return {
      'Content-Type': 'application/json',
      'Accept': "application/json",
    };
  }

  static Future<bool> checkInternet() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    }
    return true;
  }
}

HttpErrors mapStatusCodeToError(int statusCode) {
  switch (statusCode) {
    case 404:
      return HttpErrors.notFound;
    case 400:
      return HttpErrors.badRequest;
    case 500:
      return HttpErrors.internalServerError;
    case 403:
      return HttpErrors.forbidden;
    default:
      return HttpErrors.unexpectedStatusCode;
  }
}

ErrorType mapErrorMessageToError(String? data) {
  if (data == null) return ErrorType.unknown;
  if (jsonDecode(data)['error'] == null && jsonDecode(data)['errors'] == null) {
    return ErrorType.notRegistered;
  }
  switch (jsonDecode(data)['error'] != null ? jsonDecode(data)['error']['code'] : jsonDecode(data)['errors']['code']) {
    case 'userNotFound':
      return ErrorType.userNotFound;
    case 'notRegistered':
      return ErrorType.notRegistered;
    case 'userNotStored':
      return ErrorType.userNotStored;
    case 'wrongPassword':
      return ErrorType.wrongPassword;
    case 'unknown':
      return ErrorType.unknown;
    default:
      return ErrorType.localizationError;
  }
}

typedef ReqBody = Future<http.Response> Function();
