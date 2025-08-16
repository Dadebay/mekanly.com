import '../../remote/entities/global_options/global_options.dart';

class BaseGlobalData {
  BaseGlobalData._internal();
  static final instance = BaseGlobalData._internal();

  GlobalOptions? _data;

  set filter(GlobalOptions? data) {
    _data = data;
  }

  GlobalOptions? get filter => _data;
}
