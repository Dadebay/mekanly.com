// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FcmPayload _$FcmPayloadFromJson(Map<String, dynamic> json) {
  return _FcmPayload.fromJson(json);
}

/// @nodoc
mixin _$FcmPayload {
  @JsonKey(name: 'device_info')
  String get deviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_token')
  String get deviceToken => throw _privateConstructorUsedError;

  /// Serializes this FcmPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FcmPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FcmPayloadCopyWith<FcmPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmPayloadCopyWith<$Res> {
  factory $FcmPayloadCopyWith(
          FcmPayload value, $Res Function(FcmPayload) then) =
      _$FcmPayloadCopyWithImpl<$Res, FcmPayload>;
  @useResult
  $Res call(
      {@JsonKey(name: 'device_info') String deviceInfo,
      @JsonKey(name: 'device_token') String deviceToken});
}

/// @nodoc
class _$FcmPayloadCopyWithImpl<$Res, $Val extends FcmPayload>
    implements $FcmPayloadCopyWith<$Res> {
  _$FcmPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FcmPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = null,
    Object? deviceToken = null,
  }) {
    return _then(_value.copyWith(
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FcmPayloadImplCopyWith<$Res>
    implements $FcmPayloadCopyWith<$Res> {
  factory _$$FcmPayloadImplCopyWith(
          _$FcmPayloadImpl value, $Res Function(_$FcmPayloadImpl) then) =
      __$$FcmPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'device_info') String deviceInfo,
      @JsonKey(name: 'device_token') String deviceToken});
}

/// @nodoc
class __$$FcmPayloadImplCopyWithImpl<$Res>
    extends _$FcmPayloadCopyWithImpl<$Res, _$FcmPayloadImpl>
    implements _$$FcmPayloadImplCopyWith<$Res> {
  __$$FcmPayloadImplCopyWithImpl(
      _$FcmPayloadImpl _value, $Res Function(_$FcmPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of FcmPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = null,
    Object? deviceToken = null,
  }) {
    return _then(_$FcmPayloadImpl(
      deviceInfo: null == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmPayloadImpl implements _FcmPayload {
  const _$FcmPayloadImpl(
      {@JsonKey(name: 'device_info') required this.deviceInfo,
      @JsonKey(name: 'device_token') required this.deviceToken});

  factory _$FcmPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmPayloadImplFromJson(json);

  @override
  @JsonKey(name: 'device_info')
  final String deviceInfo;
  @override
  @JsonKey(name: 'device_token')
  final String deviceToken;

  @override
  String toString() {
    return 'FcmPayload(deviceInfo: $deviceInfo, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmPayloadImpl &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, deviceInfo, deviceToken);

  /// Create a copy of FcmPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmPayloadImplCopyWith<_$FcmPayloadImpl> get copyWith =>
      __$$FcmPayloadImplCopyWithImpl<_$FcmPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmPayloadImplToJson(
      this,
    );
  }
}

abstract class _FcmPayload implements FcmPayload {
  const factory _FcmPayload(
          {@JsonKey(name: 'device_info') required final String deviceInfo,
          @JsonKey(name: 'device_token') required final String deviceToken}) =
      _$FcmPayloadImpl;

  factory _FcmPayload.fromJson(Map<String, dynamic> json) =
      _$FcmPayloadImpl.fromJson;

  @override
  @JsonKey(name: 'device_info')
  String get deviceInfo;
  @override
  @JsonKey(name: 'device_token')
  String get deviceToken;

  /// Create a copy of FcmPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FcmPayloadImplCopyWith<_$FcmPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
