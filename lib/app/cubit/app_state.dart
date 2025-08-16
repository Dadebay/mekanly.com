part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    Locale? locale,
    Key? key,
  }) = _AppState;
  const AppState._();
}
