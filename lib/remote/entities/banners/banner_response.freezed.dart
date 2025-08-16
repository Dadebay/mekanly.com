// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) {
  return _BannerResponse.fromJson(json);
}

/// @nodoc
mixin _$BannerResponse {
  @JsonKey(name: 'data')
  List<BannerEntity>? get banners => throw _privateConstructorUsedError;

  /// Serializes this BannerResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BannerResponseCopyWith<BannerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerResponseCopyWith<$Res> {
  factory $BannerResponseCopyWith(
          BannerResponse value, $Res Function(BannerResponse) then) =
      _$BannerResponseCopyWithImpl<$Res, BannerResponse>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<BannerEntity>? banners});
}

/// @nodoc
class _$BannerResponseCopyWithImpl<$Res, $Val extends BannerResponse>
    implements $BannerResponseCopyWith<$Res> {
  _$BannerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_value.copyWith(
      banners: freezed == banners
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerResponseImplCopyWith<$Res>
    implements $BannerResponseCopyWith<$Res> {
  factory _$$BannerResponseImplCopyWith(_$BannerResponseImpl value,
          $Res Function(_$BannerResponseImpl) then) =
      __$$BannerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<BannerEntity>? banners});
}

/// @nodoc
class __$$BannerResponseImplCopyWithImpl<$Res>
    extends _$BannerResponseCopyWithImpl<$Res, _$BannerResponseImpl>
    implements _$$BannerResponseImplCopyWith<$Res> {
  __$$BannerResponseImplCopyWithImpl(
      _$BannerResponseImpl _value, $Res Function(_$BannerResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banners = freezed,
  }) {
    return _then(_$BannerResponseImpl(
      banners: freezed == banners
          ? _value._banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<BannerEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerResponseImpl implements _BannerResponse {
  const _$BannerResponseImpl(
      {@JsonKey(name: 'data') final List<BannerEntity>? banners})
      : _banners = banners;

  factory _$BannerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerResponseImplFromJson(json);

  final List<BannerEntity>? _banners;
  @override
  @JsonKey(name: 'data')
  List<BannerEntity>? get banners {
    final value = _banners;
    if (value == null) return null;
    if (_banners is EqualUnmodifiableListView) return _banners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BannerResponse(banners: $banners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerResponseImpl &&
            const DeepCollectionEquality().equals(other._banners, _banners));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_banners));

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerResponseImplCopyWith<_$BannerResponseImpl> get copyWith =>
      __$$BannerResponseImplCopyWithImpl<_$BannerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerResponseImplToJson(
      this,
    );
  }
}

abstract class _BannerResponse implements BannerResponse {
  const factory _BannerResponse(
          {@JsonKey(name: 'data') final List<BannerEntity>? banners}) =
      _$BannerResponseImpl;

  factory _BannerResponse.fromJson(Map<String, dynamic> json) =
      _$BannerResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<BannerEntity>? get banners;

  /// Create a copy of BannerResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BannerResponseImplCopyWith<_$BannerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
