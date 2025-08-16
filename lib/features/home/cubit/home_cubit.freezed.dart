// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
// ignore: strict_raw_type
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  List<BannerEntity>? get smallBanners => throw _privateConstructorUsedError;
  List<BannerEntity>? get bigBanners => throw _privateConstructorUsedError;
  List<TopAdsEntity>? get topAds => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<BannerEntity>? smallBanners,
      List<BannerEntity>? bigBanners,
      List<TopAdsEntity>? topAds});

  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? smallBanners = freezed,
    Object? bigBanners = freezed,
    Object? topAds = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      smallBanners: freezed == smallBanners
          ? _value.smallBanners
          : smallBanners // ignore: cast_nullable_to_non_nullable
              as List<BannerEntity>?,
      bigBanners: freezed == bigBanners
          ? _value.bigBanners
          : bigBanners // ignore: cast_nullable_to_non_nullable
              as List<BannerEntity>?,
      topAds: freezed == topAds
          ? _value.topAds
          : topAds // ignore: cast_nullable_to_non_nullable
              as List<TopAdsEntity>?,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      List<BannerEntity>? smallBanners,
      List<BannerEntity>? bigBanners,
      List<TopAdsEntity>? topAds});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? smallBanners = freezed,
    Object? bigBanners = freezed,
    Object? topAds = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      smallBanners: freezed == smallBanners
          ? _value._smallBanners
          : smallBanners // ignore: cast_nullable_to_non_nullable
              as List<BannerEntity>?,
      bigBanners: freezed == bigBanners
          ? _value._bigBanners
          : bigBanners // ignore: cast_nullable_to_non_nullable
              as List<BannerEntity>?,
      topAds: freezed == topAds
          ? _value._topAds
          : topAds // ignore: cast_nullable_to_non_nullable
              as List<TopAdsEntity>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.status = const BaseStatus.initial(),
      final List<BannerEntity>? smallBanners,
      final List<BannerEntity>? bigBanners,
      final List<TopAdsEntity>? topAds})
      : _smallBanners = smallBanners,
        _bigBanners = bigBanners,
        _topAds = topAds,
        super._();

// ignore: strict_raw_type
  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  final List<BannerEntity>? _smallBanners;
  @override
  List<BannerEntity>? get smallBanners {
    final value = _smallBanners;
    if (value == null) return null;
    if (_smallBanners is EqualUnmodifiableListView) return _smallBanners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BannerEntity>? _bigBanners;
  @override
  List<BannerEntity>? get bigBanners {
    final value = _bigBanners;
    if (value == null) return null;
    if (_bigBanners is EqualUnmodifiableListView) return _bigBanners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TopAdsEntity>? _topAds;
  @override
  List<TopAdsEntity>? get topAds {
    final value = _topAds;
    if (value == null) return null;
    if (_topAds is EqualUnmodifiableListView) return _topAds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(status: $status, smallBanners: $smallBanners, bigBanners: $bigBanners, topAds: $topAds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._smallBanners, _smallBanners) &&
            const DeepCollectionEquality()
                .equals(other._bigBanners, _bigBanners) &&
            const DeepCollectionEquality().equals(other._topAds, _topAds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_smallBanners),
      const DeepCollectionEquality().hash(_bigBanners),
      const DeepCollectionEquality().hash(_topAds));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final BaseStatus<dynamic> status,
      final List<BannerEntity>? smallBanners,
      final List<BannerEntity>? bigBanners,
      final List<TopAdsEntity>? topAds}) = _$HomeStateImpl;
  const _HomeState._() : super._();

// ignore: strict_raw_type
  @override
  BaseStatus<dynamic> get status;
  @override
  List<BannerEntity>? get smallBanners;
  @override
  List<BannerEntity>? get bigBanners;
  @override
  List<TopAdsEntity>? get topAds;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
