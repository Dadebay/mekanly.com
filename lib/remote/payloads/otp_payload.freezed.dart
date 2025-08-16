// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpPayload _$OtpPayloadFromJson(Map<String, dynamic> json) {
  return _OtpPayload.fromJson(json);
}

/// @nodoc
mixin _$OtpPayload {
  String get phone => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this OtpPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpPayloadCopyWith<OtpPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpPayloadCopyWith<$Res> {
  factory $OtpPayloadCopyWith(
          OtpPayload value, $Res Function(OtpPayload) then) =
      _$OtpPayloadCopyWithImpl<$Res, OtpPayload>;
  @useResult
  $Res call({String phone, String token, String code});
}

/// @nodoc
class _$OtpPayloadCopyWithImpl<$Res, $Val extends OtpPayload>
    implements $OtpPayloadCopyWith<$Res> {
  _$OtpPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? token = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpPayloadImplCopyWith<$Res>
    implements $OtpPayloadCopyWith<$Res> {
  factory _$$OtpPayloadImplCopyWith(
          _$OtpPayloadImpl value, $Res Function(_$OtpPayloadImpl) then) =
      __$$OtpPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String token, String code});
}

/// @nodoc
class __$$OtpPayloadImplCopyWithImpl<$Res>
    extends _$OtpPayloadCopyWithImpl<$Res, _$OtpPayloadImpl>
    implements _$$OtpPayloadImplCopyWith<$Res> {
  __$$OtpPayloadImplCopyWithImpl(
      _$OtpPayloadImpl _value, $Res Function(_$OtpPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
    Object? token = null,
    Object? code = null,
  }) {
    return _then(_$OtpPayloadImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpPayloadImpl implements _OtpPayload {
  const _$OtpPayloadImpl(
      {required this.phone, required this.token, required this.code});

  factory _$OtpPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpPayloadImplFromJson(json);

  @override
  final String phone;
  @override
  final String token;
  @override
  final String code;

  @override
  String toString() {
    return 'OtpPayload(phone: $phone, token: $token, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpPayloadImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone, token, code);

  /// Create a copy of OtpPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpPayloadImplCopyWith<_$OtpPayloadImpl> get copyWith =>
      __$$OtpPayloadImplCopyWithImpl<_$OtpPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpPayloadImplToJson(
      this,
    );
  }
}

abstract class _OtpPayload implements OtpPayload {
  const factory _OtpPayload(
      {required final String phone,
      required final String token,
      required final String code}) = _$OtpPayloadImpl;

  factory _OtpPayload.fromJson(Map<String, dynamic> json) =
      _$OtpPayloadImpl.fromJson;

  @override
  String get phone;
  @override
  String get token;
  @override
  String get code;

  /// Create a copy of OtpPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpPayloadImplCopyWith<_$OtpPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
