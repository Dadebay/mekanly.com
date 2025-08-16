import 'package:freezed_annotation/freezed_annotation.dart';

import '../user.dart';

part 'login_success_entity.freezed.dart';
part 'login_success_entity.g.dart';

@freezed
class LoginSuccessEntity with _$LoginSuccessEntity {
  const factory LoginSuccessEntity({
    required String message,
    required User user,
  }) = _LoginSuccessEntity;

  @JsonSerializable(explicitToJson: true)
  factory LoginSuccessEntity.fromJson(Map<String, dynamic> json) =>
      _$LoginSuccessEntityFromJson(json);
}
