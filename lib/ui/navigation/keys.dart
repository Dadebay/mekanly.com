import 'package:flutter/material.dart';

class NavKey {
  static final GlobalKey<NavigatorState> mainKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeKey = GlobalKey();
  static final GlobalKey<NavigatorState> profileKey = GlobalKey();
  static final GlobalKey<NavigatorState> authKey = GlobalKey();
}
