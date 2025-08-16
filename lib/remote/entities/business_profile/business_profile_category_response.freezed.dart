// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessProfileCategoryResponse _$BusinessProfileCategoryResponseFromJson(
    Map<String, dynamic> json) {
  return _BusinessProfileCategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileCategoryResponse {
  List<BusinessProfileCategoryEntity>? get data =>
      throw _privateConstructorUsedError;

  /// Serializes this BusinessProfileCategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileCategoryResponseCopyWith<BusinessProfileCategoryResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileCategoryResponseCopyWith<$Res> {
  factory $BusinessProfileCategoryResponseCopyWith(
          BusinessProfileCategoryResponse value,
          $Res Function(BusinessProfileCategoryResponse) then) =
      _$BusinessProfileCategoryResponseCopyWithImpl<$Res,
          BusinessProfileCategoryResponse>;
  @useResult
  $Res call({List<BusinessProfileCategoryEntity>? data});
}

/// @nodoc
class _$BusinessProfileCategoryResponseCopyWithImpl<$Res,
        $Val extends BusinessProfileCategoryResponse>
    implements $BusinessProfileCategoryResponseCopyWith<$Res> {
  _$BusinessProfileCategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileCategoryResponse
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
              as List<BusinessProfileCategoryEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessProfileCategoryResponseImplCopyWith<$Res>
    implements $BusinessProfileCategoryResponseCopyWith<$Res> {
  factory _$$BusinessProfileCategoryResponseImplCopyWith(
          _$BusinessProfileCategoryResponseImpl value,
          $Res Function(_$BusinessProfileCategoryResponseImpl) then) =
      __$$BusinessProfileCategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BusinessProfileCategoryEntity>? data});
}

/// @nodoc
class __$$BusinessProfileCategoryResponseImplCopyWithImpl<$Res>
    extends _$BusinessProfileCategoryResponseCopyWithImpl<$Res,
        _$BusinessProfileCategoryResponseImpl>
    implements _$$BusinessProfileCategoryResponseImplCopyWith<$Res> {
  __$$BusinessProfileCategoryResponseImplCopyWithImpl(
      _$BusinessProfileCategoryResponseImpl _value,
      $Res Function(_$BusinessProfileCategoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BusinessProfileCategoryResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BusinessProfileCategoryEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileCategoryResponseImpl
    implements _BusinessProfileCategoryResponse {
  const _$BusinessProfileCategoryResponseImpl(
      {final List<BusinessProfileCategoryEntity>? data})
      : _data = data;

  factory _$BusinessProfileCategoryResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessProfileCategoryResponseImplFromJson(json);

  final List<BusinessProfileCategoryEntity>? _data;
  @override
  List<BusinessProfileCategoryEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BusinessProfileCategoryResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileCategoryResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BusinessProfileCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileCategoryResponseImplCopyWith<
          _$BusinessProfileCategoryResponseImpl>
      get copyWith => __$$BusinessProfileCategoryResponseImplCopyWithImpl<
          _$BusinessProfileCategoryResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileCategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileCategoryResponse
    implements BusinessProfileCategoryResponse {
  const factory _BusinessProfileCategoryResponse(
          {final List<BusinessProfileCategoryEntity>? data}) =
      _$BusinessProfileCategoryResponseImpl;

  factory _BusinessProfileCategoryResponse.fromJson(Map<String, dynamic> json) =
      _$BusinessProfileCategoryResponseImpl.fromJson;

  @override
  List<BusinessProfileCategoryEntity>? get data;

  /// Create a copy of BusinessProfileCategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileCategoryResponseImplCopyWith<
          _$BusinessProfileCategoryResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
