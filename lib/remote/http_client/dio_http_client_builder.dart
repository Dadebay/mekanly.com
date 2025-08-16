import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'dio_http_client.dart';

class DioHttpClientBuilder {
  static DioHttpClient? _dioClient;
  String? _baseUrl;
  Duration? _sendTimeout;
  Duration? _connectTimeout;
  Duration? _receiveTimeout;
  final List<Interceptor> _interceptors = [];
  
  // Getter and setter for baseUrl
  set baseUrl(String? url) {
    _baseUrl = url;
  }
  
  // Getter and setter for connectTimeout
  set connectTimeout(Duration? timeout) {
    _connectTimeout = timeout;
  }
  
  // Getter and setter for receiveTimeout
  set receiveTimeout(Duration? timeout) {
    _receiveTimeout = timeout;
  }
  
  // Getter and setter for sendTimeout
  set sendTimeout(Duration? timeout) {
    _sendTimeout = timeout;
  }
  
  void addInterceptor(Interceptor interceptor) {
    _interceptors.add(interceptor);
  }
  
  DioHttpClient build() {
    if (_dioClient != null) {
      return _dioClient!;
    }
    
    final options = BaseOptions();
    
    if (_baseUrl != null) {
      options.baseUrl = _baseUrl!;
    }
    
    if (_connectTimeout != null) {
      options.connectTimeout = _connectTimeout;
    }
    
    if (_receiveTimeout != null) {
      options.receiveTimeout = _receiveTimeout;
    }
    
    if (_sendTimeout != null) {
      options.sendTimeout = _sendTimeout;
    }
    
    final dio = Dio(options);

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    
    if (_interceptors.isNotEmpty) {
      dio.interceptors.addAll(_interceptors);
    }
    
    _dioClient = DioHttpClient(dio);
    return _dioClient!;
  }
}
// DioHttpClient? _dioClient;

// class DioHttpClientBuilder {
//   late String _baseUrl;
//   late Duration _sendTimeout;
//   late Duration _connectTimeout;
//   late Duration _receiveTimeout;
//   final List<Interceptor> _interceptors = [];

//   DioHttpClientBuilder setBaseUrl(String url) {
//     _baseUrl = url;
//     return this;
//   }

//   DioHttpClientBuilder setConnectTimeout(Duration connectTimeout) {
//     _connectTimeout = connectTimeout;
//     return this;
//   }

//   DioHttpClientBuilder setReceiveTimeout(Duration receiveTimeout) {
//     _receiveTimeout = receiveTimeout;
//     return this;
//   }

//   DioHttpClientBuilder setSendTimeout(Duration sendTimeout) {
//     _sendTimeout = sendTimeout;
//     return this;
//   }

//   DioHttpClientBuilder addInterceptor(Interceptor interceptor) {
//     _interceptors.add(interceptor);
//     return this;
//   }

//   DioHttpClient build() {
//     if (_dioClient != null) {
//       return _dioClient!;
//     }

//     final options = BaseOptions()
//       ..baseUrl = _baseUrl
//       ..connectTimeout = _connectTimeout
//       ..receiveTimeout = _receiveTimeout
//       ..sendTimeout = _sendTimeout;

//     final dio = Dio(options);
//     dio.httpClientAdapter = HttpClientAdapter();
//     dio.interceptors.addAll(_interceptors);
//     _dioClient = DioHttpClient(dio);
//     return _dioClient!;
//   }
// }
