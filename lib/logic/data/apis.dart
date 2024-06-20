class Urls {
  // static const String _mainUrl = 'http://127.0.0.1:8000/api';
  // static const String _mainUrl = 'http://216.250.10.136:88/api';
  static const String _mainUrl = 'https://mekanly.com.tm/api';

  static const login = '$_mainUrl/login';
  static const register = '$_mainUrl/register';
  static const getProfile = '$_mainUrl/v1/profile';
  static const logout = '$_mainUrl/v1/logout';

  static const addHouse = '$_mainUrl/v1/houses/add';
  static const userHouses = '$_mainUrl/v1/user/houses';
  static const getAllComments = '$_mainUrl/v1/comments';
  static const getHouseComments = '$_mainUrl/v1/houses';
  static const commentHouse = '$_mainUrl/v1/houses';
  static const deleteHouse = '$_mainUrl/v1/houses';
  static const deleteComment = '$_mainUrl/v1/comment';
  static const updateHouse = '$_mainUrl/v1/houses';
  static const moveForward = '$_mainUrl/v1/houses';
  static const incrementView = '$_mainUrl/v1/houses';
  static const bron = '$_mainUrl/v1/houses';

  static const getCategories = '$_mainUrl/v1/categories';
  static const search = '$_mainUrl/v1/search';
  static const getAllHouses = '$_mainUrl/v1/houses';
  static const getRegions = '$_mainUrl/v1/locations';
  static const filter = '$_mainUrl/v1/filter';
}
