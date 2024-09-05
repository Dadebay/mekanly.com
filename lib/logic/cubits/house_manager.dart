import 'package:shared_preferences/shared_preferences.dart';

import '../../config/const.dart';

class HouseManager {
  static const String editPrefix = "edit_";
  static const String moveForwardPrefix = "moveForward_";

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> clearAllData() async {
    final SharedPreferences prefs = await _prefs;
    Set<String> keysToRemove = prefs.getKeys().where((key) => key.startsWith(editPrefix) || key.startsWith(moveForwardPrefix)).toSet();

    for (String key in keysToRemove) {
      logger('KEY:  ${await SharedPreferences.getInstance().then((value) => value.getString(key))}');
      await prefs.remove(key);
    }
  }

  Future<void> _setTimestamp(String key, DateTime timestamp) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, timestamp.toIso8601String());
  }

  Future<DateTime?> _getTimestamp(String key) async {
    final SharedPreferences prefs = await _prefs;
    String? timestampString = prefs.getString(key);
    if (timestampString == null) return null;
    return DateTime.parse(timestampString);
  }

  Future<bool> canEditHouse(String houseId) async {
    DateTime? lastEditTime = await _getTimestamp(editPrefix + houseId);
    if (lastEditTime == null) return true;
    return DateTime.now().difference(lastEditTime).inHours >= 12;
  }

  Future<void> updateEditTimestamp(String houseId) async {
    await _setTimestamp(editPrefix + houseId, DateTime.now());
  }

  Future<bool> canMoveForward(String houseId) async {
    DateTime? lastMoveForwardTime = await _getTimestamp(moveForwardPrefix + houseId);
    if (lastMoveForwardTime == null) return true;
    return DateTime.now().difference(lastMoveForwardTime).inDays >= 3;
  }

  Future<void> updateMoveForwardTimestamp(String houseId) async {
    await _setTimestamp(moveForwardPrefix + houseId, DateTime.now());
  }

  Future<Duration?> getRemainingEditTime(String houseId) async {
    DateTime? lastEditTime = await _getTimestamp(editPrefix + houseId);
    if (lastEditTime == null) return null;
    Duration difference = DateTime.now().difference(lastEditTime);
    if (difference.inHours >= 12) return Duration.zero;
    return const Duration(hours: 12) - difference;
  }

  Future<Duration?> getRemainingMoveForwardTime(String houseId) async {
    DateTime? lastMoveForwardTime = await _getTimestamp(moveForwardPrefix + houseId);
    if (lastMoveForwardTime == null) return null;
    Duration difference = DateTime.now().difference(lastMoveForwardTime);
    if (difference.inDays >= 3) return Duration.zero;
    return const Duration(days: 3) - difference;
  }
}
