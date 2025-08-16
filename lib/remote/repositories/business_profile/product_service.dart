// product_service.dart

import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:mekanly/utils/api_provider.dart';
import '../../in_memory_token.dart';
import 'product_model.dart'; // Product, ApiResponse vb. burada tanımlı olmalı
import '../../http_client/dio_http_client.dart'; // Added import

import 'package:injectable/injectable.dart';

@injectable
class ProductService {
  final DioHttpClient _client; // Added client field

  ProductService({required DioHttpClient client}) : _client = client; // Added constructor

  final String baseUrl = '${ApiProvider().baseUrl}/api/v2/business';

  Future<ApiResponse> fetchProductsByCategory(
    int categoryId, {
    int offset = 0,
    int limit = 10,
  }) async {
    final url = Uri.parse(
        '$baseUrl/category/$categoryId/products?offset=$offset&limit=$limit');

    final headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${InMemoryToken.instance.token}',
    };

    final response = await _client.get(url.toString(), headers: headers); // Changed http.get to _client.get

    if (response!.statusCode == 200) { // Added null check for response
      final jsonBody = json.decode(response.data) as Map<String, dynamic>; // Changed response.body to response.data
      return ApiResponse.fromJson(jsonBody);
    } else {
      throw Exception('Ürünler yüklenemedi: ${response.statusCode}');
    }
  }
}
