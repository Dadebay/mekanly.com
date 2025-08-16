// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentEventCopyWith<$Res> {
  factory $ContentEventCopyWith(
          ContentEvent value, $Res Function(ContentEvent) then) =
      _$ContentEventCopyWithImpl<$Res, ContentEvent>;
}

/// @nodoc
class _$ContentEventCopyWithImpl<$Res, $Val extends ContentEvent>
    implements $ContentEventCopyWith<$Res> {
  _$ContentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$ContentEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'ContentEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ContentEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
mixin _$ContentState {
// ignore: inference_failure_on_instance_creation, strict_raw_type
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  GlobalOptions? get globalOptions => throw _privateConstructorUsedError;
  List<UserHouse>? get userHouses => throw _privateConstructorUsedError;
  List<UserProductCategory>? get productCategories =>
      throw _privateConstructorUsedError;

  /// Create a copy of ContentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentStateCopyWith<ContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStateCopyWith<$Res> {
  factory $ContentStateCopyWith(
          ContentState value, $Res Function(ContentState) then) =
      _$ContentStateCopyWithImpl<$Res, ContentState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      GlobalOptions? globalOptions,
      List<UserHouse>? userHouses,
      List<UserProductCategory>? productCategories});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $GlobalOptionsCopyWith<$Res>? get globalOptions;
}

/// @nodoc
class _$ContentStateCopyWithImpl<$Res, $Val extends ContentState>
    implements $ContentStateCopyWith<$Res> {
  _$ContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? globalOptions = freezed,
    Object? userHouses = freezed,
    Object? productCategories = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      globalOptions: freezed == globalOptions
          ? _value.globalOptions
          : globalOptions // ignore: cast_nullable_to_non_nullable
              as GlobalOptions?,
      userHouses: freezed == userHouses
          ? _value.userHouses
          : userHouses // ignore: cast_nullable_to_non_nullable
              as List<UserHouse>?,
      productCategories: freezed == productCategories
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<UserProductCategory>?,
    ) as $Val);
  }

  /// Create a copy of ContentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ContentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GlobalOptionsCopyWith<$Res>? get globalOptions {
    if (_value.globalOptions == null) {
      return null;
    }

    return $GlobalOptionsCopyWith<$Res>(_value.globalOptions!, (value) {
      return _then(_value.copyWith(globalOptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentStateImplCopyWith<$Res>
    implements $ContentStateCopyWith<$Res> {
  factory _$$ContentStateImplCopyWith(
          _$ContentStateImpl value, $Res Function(_$ContentStateImpl) then) =
      __$$ContentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      GlobalOptions? globalOptions,
      List<UserHouse>? userHouses,
      List<UserProductCategory>? productCategories});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $GlobalOptionsCopyWith<$Res>? get globalOptions;
}

/// @nodoc
class __$$ContentStateImplCopyWithImpl<$Res>
    extends _$ContentStateCopyWithImpl<$Res, _$ContentStateImpl>
    implements _$$ContentStateImplCopyWith<$Res> {
  __$$ContentStateImplCopyWithImpl(
      _$ContentStateImpl _value, $Res Function(_$ContentStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? globalOptions = freezed,
    Object? userHouses = freezed,
    Object? productCategories = freezed,
  }) {
    return _then(_$ContentStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      globalOptions: freezed == globalOptions
          ? _value.globalOptions
          : globalOptions // ignore: cast_nullable_to_non_nullable
              as GlobalOptions?,
      userHouses: freezed == userHouses
          ? _value._userHouses
          : userHouses // ignore: cast_nullable_to_non_nullable
              as List<UserHouse>?,
      productCategories: freezed == productCategories
          ? _value._productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<UserProductCategory>?,
    ));
  }
}

/// @nodoc

class _$ContentStateImpl extends _ContentState {
  const _$ContentStateImpl(
      {this.status = const BaseStatus.initial(),
      this.globalOptions,
      final List<UserHouse>? userHouses,
      final List<UserProductCategory>? productCategories})
      : _userHouses = userHouses,
        _productCategories = productCategories,
        super._();

// ignore: inference_failure_on_instance_creation, strict_raw_type
  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  final GlobalOptions? globalOptions;
  final List<UserHouse>? _userHouses;
  @override
  List<UserHouse>? get userHouses {
    final value = _userHouses;
    if (value == null) return null;
    if (_userHouses is EqualUnmodifiableListView) return _userHouses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserProductCategory>? _productCategories;
  @override
  List<UserProductCategory>? get productCategories {
    final value = _productCategories;
    if (value == null) return null;
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContentState(status: $status, globalOptions: $globalOptions, userHouses: $userHouses, productCategories: $productCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.globalOptions, globalOptions) ||
                other.globalOptions == globalOptions) &&
            const DeepCollectionEquality()
                .equals(other._userHouses, _userHouses) &&
            const DeepCollectionEquality()
                .equals(other._productCategories, _productCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      globalOptions,
      const DeepCollectionEquality().hash(_userHouses),
      const DeepCollectionEquality().hash(_productCategories));

  /// Create a copy of ContentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentStateImplCopyWith<_$ContentStateImpl> get copyWith =>
      __$$ContentStateImplCopyWithImpl<_$ContentStateImpl>(this, _$identity);
}

abstract class _ContentState extends ContentState {
  const factory _ContentState(
      {final BaseStatus<dynamic> status,
      final GlobalOptions? globalOptions,
      final List<UserHouse>? userHouses,
      final List<UserProductCategory>? productCategories}) = _$ContentStateImpl;
  const _ContentState._() : super._();

// ignore: inference_failure_on_instance_creation, strict_raw_type
  @override
  BaseStatus<dynamic> get status;
  @override
  GlobalOptions? get globalOptions;
  @override
  List<UserHouse>? get userHouses;
  @override
  List<UserProductCategory>? get productCategories;

  /// Create a copy of ContentState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentStateImplCopyWith<_$ContentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
