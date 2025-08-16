import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:mekanly/utils/api_provider.dart';
import '../../in_memory_token.dart';

// 1. Model Classes
class BusinesEntity {
  BusinesEntity({
    required this.id,
    this.createdAt,
    this.logo,
    this.brand,
    this.phoneNumbers,
    this.briefDescription,
    this.image,
    this.coverMedia,
    required this.views,
    required this.isVip,
    this.location,
    required this.productCount,
  });

  factory BusinesEntity.fromJson(Map<String, dynamic> json) {
    return BusinesEntity(
      id: json['id'] is int
          ? json['id'] as int
          : int.tryParse(json['id'].toString()) ?? 0,
      logo: json['logo']?.toString(),
      brand: json['brand']?.toString(),
      image: json['image']?.toString(),
      coverMedia: json['cover_media']?.toString(),
      views: json['views'] as int? ?? 0,
      isVip: json['is_vip'] == 1,
      phoneNumbers: _parsePhoneNumbers(json['phone_numbers']),
      briefDescription: json['brief_description']?.toString(),
      productCount: json['product_count'] as int? ?? 0,
      createdAt: json['created_at'] != null
          ? DateTime.tryParse(json['created_at'].toString())
          : null,
    );
  }

  final int id;
  final String? logo;
  final String? brand;
  final List<String>? phoneNumbers;
  final String? briefDescription;
  final String? image;
  final String? coverMedia;
  final int views;
  final bool isVip;
  final int productCount;
  final Location? location;
  final DateTime? createdAt;
}

class Location {
  Location({this.name, this.parentName});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name']?.toString(),
      parentName: json['parent_name']?.toString(),
    );
  }

  final String? name;
  final String? parentName;
}

List<String>? _parsePhoneNumbers(dynamic phoneData) {
  if (phoneData == null) return null;
  if (phoneData is List) {
    return phoneData.map((e) => e.toString()).toList();
  }
  return [phoneData.toString()];
}

class BusinesImage {
  BusinesImage({required this.url});

  factory BusinesImage.fromJson(Map<String, dynamic> json) {
    return BusinesImage(
      url: (json['url'] ?? '').toString(),
    );
  }
  final String url;
}

class BusinesRepository {
  BusinesRepository(this._dio);
  final Dio _dio;

  Future<List<BusinesEntity>> getRecommendedBusines({int limit = 5}) async {
    try {
      // ignore: inference_failure_on_function_invocation
      final response = await _dio.get(
        '${ApiProvider().baseUrl}/api/v2/business/recommendations/propertyProfiles',
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
            if (InMemoryToken.instance.token != null)
              'Authorization': 'Bearer ${InMemoryToken.instance.token}',
          },
        ),
      );

      if (response.statusCode == 200) {
        // ignore: avoid_dynamic_calls
        final data = response.data['data'] as List;
        return data
            .map((json) => BusinesEntity.fromJson(json as Map<String, dynamic>))
            .toList();
      }
      throw Exception('Failed to load recommendations');
    } on DioException catch (e) {
      throw Exception('Dio error: ${e.message}');
    }
  }
}

class RecommendationProviderBusines with ChangeNotifier {
  RecommendationProviderBusines(this._repository);
  final BusinesRepository _repository;

  List<BusinesEntity> _recommendations = [];
  bool _isLoading = false;
  String? _error;

  List<BusinesEntity> get recommendations => _recommendations;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchRecommendations() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _recommendations = await _repository.getRecommendedBusines();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
