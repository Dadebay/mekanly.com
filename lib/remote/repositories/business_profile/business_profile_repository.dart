import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/api_end_points.dart';
import '../../entities/business_profile/business_profile_category_response.dart';
import '../../entities/business_profile/business_profiles_response.dart';
import '../../http_client/dio_http_client.dart';
import '../../response_error.dart';

@injectable
class BusinessProfileRepository {
  BusinessProfileRepository({required DioHttpClient client}) : _client = client;

  final DioHttpClient _client;

  Future<Either<ResponseError<dynamic>, BusinessProfilesResponse>> profiles({
    int limit = 10,
    int offset = 0,
  }) async {
    return _client
        .get(
          ApiEndpoints.allBusinessProfiles(
            limit: limit,
            offset: offset,
          ),
        )
        .then(_onResDetail)
        .catchError(_onErrorDetail);
  }

  Either<ResponseError<dynamic>, BusinessProfilesResponse> _onResDetail(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = BusinessProfilesResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, BusinessProfilesResponse> _onErrorDetail(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}

@injectable
class BusinessProfileCategoryRepository {
  BusinessProfileCategoryRepository({required DioHttpClient client})
      : _client = client;

  final DioHttpClient _client;

  Future<Either<ResponseError<dynamic>, BusinessProfileCategoryResponse>>
      categories() async {
    return _client
        .get(
          ApiEndpoints.businessCategories,
        )
        .then(_onResDetail)
        .catchError(_onErrorDetail);
  }

  Either<ResponseError<dynamic>, BusinessProfileCategoryResponse> _onResDetail(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = BusinessProfileCategoryResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, BusinessProfileCategoryResponse>
      _onErrorDetail(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
