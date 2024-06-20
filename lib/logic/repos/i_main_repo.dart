import 'package:dartz/dartz.dart';

import '../../models/category/category_model.dart';
import '../core/errors/failure.dart';
import '../core/success/success.dart';
import '/models/models.dart';

abstract class IMainRepo {
  int get currentIndex;
  int get lastIndex;
  String get authKey;
  String get token;
  String get langCode;
  String get cntryCode;

  List<int> get navList;

  Usr get user;
  Future<Either<Failure, Usr>> getUser();
  Future<Either<Failure, Success>> storeUser(Usr user);
  Future<Either<Failure, Success>> storeToken(String token);
  Future<Either<Failure, Success>> removeUser();

  Categories get cats;
  Houses get houses;
  AllComments get comments;
  Regions get regions;

  bool navigate(int i);
  bool pop();

  void setCategs(Categories cat);
  void setHouses(Houses cat);
  void setAllComments(AllComments userComments);
  void setRegions(Regions regions);
}
