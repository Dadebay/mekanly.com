import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../features/business_porfile_detail/models/business_profile_detail_response.dart';
import '../../../utils/api_end_points.dart';
import '../../http_client/dio_http_client.dart';
import '../../response_error.dart';

@injectable
class BusinessProfileDetailRepository {
  BusinessProfileDetailRepository({required DioHttpClient client})
      : _client = client;

  final DioHttpClient? _client;

  Future<Either<ResponseError<dynamic>, BusinessProfileDetailResponse>> detail({
    required int id,
  }) async {
    final response = await _client!
        .get(
          ApiEndpoints.businessProfile(
            id,
          ),
        )
        .then(_onResDetail)
        .catchError(_onErrorDetail);

    log('<<<<<<<<<BusinessProfileDetailResponse response:   ${response.toString()}');

    return response;
  }

  Either<ResponseError<dynamic>, BusinessProfileDetailResponse> _onResDetail(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = BusinessProfileDetailResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, BusinessProfileDetailResponse> _onErrorDetail(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
