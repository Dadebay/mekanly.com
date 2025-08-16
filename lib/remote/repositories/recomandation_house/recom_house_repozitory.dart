import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mekanly/utils/api_provider.dart';
import '../../../app/app.dart';
import '../../in_memory_token.dart';

// 1. Model Classes
class HouseEntity {
  HouseEntity({
    required this.id,
    this.name,
    this.entertime,
    this.price,
    this.location,
    this.images,
    this.createdAt,
    this.favorited,
  });

  factory HouseEntity.fromJson(Map<String, dynamic> json) {
    return HouseEntity(
      id: json['id'] is int
          ? json['id'] as int
          : int.tryParse(json['id'].toString()) ?? 0,
      name: json['name']?.toString(),
      price: json['price']?.toString(),
      entertime: json['day_enter_time']?.toString(),
      location: json['location'] != null
          ? Location.fromJson(json['location'] as Map<String, dynamic>)
          : null,
      images: json['images'] != null
          ? (json['images'] as List)
              .map((i) => HouseImage.fromJson(i as Map<String, dynamic>))
              .toList()
          : null,
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'].toString())
          : null,
      favorited: json['favorited'] as bool?,
    );
  }
  final int id;
  final String? name;
  final String? entertime;
  final String? price;
  final Location? location;
  final List<HouseImage>? images;
  final DateTime? createdAt;
  final bool? favorited;
}

class Location {
  Location({this.parentName});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      parentName: json['parent_name'] as String?,
    );
  }
  final String? parentName;
}

class HouseImage {
  HouseImage({required this.url});

  factory HouseImage.fromJson(Map<String, dynamic> json) {
    return HouseImage(
      url: (json['url'] ?? '').toString(),
    );
  }
  final String url;
}

// 2. Repository
class HouseRepository {
  HouseRepository(this._dio);
  final Dio _dio;

  Future<List<HouseEntity>> getRecommendedHouses({
    required int houseId,
    int limit = 5,
  }) async {
    try {
      // ignore: inference_failure_on_function_invocation
      final response = await _dio.get(
        '${ApiProvider().baseUrl}/api/v2/houses/recommendations',
        queryParameters: {
          'house_id': houseId,
          'limit': limit,
        },
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            'Accept-Language': navigatorKey.currentContext,
            if (InMemoryToken.instance.token != null)
              'Authorization': 'Bearer ${InMemoryToken.instance.token}',
          },
        ),
      );
      print("responseee $response");
      if (response.statusCode == 200) {
        //  print('$data');
        // ignore: avoid_dynamic_calls
        final data = response.data['data'] as List;

        return data
            .map((json) => HouseEntity.fromJson(json as Map<String, dynamic>))
            .toList();
      }
      throw Exception('Failed to load recommendations');
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.message}');
    }
  }
}

// 3. Provider
class RecommendationProvider with ChangeNotifier {
  RecommendationProvider(this._repository);
  final HouseRepository _repository;
  List<HouseEntity> _recommendations = [];
  bool _isLoading = false;
  String? _error;

  List<HouseEntity> get recommendations => _recommendations;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchRecommendations({required int houseId}) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _recommendations =
          await _repository.getRecommendedHouses(houseId: houseId);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
