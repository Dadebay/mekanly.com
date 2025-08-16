import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/api_end_points.dart';
import '../../entities/banners/banner_response.dart';
import '../../http_client/dio_http_client.dart';
import '../../response_error.dart';

@injectable
class BannersRepository {
  BannersRepository({required DioHttpClient client}) : _client = client;

  final DioHttpClient _client;

  Future<Either<ResponseError<dynamic>, BannerResponse>> banners() async {
    return _client
        .get(
          ApiEndpoints.banners,
        )
        .then(_onResBanners)
        .catchError(_onErrorBanners);
  }

  Either<ResponseError<dynamic>, BannerResponse> _onResBanners(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = BannerResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, BannerResponse> _onErrorBanners(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
