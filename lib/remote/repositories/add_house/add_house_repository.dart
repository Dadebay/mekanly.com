import 'dart:async';
import 'dart:io';
import 'package:common/common.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../../../utils/api_end_points.dart';
import '../../http_client/dio_http_client.dart';
import '../../response_error.dart';

@injectable
class AddHouseRepository {
  AddHouseRepository({required DioHttpClient client}) : _client = client;

  final DioHttpClient _client;

  Future<Either<ResponseError<dynamic>, dynamic>> addHouse({
    required List<XFile> images,
    required Map<String, dynamic> otherFields,
  }) async {
    return _client
        .uploadMultipleImagesWithData(
          ApiEndpoints.addHouse,
          images: images,
          otherFields: otherFields,
        )
        .then(_onResHouses)
        .catchError(_onErrorHouses);
  }

  Either<ResponseError<dynamic>, dynamic> _onResHouses(
    Response<dynamic>? res,
  ) {
    BaseLogger.warning('Response: ${res?.data}');
    if (!(res?.isSuccessful ?? false)) {
      final err = res?.data as Map<String, dynamic>;

      return left(
        ResponseError.badRequest(err.toString()),
      );
    }

    if (res?.isSuccessful ?? false) {
      if (res?.data is Map<String, dynamic>) {
        final response = res?.data as Map<String, dynamic>;
        return right(response);
      }
      return right(true);
    }

    return right(false);
  }

  Either<ResponseError<dynamic>, dynamic> _onErrorHouses(
    dynamic err,
  ) {
    return left(ResponseError.from(err is Object ? err : err.toString()));
  }
}
