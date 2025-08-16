import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/api_end_points.dart';
import '../../entities/auth/login_success_entity.dart';
import '../../entities/auth/otp_success_entity.dart';
import '../../entities/user_profile/user_profile_info_response.dart';
import '../../http_client/dio_http_client.dart';
import '../../payloads/fcm_payload.dart';
import '../../payloads/login_payload.dart';
import '../../payloads/otp_payload.dart';
import '../../response_error.dart';
import 'auth_repository.dart';

@Injectable(as: IAuthRepository)
class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({required DioHttpClient client}) : _client = client;

  final DioHttpClient _client;

  @override
  Future<Either<ResponseError<dynamic>, LoginSuccessEntity>> login(
    LoginPayload payload,
  ) async {
    return _client
        .post(
          ApiEndpoints.login,
          data: payload.toJson(),
        )
        .then(_onResLogin)
        .catchError(_onErrorLogin);
  }

  Either<ResponseError<dynamic>, LoginSuccessEntity> _onResLogin(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = LoginSuccessEntity.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, LoginSuccessEntity> _onErrorLogin(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }

  @override
  Future<Either<ResponseError<dynamic>, OtpSuccessEntity>> otp(
    OtpPayload payload,
  ) async {
    try {
      final response = _client
          .post(
            ApiEndpoints.otp,
            data: payload.toJson(),
          )
          .then(_onResOtp)
          .catchError(_onErrorOtp);

      return response;
    } catch (e) {
      log('<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ERROR: $e');
      return _client
          .post(
            ApiEndpoints.otp,
            data: payload.toJson(),
          )
          .then(_onResOtp)
          .catchError(_onErrorOtp);
    }
  }

  Either<ResponseError<dynamic>, OtpSuccessEntity> _onResOtp(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = OtpSuccessEntity.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, OtpSuccessEntity> _onErrorOtp(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }

  @override
  Future<Either<ResponseError<dynamic>, bool>> deviceInfo(
    FcmPayload payload,
  ) async {
    return _client
        .post(
          ApiEndpoints.deviceinfo,
          data: jsonDecode(jsonEncode(payload.toJson())),
        )
        .then(_onRes)
        .catchError(_onError);
  }

  Either<ResponseError<dynamic>, bool> _onRes(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    return right(true);
  }

  Either<ResponseError<dynamic>, bool> _onError(
    dynamic err,
  ) {
    BaseLogger.warning(err.toString());
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }

  @override
  Future<Either<ResponseError<dynamic>, UserProfileInfoResponse>>
      profileInfo() {
    return _client
        .get(
          ApiEndpoints.userProfile,
        )
        .then(_onResProfile)
        .catchError(_onErrorProfile);
  }

  Either<ResponseError<dynamic>, UserProfileInfoResponse> _onResProfile(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    BaseLogger.info('PROFILE -- - -- > ${res?.data}');

    final response = UserProfileInfoResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, UserProfileInfoResponse> _onErrorProfile(
    dynamic err,
  ) {
    BaseLogger.warning(err.toString());
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
