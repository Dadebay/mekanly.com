import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

@immutable
final class BaseLogger {
  const BaseLogger._();

  static error([String? message]) {
    Logger().e(message);
  }

  static log([String? message]) {
    Logger().d(message);
  }

  static info([String? message]) {
    Logger().i(message);
  }

  static warning([String? message]) {
    Logger().w(message);
  }
}
