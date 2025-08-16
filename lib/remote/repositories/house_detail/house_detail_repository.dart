import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/api_end_points.dart';
import '../../entities/house_detail/house_detail_response.dart';
import '../../http_client/dio_http_client.dart';
import '../../response_error.dart';

@injectable
class HouseDetailRepository {
  HouseDetailRepository({required DioHttpClient client}) : _client = client;

  final DioHttpClient _client;

  Future<Either<ResponseError<dynamic>, HouseDetailResponse>> houseDetail(
    int id,
  ) async {
    return _client
        .get(
          ApiEndpoints.houseDetail(id),
        )
        .then(_onResDetail)
        .catchError(_onErrorDetail);
  }

  Either<ResponseError<dynamic>, HouseDetailResponse> _onResDetail(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = HouseDetailResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, HouseDetailResponse> _onErrorDetail(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
