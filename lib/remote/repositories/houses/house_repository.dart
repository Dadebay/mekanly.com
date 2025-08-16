import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/api_end_points.dart';
import '../../entities/global_options/global_options.dart';
import '../../entities/houses/house_entity.dart';
import '../../entities/houses/house_response.dart';
import '../../http_client/dio_http_client.dart';
import '../../response_error.dart';

@injectable
class HousesRepository {
  HousesRepository({required DioHttpClient client}) : _client = client;

  final DioHttpClient _client;

  Future<Either<ResponseError<dynamic>, HouseResponse>> houses({
    int limit = 10,
    int page = 0,
  }) async {
    return _client
        .get(
          ApiEndpoints.houses(
            limit: limit,
            page: page,
          ),
        )
        .then(_onResHouses)
        .catchError(_onErrorHouses);
  }

  Either<ResponseError<dynamic>, HouseResponse> _onResHouses(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = HouseResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, HouseResponse> _onErrorHouses(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }

  Future<Either<ResponseError<dynamic>, List<HouseEntity>>> filter({
    int limit = 10,
    int page = 0,
    required GlobalOptions filter,
  }) async {
    return _client
        .post(
          ApiEndpoints.filter(
            limit: limit,
            page: page,
            filter: filter,
          ),
        )
        .then(_onResFilter)
        .catchError(_onErrorFilter);
  }

  Future<Either<ResponseError<dynamic>, HouseResponse>> searchHouses({
    int limit = 10,
    int page = 0,
    required String searchQuery,
  }) async {
    return _client
        .post(
          ApiEndpoints.searchHouses(
            limit: limit,
            page: page,
            searchQuery: searchQuery,
          ),
          data: {
            "search": searchQuery,
          },
        )
        .then(_onResHouses)
        .catchError(_onErrorHouses);
  }

  Either<ResponseError<dynamic>, List<HouseEntity>> _onResFilter(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final resData = res?.data as Map<String, dynamic>;

    final response = (resData['data'] as List<dynamic>)
        .map((h) => HouseEntity.fromJson(h as Map<String, dynamic>))
        .toList();

    return right(response);
  }

  Either<ResponseError<dynamic>, List<HouseEntity>> _onErrorFilter(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }

  Future<Either<ResponseError<dynamic>, GlobalOptionsResponse>>
      globalOptions() async {
    return _client
        .get(
          ApiEndpoints.globalOptions,
        )
        .then(_onResGlobalOptions)
        .catchError(_onErrorGlobalOptions);
  }

  Either<ResponseError<dynamic>, GlobalOptionsResponse> _onResGlobalOptions(
    Response<dynamic>? res,
  ) {
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;
      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    final response = GlobalOptionsResponse.fromJson(
      res?.data as Map<String, dynamic>,
    );

    return right(response);
  }

  Either<ResponseError<dynamic>, GlobalOptionsResponse> _onErrorGlobalOptions(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
