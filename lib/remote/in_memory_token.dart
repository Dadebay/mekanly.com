// In Memory auth token for the current session.
// Token should be retrieved from secure storage and added here
// to be used for authentication on every API call
class InMemoryToken {
  InMemoryToken._internal();
  static final instance = InMemoryToken._internal();

  String? _token;
  int? _userId;

  set token(String? token) {
    _token = token;
  }

  set userId(int id) {
    _userId = id;
  }

  void clear() {
    _token = null;
    _userId = null;
  }

  String? get token {
    // final data = ((_token?.contains('Bearer') ?? false) && _token != null)
    //     ? _token!
    //     : 'Bearer $_token';
    return _token;
  }

  int get userId {
    if (_userId == null) {
      throw ArgumentError.value(_userId);
    }
    return _userId!;
  }

  // Map<String, String> get authHeader => {'Authorization': asAuthToken};

  // String get asAuthToken =>
  //    ;
}
