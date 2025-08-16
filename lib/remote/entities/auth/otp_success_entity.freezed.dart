// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_success_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpSuccessEntity _$OtpSuccessEntityFromJson(Map<String, dynamic> json) {
  return _OtpSuccessEntity.fromJson(json);
}

/// @nodoc
mixin _$OtpSuccessEntity {
  String get message => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Serializes this OtpSuccessEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpSuccessEntityCopyWith<OtpSuccessEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpSuccessEntityCopyWith<$Res> {
  factory $OtpSuccessEntityCopyWith(
          OtpSuccessEntity value, $Res Function(OtpSuccessEntity) then) =
      _$OtpSuccessEntityCopyWithImpl<$Res, OtpSuccessEntity>;
  @useResult
  $Res call({String message, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$OtpSuccessEntityCopyWithImpl<$Res, $Val extends OtpSuccessEntity>
    implements $OtpSuccessEntityCopyWith<$Res> {
  _$OtpSuccessEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpSuccessEntity
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

  /// Create a copy of OtpSuccessEntity
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
abstract class _$$OtpSuccessEntityImplCopyWith<$Res>
    implements $OtpSuccessEntityCopyWith<$Res> {
  factory _$$OtpSuccessEntityImplCopyWith(_$OtpSuccessEntityImpl value,
          $Res Function(_$OtpSuccessEntityImpl) then) =
      __$$OtpSuccessEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$OtpSuccessEntityImplCopyWithImpl<$Res>
    extends _$OtpSuccessEntityCopyWithImpl<$Res, _$OtpSuccessEntityImpl>
    implements _$$OtpSuccessEntityImplCopyWith<$Res> {
  __$$OtpSuccessEntityImplCopyWithImpl(_$OtpSuccessEntityImpl _value,
      $Res Function(_$OtpSuccessEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = null,
  }) {
    return _then(_$OtpSuccessEntityImpl(
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
class _$OtpSuccessEntityImpl implements _OtpSuccessEntity {
  const _$OtpSuccessEntityImpl({required this.message, required this.user});

  factory _$OtpSuccessEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpSuccessEntityImplFromJson(json);

  @override
  final String message;
  @override
  final User user;

  @override
  String toString() {
    return 'OtpSuccessEntity(message: $message, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSuccessEntityImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, user);

  /// Create a copy of OtpSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSuccessEntityImplCopyWith<_$OtpSuccessEntityImpl> get copyWith =>
      __$$OtpSuccessEntityImplCopyWithImpl<_$OtpSuccessEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpSuccessEntityImplToJson(
      this,
    );
  }
}

abstract class _OtpSuccessEntity implements OtpSuccessEntity {
  const factory _OtpSuccessEntity(
      {required final String message,
      required final User user}) = _$OtpSuccessEntityImpl;

  factory _OtpSuccessEntity.fromJson(Map<String, dynamic> json) =
      _$OtpSuccessEntityImpl.fromJson;

  @override
  String get message;
  @override
  User get user;

  /// Create a copy of OtpSuccessEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpSuccessEntityImplCopyWith<_$OtpSuccessEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
