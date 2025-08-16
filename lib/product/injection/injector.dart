import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injector.config.dart';

final GetIt injector = GetIt.instance;

@InjectableInit(
  initializerName: 'initialize', // Default
  preferRelativeImports: true, // Default
  asExtension: true, // Default
)
Future<void> configureDependencies() async => injector.initialize();

