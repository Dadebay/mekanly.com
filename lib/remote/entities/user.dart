import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int id,
    String? phone,
    String? username,
    String? role,
    String? token,
    int? shopId,
    DateTime? vipExpire,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _User;

  @JsonSerializable(explicitToJson: true)
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// extension Type on User {
//   String get type {
//     final userType = <String>[];
//     if (isEmployed == true) {
//       userType.add('Employed');
//     }
//     if (isSelfEmployed == true) {
//       userType.add('Self Employed');
//     }

//     return userType.isEmpty ? '-' : userType.join(', ');
//   }
// }
