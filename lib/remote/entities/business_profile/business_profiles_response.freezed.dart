// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profiles_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessProfilesResponse _$BusinessProfilesResponseFromJson(
    Map<String, dynamic> json) {
  return _BusinessProfilesResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfilesResponse {
  List<BusinessProfileEntity>? get data => throw _privateConstructorUsedError;

  /// Serializes this BusinessProfilesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfilesResponseCopyWith<BusinessProfilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfilesResponseCopyWith<$Res> {
  factory $BusinessProfilesResponseCopyWith(BusinessProfilesResponse value,
          $Res Function(BusinessProfilesResponse) then) =
      _$BusinessProfilesResponseCopyWithImpl<$Res, BusinessProfilesResponse>;
  @useResult
  $Res call({List<BusinessProfileEntity>? data});
}

/// @nodoc
class _$BusinessProfilesResponseCopyWithImpl<$Res,
        $Val extends BusinessProfilesResponse>
    implements $BusinessProfilesResponseCopyWith<$Res> {
  _$BusinessProfilesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BusinessProfileEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessProfilesResponseImplCopyWith<$Res>
    implements $BusinessProfilesResponseCopyWith<$Res> {
  factory _$$BusinessProfilesResponseImplCopyWith(
          _$BusinessProfilesResponseImpl value,
          $Res Function(_$BusinessProfilesResponseImpl) then) =
      __$$BusinessProfilesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BusinessProfileEntity>? data});
}

/// @nodoc
class __$$BusinessProfilesResponseImplCopyWithImpl<$Res>
    extends _$BusinessProfilesResponseCopyWithImpl<$Res,
        _$BusinessProfilesResponseImpl>
    implements _$$BusinessProfilesResponseImplCopyWith<$Res> {
  __$$BusinessProfilesResponseImplCopyWithImpl(
      _$BusinessProfilesResponseImpl _value,
      $Res Function(_$BusinessProfilesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BusinessProfilesResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BusinessProfileEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfilesResponseImpl implements _BusinessProfilesResponse {
  const _$BusinessProfilesResponseImpl(
      {final List<BusinessProfileEntity>? data})
      : _data = data;

  factory _$BusinessProfilesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessProfilesResponseImplFromJson(json);

  final List<BusinessProfileEntity>? _data;
  @override
  List<BusinessProfileEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BusinessProfilesResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfilesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BusinessProfilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfilesResponseImplCopyWith<_$BusinessProfilesResponseImpl>
      get copyWith => __$$BusinessProfilesResponseImplCopyWithImpl<
          _$BusinessProfilesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfilesResponseImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfilesResponse implements BusinessProfilesResponse {
  const factory _BusinessProfilesResponse(
          {final List<BusinessProfileEntity>? data}) =
      _$BusinessProfilesResponseImpl;

  factory _BusinessProfilesResponse.fromJson(Map<String, dynamic> json) =
      _$BusinessProfilesResponseImpl.fromJson;

  @override
  List<BusinessProfileEntity>? get data;

  /// Create a copy of BusinessProfilesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfilesResponseImplCopyWith<_$BusinessProfilesResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
