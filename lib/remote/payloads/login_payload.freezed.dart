// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginPayload _$LoginPayloadFromJson(Map<String, dynamic> json) {
  return _LoginPayload.fromJson(json);
}

/// @nodoc
mixin _$LoginPayload {
  String get phone => throw _privateConstructorUsedError;

  /// Serializes this LoginPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginPayloadCopyWith<LoginPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPayloadCopyWith<$Res> {
  factory $LoginPayloadCopyWith(
          LoginPayload value, $Res Function(LoginPayload) then) =
      _$LoginPayloadCopyWithImpl<$Res, LoginPayload>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$LoginPayloadCopyWithImpl<$Res, $Val extends LoginPayload>
    implements $LoginPayloadCopyWith<$Res> {
  _$LoginPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginPayloadImplCopyWith<$Res>
    implements $LoginPayloadCopyWith<$Res> {
  factory _$$LoginPayloadImplCopyWith(
          _$LoginPayloadImpl value, $Res Function(_$LoginPayloadImpl) then) =
      __$$LoginPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$LoginPayloadImplCopyWithImpl<$Res>
    extends _$LoginPayloadCopyWithImpl<$Res, _$LoginPayloadImpl>
    implements _$$LoginPayloadImplCopyWith<$Res> {
  __$$LoginPayloadImplCopyWithImpl(
      _$LoginPayloadImpl _value, $Res Function(_$LoginPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$LoginPayloadImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginPayloadImpl implements _LoginPayload {
  const _$LoginPayloadImpl({required this.phone});

  factory _$LoginPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginPayloadImplFromJson(json);

  @override
  final String phone;

  @override
  String toString() {
    return 'LoginPayload(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginPayloadImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of LoginPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginPayloadImplCopyWith<_$LoginPayloadImpl> get copyWith =>
      __$$LoginPayloadImplCopyWithImpl<_$LoginPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginPayloadImplToJson(
      this,
    );
  }
}

abstract class _LoginPayload implements LoginPayload {
  const factory _LoginPayload({required final String phone}) =
      _$LoginPayloadImpl;

  factory _LoginPayload.fromJson(Map<String, dynamic> json) =
      _$LoginPayloadImpl.fromJson;

  @override
  String get phone;

  /// Create a copy of LoginPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginPayloadImplCopyWith<_$LoginPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
