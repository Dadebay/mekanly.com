// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_success_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginSuccessEntity _$LoginSuccessEntityFromJson(Map<String, dynamic> json) {
  return _LoginSuccessEntity.fromJson(json);
}

/// @nodoc
mixin _$LoginSuccessEntity {
  String get message => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Serializes this LoginSuccessEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginSuccessEntityCopyWith<LoginSuccessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessEntityCopyWith<$Res> {
  factory $LoginSuccessEntityCopyWith(
          LoginSuccessEntity value, $Res Function(LoginSuccessEntity) then) =
      _$LoginSuccessEntityCopyWithImpl<$Res, LoginSuccessEntity>;
  @useResult
  $Res call({String message, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoginSuccessEntityCopyWithImpl<$Res, $Val extends LoginSuccessEntity>
    implements $LoginSuccessEntityCopyWith<$Res> {
  _$LoginSuccessEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginSuccessEntityImplCopyWith<$Res>
    implements $LoginSuccessEntityCopyWith<$Res> {
  factory _$$LoginSuccessEntityImplCopyWith(_$LoginSuccessEntityImpl value,
          $Res Function(_$LoginSuccessEntityImpl) then) =
      __$$LoginSuccessEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoginSuccessEntityImplCopyWithImpl<$Res>
    extends _$LoginSuccessEntityCopyWithImpl<$Res, _$LoginSuccessEntityImpl>
    implements _$$LoginSuccessEntityImplCopyWith<$Res> {
  __$$LoginSuccessEntityImplCopyWithImpl(_$LoginSuccessEntityImpl _value,
      $Res Function(_$LoginSuccessEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_$LoginSuccessEntityImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginSuccessEntityImpl implements _LoginSuccessEntity {
  const _$LoginSuccessEntityImpl({required this.message, required this.user});

  factory _$LoginSuccessEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginSuccessEntityImplFromJson(json);

  @override
  final String message;
  @override
  final User user;

  @override
  String toString() {
    return 'LoginSuccessEntity(message: $message, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessEntityImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, user);

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessEntityImplCopyWith<_$LoginSuccessEntityImpl> get copyWith =>
      __$$LoginSuccessEntityImplCopyWithImpl<_$LoginSuccessEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginSuccessEntityImplToJson(
      this,
    );
  }
}

abstract class _LoginSuccessEntity implements LoginSuccessEntity {
  const factory _LoginSuccessEntity(
      {required final String message,
      required final User user}) = _$LoginSuccessEntityImpl;

  factory _LoginSuccessEntity.fromJson(Map<String, dynamic> json) =
      _$LoginSuccessEntityImpl.fromJson;

  @override
  String get message;
  @override
  User get user;

  /// Create a copy of LoginSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessEntityImplCopyWith<_$LoginSuccessEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
