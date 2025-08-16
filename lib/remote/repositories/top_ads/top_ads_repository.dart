import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/api_end_points.dart';
import '../../entities/top_ads/top_ads_response.dart';
import '../../http_client/dio_http_client.dart';
import '../../response_error.dart';

@injectable
class TopAdsRepository {
  TopAdsRepository({required DioHttpClient client}) : _client = client;

  final DioHttpClient _client;

  Future<Either<ResponseError<dynamic>, TopAdsResponse>> topAds() async {
    return _client
        .get(
          ApiEndpoints.topAds,
        )
        .then(_onResTopAds)
        .catchError(_onErrorTopAds);
  }

  Either<ResponseError<dynamic>, TopAdsResponse> _onResTopAds(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = TopAdsResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, TopAdsResponse> _onErrorTopAds(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
