import 'package:dartz/dartz.dart';
import '../../entities/auth/login_success_entity.dart';
import '../../entities/auth/otp_success_entity.dart';
import '../../entities/user_profile/user_profile_info_response.dart';
import '../../payloads/fcm_payload.dart';
import '../../payloads/login_payload.dart';
import '../../payloads/otp_payload.dart';
import '../../response_error.dart';

abstract class IAuthRepository {
  Future<Either<ResponseError<dynamic>, LoginSuccessEntity>> login(
    LoginPayload payload,
  );
  Future<Either<ResponseError<dynamic>, bool>> deviceInfo(
    FcmPayload payload,
  );
  Future<Either<ResponseError<dynamic>, OtpSuccessEntity>> otp(
    OtpPayload payload,
  );
  Future<Either<ResponseError<dynamic>, UserProfileInfoResponse>> profileInfo();
}
