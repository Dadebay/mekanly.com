// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_ads_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopAdsResponse _$TopAdsResponseFromJson(Map<String, dynamic> json) {
  return _TopAdsResponse.fromJson(json);
}

/// @nodoc
mixin _$TopAdsResponse {
  @JsonKey(name: 'data')
  List<TopAdsEntity>? get topAds => throw _privateConstructorUsedError;

  /// Serializes this TopAdsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopAdsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopAdsResponseCopyWith<TopAdsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAdsResponseCopyWith<$Res> {
  factory $TopAdsResponseCopyWith(
          TopAdsResponse value, $Res Function(TopAdsResponse) then) =
      _$TopAdsResponseCopyWithImpl<$Res, TopAdsResponse>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<TopAdsEntity>? topAds});
}

/// @nodoc
class _$TopAdsResponseCopyWithImpl<$Res, $Val extends TopAdsResponse>
    implements $TopAdsResponseCopyWith<$Res> {
  _$TopAdsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopAdsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topAds = freezed,
  }) {
    return _then(_value.copyWith(
      topAds: freezed == topAds
          ? _value.topAds
          : topAds // ignore: cast_nullable_to_non_nullable
              as List<TopAdsEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopAdsResponseImplCopyWith<$Res>
    implements $TopAdsResponseCopyWith<$Res> {
  factory _$$TopAdsResponseImplCopyWith(_$TopAdsResponseImpl value,
          $Res Function(_$TopAdsResponseImpl) then) =
      __$$TopAdsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<TopAdsEntity>? topAds});
}

/// @nodoc
class __$$TopAdsResponseImplCopyWithImpl<$Res>
    extends _$TopAdsResponseCopyWithImpl<$Res, _$TopAdsResponseImpl>
    implements _$$TopAdsResponseImplCopyWith<$Res> {
  __$$TopAdsResponseImplCopyWithImpl(
      _$TopAdsResponseImpl _value, $Res Function(_$TopAdsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopAdsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topAds = freezed,
  }) {
    return _then(_$TopAdsResponseImpl(
      topAds: freezed == topAds
          ? _value._topAds
          : topAds // ignore: cast_nullable_to_non_nullable
              as List<TopAdsEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopAdsResponseImpl implements _TopAdsResponse {
  const _$TopAdsResponseImpl(
      {@JsonKey(name: 'data') final List<TopAdsEntity>? topAds})
      : _topAds = topAds;

  factory _$TopAdsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopAdsResponseImplFromJson(json);

  final List<TopAdsEntity>? _topAds;
  @override
  @JsonKey(name: 'data')
  List<TopAdsEntity>? get topAds {
    final value = _topAds;
    if (value == null) return null;
    if (_topAds is EqualUnmodifiableListView) return _topAds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TopAdsResponse(topAds: $topAds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAdsResponseImpl &&
            const DeepCollectionEquality().equals(other._topAds, _topAds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_topAds));

  /// Create a copy of TopAdsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopAdsResponseImplCopyWith<_$TopAdsResponseImpl> get copyWith =>
      __$$TopAdsResponseImplCopyWithImpl<_$TopAdsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopAdsResponseImplToJson(
      this,
    );
  }
}

abstract class _TopAdsResponse implements TopAdsResponse {
  const factory _TopAdsResponse(
          {@JsonKey(name: 'data') final List<TopAdsEntity>? topAds}) =
      _$TopAdsResponseImpl;

  factory _TopAdsResponse.fromJson(Map<String, dynamic> json) =
      _$TopAdsResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<TopAdsEntity>? get topAds;

  /// Create a copy of TopAdsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopAdsResponseImplCopyWith<_$TopAdsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
