import 'package:dartz/dartz.dart';

import '../core/errors/failure.dart';
import '../core/errors/types.dart';
import '../core/success/success.dart';
import '../core/success/types.dart';
import '/config/config.dart';
import '/models/category/category_model.dart';
import '/models/models.dart';
import '/packages.dart';
import 'i_main_repo.dart';

class MainRepo implements IMainRepo {
  final List<int> _navRoutes = [0];
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final Locale _locale = const Locale('tk');
  Usr _user = Usr(email: '');
  String aUTHKEY = 'user';
  String tOKEN = 'token';
  String cOUNTRYCode = 'countryCode';
  String lANGCODE = 'languageCode';

  int _currentIndex = 0;
  late Categories _cats;
  late Houses _hosses;
  late AllComments _comments;
  late Regions _regions;

  Locale get locale => _locale;
  @override
  String get authKey => aUTHKEY;

  @override
  String get token => tOKEN;
  @override
  String get cntryCode => cOUNTRYCode;

  @override
  String get langCode => lANGCODE;

  @override
  int get currentIndex => _currentIndex;
  @override
  int get lastIndex => _navRoutes.last;
  @override
  Usr get user => _user;
  @override
  List<int> get navList => _navRoutes;
  @override
  @override
  bool navigate(int i) {
    if (_navRoutes.contains(i)) {
      _navRoutes.remove(i);
    }
    _currentIndex = i;
    _navRoutes.add(i);
    return true;
  }

  @override
  bool pop() {
    if (_navRoutes.isNotEmpty) {
      _navRoutes.removeLast();
      _currentIndex = _navRoutes.last;
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<Either<Failure, Success>> storeUser(Usr user) async {
    try {
      _user = user;

      logger('USER STORING...');
      final sharPref = await SharedPreferences.getInstance();
      await sharPref.reload();
      await sharPref.setString(aUTHKEY, _user.toJson());
      return const Right(Success(successType: SuccessType.userStored));
    } catch (e) {
      return const Left(Failure(errorType: ErrorType.userNotStored));
    }
  }

  @override
  Future<Either<Failure, Success>> storeToken(String token) async {
    try {
      final sharPref = await SharedPreferences.getInstance();
      await sharPref.reload();
      await sharPref.setString(tOKEN, token);
      return const Right(Success(successType: SuccessType.tokenStored));
    } catch (e) {
      return const Left(Failure(errorType: ErrorType.tokenNotStored));
    }
  }

  @override
  Future<Either<Failure, Usr>> getUser() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.reload();
    if (!prefs.containsKey(aUTHKEY)) {
      return const Left(Failure(errorType: ErrorType.notRegistered));
    }
    final jsonString = prefs.getString(aUTHKEY);
    if (jsonString == null) {
      return const Left(Failure(errorType: ErrorType.notRegistered));
    } else {
      try {
        _user = Usr.fromJson(jsonString);
        return Right(_user);
      } on FormatException catch (e) {
        logger('''FormatException: ${e.message}''');
        return const Left(Failure(errorType: ErrorType.notRegistered));
      }
    }
  }

  @override
  Future<Either<Failure, Success>> removeUser() async {
    try {
      logger('Removing from repo');
      _user = Usr();
      final sharPref = await SharedPreferences.getInstance();
      logger('Before Removing: ${sharPref.getString(aUTHKEY)}\n${sharPref.getString(token)}');
      if (sharPref.containsKey(aUTHKEY)) {
        sharPref.remove(aUTHKEY);
        sharPref.remove(token);
      }
      return const Right(Success(successType: SuccessType.userLoggedOut));
    } catch (e) {
      return const Left(Failure(errorType: ErrorType.notFoundUserInLocal));
    }
  }

  @override
  Categories get cats => _cats;
  @override
  Houses get houses => _hosses;
  @override
  AllComments get comments => _comments;
  @override
  Regions get regions => _regions;

  @override
  void setCategs(Categories categs) {
    _cats = categs;
  }

  @override
  void setHouses(Houses hosues) {
    var validHouses = hosues.houses.where((element) => element.images.isNotEmpty).toList();
    validHouses.sort((a, b) => b.createdAt.compareTo(a.createdAt));
    _hosses = Houses(validHouses);
  }

  @override
  void setAllComments(AllComments allComments) {
    _comments = allComments;
  }

  @override
  void setRegions(Regions regs) {
    _regions = regs;
  }
}
