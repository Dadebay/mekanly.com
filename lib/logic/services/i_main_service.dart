import 'package:dartz/dartz.dart';

import '../core/core.dart';
import '/models/models.dart';

abstract class IMainService {
  Future<Either<Failure, Success>> getCategories();

  Future<Either<Failure, Success>> getRegions();

  Future<Either<Failure, Success>> getAllHouses();
  Future<Either<Failure, Success>> searchHouses(String query);
  Future<Either<Failure, Success>> filterBy(String? minPrice, String? maxPrice, List<int>? locations, List<int> roomCount, List<int> floorCount, int? guestCount, List<int>? features, String? date);

  Future<Either<Failure, Success>> getHouseComments(int id);

  Future<Either<Failure, int>> incrementView(int id);

  Future<Either<Failure, Success>> addHouse(Map<String, dynamic> data, List<String> imagePaths);
  Future<Either<Failure, Success>> commentHouse(int houseId, double rating, String desc, {int? replyId});
  Future<Either<Failure, Success>> updateComment(int houseId, int commentId, String desc);
  Future<Either<Failure, Success>> deleteHouse(int houseId);
  Future<Either<Failure, Success>> deleteComment(int commentId);
  Future<Either<Failure, Success>> forwardHouse(int houseId);
  Future<Either<Failure, Success>> updateHouse(Map<String, String> data, List<String> imagePaths, int houseId);
  Future<Either<Failure, Success>> bronHouse(int houseId);

  Future<Either<Failure, Usr>> logIn(String phone, String password);
  Future<Either<Failure, Usr>> register(String username, String phone, String password);
  Future<Either<Failure, Success>> logout();
  Future<Either<Failure, Usr>> getProfile();

  Future<bool> checkInternetConnection();
}
