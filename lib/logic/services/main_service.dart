import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../models/models.dart';
import '../../packages.dart';
import '../core/core.dart';
import '../data/apis.dart';
import '../data/net.dart';
import '../repos/i_main_repo.dart';
import '/config/config.dart';
import '/models/category/category_model.dart';
import 'i_main_service.dart';

class MainService extends Net implements IMainService {
  final IMainRepo _mainRepo;
  final http.Client _httpClient;
  MainService({required IMainRepo mainRepo, required http.Client httpClient})
      : _mainRepo = mainRepo,
        _httpClient = httpClient;

  @override
  Future<Either<Failure, Success>> getCategories() async {
    try {
      try {
        final response = await requesExceptionHandler(() async {
          return await _httpClient.get(Uri.parse(Urls.getCategories), headers: getHeader());
        });

        logger('Groups ${response.statusCode.toString()}');
        if (response.statusCode == 200) {
          Categories? categs = Categories.fromJson(response.body);
          _mainRepo.setCategs(categs);
          return const Right(Success(successType: SuccessType.categoryFetched));
        } else {
          return Left(Failure(errorType: mapErrorMessageToError(response.body)));
        }
      } catch (e, st) {
        log(e.toString(), stackTrace: st);
        return Left(Failure(errorType: mapErrorMessageToError(null)));
      }
    } on TimeoutException {
      return const Left(Failure(errorType: ErrorType.noInternet));
    }
  }

  @override
  Future<Either<Failure, Success>> searchHouses(String query) async {
    try {
      try {
        final response = await requesExceptionHandler(() async {
          return await _httpClient.get(Uri.parse('${Urls.search}?search=$query'), headers: getHeader());
        });

        logger('Search ${response.statusCode.toString()}');
        if (response.statusCode == 200) {
          Houses houses = Houses.fromJson(response.body);
          if (houses.houses.isNotEmpty) {
            _mainRepo.setHouses(houses);
            return const Right(Success(successType: SuccessType.searchSucceed));
          } else if (houses.houses.isEmpty) {
            logger('empty');
            return const Left(Failure(errorType: ErrorType.houseEmpty));
          } else {
            return const Left(Failure(errorType: ErrorType.unbelievable));
          }
        } else {
          return Left(Failure(errorType: mapErrorMessageToError(response.body)));
        }
      } catch (e, st) {
        log(e.toString(), stackTrace: st);
        return Left(Failure(errorType: mapErrorMessageToError(null)));
      }
    } on TimeoutException {
      return const Left(Failure(errorType: ErrorType.noInternet));
    }
  }

  @override
  Future<Either<Failure, Success>> getAllHouses() async {
    try {
      try {
        final response = await requesExceptionHandler(() async {
          return await _httpClient.get(
            Uri.parse(Urls.getAllHouses),
            headers: getHeader(),
          );
        });

        logger('Houses ${response.statusCode.toString()}');
        if (response.statusCode == 200) {
          Houses? houses = Houses.fromJson(response.body);
          _mainRepo.setHouses(houses);
          return const Right(Success(successType: SuccessType.housesFetched));
        } else {
          return Left(Failure(errorType: mapErrorMessageToError(response.body)));
        }
      } catch (e, st) {
        log(e.toString(), stackTrace: st);
        return Left(Failure(errorType: mapErrorMessageToError(null)));
      }
    } on TimeoutException {
      return const Left(Failure(errorType: ErrorType.noInternet));
    }
  }

  @override
  Future<Either<Failure, Success>> filterBy(
      String? minPrice, String? maxPrice, List<int>? locations, List<int> roomCount, List<int> floorCount, int? guestCount, List<int>? features, String? date) async {
    try {
      String endpoint = '${Urls.filter}?';

      if (minPrice != null && minPrice != '') endpoint += 'cheap_price=$minPrice&';
      if (maxPrice != null && maxPrice != '') endpoint += 'expensive_price=$maxPrice&';
      if (locations != null && locations.isNotEmpty) endpoint += 'location=$locations&';
      if (roomCount.isNotEmpty) endpoint += 'room_number=$roomCount&';
      if (floorCount.isNotEmpty) endpoint += 'floor_number=$floorCount&';
      if (guestCount != 0) endpoint += 'guest_number=$guestCount&';
      if (features != null && features.isNotEmpty) endpoint += 'possibilities=$features&';
      if (date != null) endpoint += 'date=$date&';

      logger("ENDPOINT: --   $endpoint");

      final response = await requesExceptionHandler(() async {
        return await _httpClient.get(
          Uri.parse(endpoint),
          headers: getHeader(),
        );
      });

      logger('FILTERS ${response.statusCode.toString()}');

      if (response.statusCode == 200) {
        Houses? housss = Houses.fromJson(response.body);
        if (housss.houses.isNotEmpty) {
          _mainRepo.setHouses(housss);
          return const Right(Success(successType: SuccessType.filterDone));
        } else if (housss.houses.isEmpty) {
          logger('eaksjdhaskjdhkajdkajshd');
          return const Left(Failure(errorType: ErrorType.houseEmpty));
        } else {
          return const Left(Failure(errorType: ErrorType.unbelievable));
        }
      } else {
        return const Left(Failure(errorType: ErrorType.statusError));
      }
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return const Left(Failure(errorType: ErrorType.catcher));
    }
  }

  @override
  Future<Either<Failure, Success>> getRegions() async {
    try {
      final response = await requesExceptionHandler(() {
        return _httpClient.get(
          Uri.parse(Urls.getRegions),
          headers: getHeader(),
        );
      });

      logger('Regions ${response.statusCode.toString()}');
      if (response.statusCode == 200) {
        Regions? regs = Regions.fromJson(response.body);
        _mainRepo.setRegions(regs);
        return const Right(Success(successType: SuccessType.categoryFetched));
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Success>> addHouse(Map<String, dynamic> data, List<String> imagePaths) async {
    logger("ADDING HOUSE ...");
    try {
      final prefs = await SharedPreferences.getInstance();

      var request = http.MultipartRequest('POST', Uri.parse(Urls.addHouse));
      Map<String, String> stringData = data.map((key, value) => MapEntry(key, value.toString()));

      request.headers['Content-Type'] = 'multipart/form-data';
      request.headers['Authorization'] = 'Bearer ${prefs.getString(_mainRepo.token)}';
      request.fields.addAll(stringData);
      for (var imagePath in imagePaths) {
        request.files.add(await http.MultipartFile.fromPath('image[]', imagePath));
      }
      var response = await request.send();

      logger("ADDING DONE ${response.statusCode}");
      try {
        if (response.statusCode == 200 || response.statusCode == 201) {
          logger('Data sent successfully'.toUpperCase());

          return const Right(Success(successType: SuccessType.houseAdded));
        } else if (response.statusCode == 500) {
          logger('500: Error sending data'.toUpperCase());
          logger(request.fields);
          return const Left(Failure(errorType: ErrorType.houseNotAdded));
        } else {
          logger('UNknown threw: ${response.statusCode}');
          return const Left(Failure(errorType: ErrorType.unknown));
        }
      } catch (e, st) {
        logger('$e\n$st');
        return Left(Failure(errorType: mapErrorMessageToError(e.toString())));
      }
    } catch (e, st) {
      logger('$e\n$st');
      return Left(Failure(errorType: mapErrorMessageToError(e.toString())));
    }
  }

  @override
  Future<Either<Failure, Success>> getHouseComments(int houseId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await requesExceptionHandler(() async {
        logger(prefs.getString(_mainRepo.token));
        return await _httpClient.get(Uri.parse("${Urls.getHouseComments}/$houseId/comments"), headers: {
          'Content-Type': 'application/json',
          'Accept': "application/json",
        });
      });
      logger('FETCHING HOUSE COMMENTS ->  ${response.statusCode}');
      if (response.statusCode == 200) {
        AllComments? comments = AllComments.fromJson(response.body);
        _mainRepo.setAllComments(comments);

        return const Right(Success(successType: SuccessType.userHousesFetched));
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      logger("$e\n$st");

      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Success>> commentHouse(int houseId, double rating, String desc, {int? replyId}) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await requesExceptionHandler(() async {
        logger("${prefs.getString(_mainRepo.token)}");
        return await _httpClient.post(Uri.parse('${Urls.commentHouse}/$houseId/comment'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': "application/json",
              "Authorization": "Bearer ${prefs.getString(_mainRepo.token)}",
            },
            body: jsonEncode(
              {
                "star": rating,
                "description": desc,
                if (replyId != null) "reply_id": replyId,
              },
            ));
      });
      logger('COMMENTING HOUSE... ->  ${response.statusCode}');
      if (response.statusCode == 200) {
        return const Right(Success(successType: SuccessType.houseCommented));
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      logger("$e\n$st");

      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Success>> updateComment(int houseId, int commentId, String desc) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await requesExceptionHandler(() async {
        logger("${prefs.getString(_mainRepo.token)}");
        logger(Uri.parse('${Urls.commentHouse}/$houseId/comment/$commentId/update'));
        return await _httpClient.post(Uri.parse('${Urls.commentHouse}/$houseId/comment/$commentId/update'),
            headers: {
              'Content-Type': 'application/json',
              'Accept': "application/json",
              "Authorization": "Bearer ${prefs.getString(_mainRepo.token)}",
            },
            body: jsonEncode(
              {"description": desc},
            ));
      });
      logger('UPDATING COMMENT... ->  ${response.statusCode}');
      if (response.statusCode == 200) {
        return const Right(Success(successType: SuccessType.commentUpdated));
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      logger("$e\n$st");

      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Success>> deleteHouse(int houseId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await requesExceptionHandler(() async {
        return await _httpClient.delete(
          Uri.parse('${Urls.deleteHouse}/$houseId/delete'),
          headers: {
            'Content-Type': 'application/json',
            'Accept': "application/json",
            "Authorization": "Bearer ${prefs.getString(_mainRepo.token)}",
          },
        );
      });
      logger('Deleting HOUSE... ->  ${response.statusCode}');
      if (response.statusCode == 200) {
        logger(response.body);
        return const Right(Success(successType: SuccessType.houseDeleted));
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      logger("$e\n$st");

      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Success>> deleteComment(int commentId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await requesExceptionHandler(() async {
        return await _httpClient.delete(
          Uri.parse('${Urls.deleteComment}/$commentId/delete'),
          headers: {
            'Content-Type': 'application/json',
            'Accept': "application/json",
            "Authorization": "Bearer ${prefs.getString(_mainRepo.token)}",
          },
        );
      });
      logger('DELETING COMMENT... ->  ${response.statusCode}');
      if (response.statusCode == 200) {
        logger(response.body);
        return const Right(Success(successType: SuccessType.commentDeleted));
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      logger("$e\n$st");

      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Success>> forwardHouse(int houseId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await requesExceptionHandler(() async {
        return await _httpClient.get(
          Uri.parse('${Urls.moveForward}/$houseId/moveForward'),
          headers: {
            'Content-Type': 'application/json',
            'Accept': "application/json",
            "Authorization": "Bearer ${prefs.getString(_mainRepo.token)}",
          },
        );
      });
      logger('MOVING FORWARD... ->  ${response.statusCode}');
      if (response.statusCode == 200) {
        logger(response.body);
        return const Right(Success(successType: SuccessType.houseDeleted));
      } else {
        logger(response.statusCode);
        logger(response.body);
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      logger("$e\n$st");

      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Success>> updateHouse(Map<String, String> data, List<String> imagePaths, int houseId) async {
    logger("UPDATING HOUSE ...");
    try {
      final prefs = await SharedPreferences.getInstance();

      var request = http.MultipartRequest('POST', Uri.parse('${Urls.updateHouse}/$houseId/update'));

      request.headers['Content-Type'] = 'multipart/form-data';
      request.headers['Authorization'] = 'Bearer ${prefs.getString(_mainRepo.token)}';
      request.fields.addAll(data);
      for (var imagePath in imagePaths) {
        request.files.add(await http.MultipartFile.fromPath('image[]', imagePath));
      }
      var response = await request.send();

      try {
        if (response.statusCode == 200) {
          logger('Data sent successfully'.toUpperCase());

          return const Right(Success(successType: SuccessType.houseUpdated));
        } else {
          logger('Error sending data'.toUpperCase());
          logger(response.statusCode);
          logger(response.headers);
          logger(response.reasonPhrase);
          logger(response.stream);
          logger(request.fields);
          return const Left(Failure(errorType: ErrorType.notRegistered));
        }
      } catch (e, st) {
        logger('$e\n$st');
        return Left(Failure(errorType: mapErrorMessageToError(e.toString())));
      }
    } catch (e, st) {
      logger('$e\n$st');
      return Left(Failure(errorType: mapErrorMessageToError(e.toString())));
    }
  }

  @override
  Future<Either<Failure, Success>> bronHouse(int houseId) async {
    try {
      final response = await requesExceptionHandler(() async {
        return await _httpClient.get(
          Uri.parse("${Urls.bron}/$houseId/bron"),
          headers: getHeader(),
        );
      });

      logger('BRONNING ${response.statusCode.toString()}');
      if (response.statusCode == 200) {
        return const Right(Success(successType: SuccessType.categoryFetched));
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      log(e.toString(), stackTrace: st);
      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, int>> incrementView(int houseId) async {
    try {
      final response = await requesExceptionHandler(() async {
        return await _httpClient.get(
          Uri.parse('${Urls.incrementView}/$houseId/view-count'),
          headers: {
            'Content-Type': 'application/json',
            'Accept': "application/json",
          },
        );
      });
      logger(response.body);
      if (response.statusCode == 200) {
        logger(response.body);
        return Right(int.tryParse(response.body)!);
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      logger("$e\n$st");

      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Usr>> logIn(String phone, String password) async {
    logger("LOGIN TRIGGERED");
    try {
      final response = await requesExceptionHandler(() async {
        return await _httpClient.post(
          Uri.parse(Urls.login),
          headers: getHeader(),
          body: jsonEncode({"phone": phone, "password": password}),
        );
      });
      logger(response.statusCode);
      logger(response.body);
      if (response.statusCode == 200) {
        await _mainRepo.storeToken(json.decode(response.body)['token']);
        logger('LOGIN-TOKEN ${await SharedPreferences.getInstance().then((value) => value.getString(_mainRepo.token))}');

        var result = await getProfile();
        return result.fold(
          (l) {
            logger('---------------LEFT---------------');
            return Left(l);
          },
          (r) {
            logger('++++++++++++RIGHT++++++++++++');
            return Right(r);
          },
        );
      } else if (response.statusCode == 401) {
        return const Left(Failure(errorType: ErrorType.userNotFound));
      } else {
        return const Left(Failure(errorType: ErrorType.userNotLoggedIn));
      }
    } catch (e, st) {
      logger('CAUGHT\n$e\n$st');
      return Left(Failure(errorType: mapErrorMessageToError(e.toString())));
    }
  }

  @override
  Future<Either<Failure, Usr>> register(String username, String phone, String password) async {
    logger("REGISTER TRIGGERED");
    try {
      final response = await requesExceptionHandler(
        () async {
          return await _httpClient.post(
            Uri.parse(Urls.register),
            headers: getHeader(),
            body: jsonEncode({"username": username, "phone": phone, "password": password}),
          );
        },
      );
      logger(response.statusCode);
      logger(response.body);
      if (response.statusCode == 200) {
        await _mainRepo.storeToken(json.decode(response.body)['token']);
        logger('REG-TOKEN ${await SharedPreferences.getInstance().then((value) => value.getString(_mainRepo.token))}');
        var result = await getProfile();
        return result.fold(
          (l) {
            logger('Lefted');
            return Left(l);
          },
          (r) {
            logger('Righted');
            return Right(r);
          },
        );
      } else if (response.statusCode == 401) {
        return const Left(Failure(errorType: ErrorType.userNotFound));
      } else if (response.statusCode == 500) {
        logger(response.request);
        return const Left(Failure(errorType: ErrorType.userNotFound));
      } else {
        return const Left(Failure(errorType: ErrorType.notRegistered));
      }
    } catch (e, st) {
      logger("$e\n$st");
      return Left(Failure(errorType: mapErrorMessageToError(e.toString())));
    }
  }

  @override
  Future<Either<Failure, Usr>> getProfile() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await requesExceptionHandler(() async {
        logger(prefs.getString(_mainRepo.token));
        return await _httpClient.get(Uri.parse(Urls.getProfile), headers: {
          'Content-Type': 'application/json',
          'Accept': "application/json",
          "Authorization": "Bearer ${prefs.getString(_mainRepo.token)}",
        });
      });
      logger('FETCHING PROFILE ${response.statusCode}');
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        var user = Usr(
          id: data['id'],
          username: data['username'],
          email: data['email'],
          phone: data['phone'],
          emailVerifiedAt: data['email_verified_at'],
          phoneVerifiedAt: data['phone_verified_at'],
          role: data['role'],
          status: data['status'],
          createdAt: data['created_at'],
          updatedAt: data['updated_at'],
        );
        await _mainRepo.storeUser(user);

        return Right(user);
      } else {
        return Left(Failure(errorType: mapErrorMessageToError(response.body)));
      }
    } catch (e, st) {
      logger("$e\n$st");

      return Left(Failure(errorType: mapErrorMessageToError(null)));
    }
  }

  @override
  Future<Either<Failure, Success>> logout() async {
    logger("LOGOUT TRIGGERED");
    try {
      final prefs = await SharedPreferences.getInstance();
      final response = await requesExceptionHandler(
        () async {
          return await _httpClient.post(
            Uri.parse(Urls.logout),
            headers: {
              'Content-Type': 'application/json',
              'Accept': "application/json",
              "Authorization": "Bearer ${prefs.getString(_mainRepo.token)}",
            },
          );
        },
      );

      if (response.statusCode == 200) {
        return const Right(Success(successType: SuccessType.userLoggedOut));
      } else if (response.statusCode == 409) {
        return const Left(Failure(errorType: ErrorType.userConflict));
      } else {
        return const Left(Failure(errorType: ErrorType.notRegistered));
      }
    } catch (e, st) {
      logger('$e\n$st');
      return Left(Failure(errorType: mapErrorMessageToError(e.toString())));
    }
  }

  @override
  Future<bool> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }
}
