import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

class ApiProvider {
  static final ApiProvider _instance = ApiProvider._internal();
  factory ApiProvider() => _instance;

  ApiProvider._internal();

  String _baseUrl = 'https://mekanly.com.tm';
  String get baseUrl => _baseUrl;

  Future<void> initialize() async {
    try {
      print("------------------------------------------********************************************************&&&&&&&&&&&&&&&&&&&&&&&&&&&");

      final snapshot = await FirebaseFirestore.instance.collection('api_address').limit(1).get();
      print(snapshot.docs.length);
      if (snapshot.docs.isNotEmpty) {
        final doc = snapshot.docs.first;
        final data = doc.data();
        if (data.containsKey('value')) {
          final fetchedUrl = data['value'] as String?;
          if (fetchedUrl != null && fetchedUrl.isNotEmpty) {
            _baseUrl = fetchedUrl;
            print('API URL fetched from Firestore: $_baseUrl');
            return;
          }
        }
      }

      print('API URL not found in Firestore, using default.');
    } catch (e) {
      print('Error fetching API URL from Firestore: $e');
      print('Using default API URL.');
    }
  }
}
