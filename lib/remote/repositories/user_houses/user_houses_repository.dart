import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/api_end_points.dart';
import '../../entities/user_house/user_houses_response.dart';
import '../../http_client/dio_http_client.dart';
import '../../response_error.dart';

@injectable
class UserHousesRepository {
  UserHousesRepository({required DioHttpClient client}) : _client = client;

  final DioHttpClient _client;

  Future<Either<ResponseError<dynamic>, UserHousesResponse>> houses({
    int limit = 10,
    int offset = 0,
    int? categoryId,
  }) async {
    return _client
        .get(
          ApiEndpoints.userHouses(
            limit: limit,
            offset: offset,
            categoryId: categoryId,
          ),
        )
        .then(_onResHouses)
        .catchError(_onErrorHouses);
  }

  Either<ResponseError<dynamic>, UserHousesResponse> _onResHouses(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = UserHousesResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, UserHousesResponse> _onErrorHouses(
    dynamic err,
  ) {
  
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
