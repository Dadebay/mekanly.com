// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_business_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserBusinessProfileEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
    required TResult Function(int id, ProductCategory ctg) getProductsByCtg,
    required TResult Function(int id, int categoryId) getProducts,
    required TResult Function(int id, int categoryId) getHouseProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult? Function(int id, int categoryId)? getProducts,
    TResult? Function(int id, int categoryId)? getHouseProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult Function(int id, int categoryId)? getProducts,
    TResult Function(int id, int categoryId)? getHouseProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inited value) init,
    required TResult Function(_GetProductsByCtg value) getProductsByCtg,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetHouseProducts value) getHouseProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inited value)? init,
    TResult? Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetHouseProducts value)? getHouseProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inited value)? init,
    TResult Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetHouseProducts value)? getHouseProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBusinessProfileEventCopyWith<UserBusinessProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBusinessProfileEventCopyWith<$Res> {
  factory $UserBusinessProfileEventCopyWith(UserBusinessProfileEvent value,
          $Res Function(UserBusinessProfileEvent) then) =
      _$UserBusinessProfileEventCopyWithImpl<$Res, UserBusinessProfileEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$UserBusinessProfileEventCopyWithImpl<$Res,
        $Val extends UserBusinessProfileEvent>
    implements $UserBusinessProfileEventCopyWith<$Res> {
  _$UserBusinessProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitedImplCopyWith<$Res>
    implements $UserBusinessProfileEventCopyWith<$Res> {
  factory _$$InitedImplCopyWith(
          _$InitedImpl value, $Res Function(_$InitedImpl) then) =
      __$$InitedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$InitedImplCopyWithImpl<$Res>
    extends _$UserBusinessProfileEventCopyWithImpl<$Res, _$InitedImpl>
    implements _$$InitedImplCopyWith<$Res> {
  __$$InitedImplCopyWithImpl(
      _$InitedImpl _value, $Res Function(_$InitedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$InitedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitedImpl implements _Inited {
  const _$InitedImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'UserBusinessProfileEvent.init(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitedImplCopyWith<_$InitedImpl> get copyWith =>
      __$$InitedImplCopyWithImpl<_$InitedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
    required TResult Function(int id, ProductCategory ctg) getProductsByCtg,
    required TResult Function(int id, int categoryId) getProducts,
    required TResult Function(int id, int categoryId) getHouseProducts,
  }) {
    return init(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult? Function(int id, int categoryId)? getProducts,
    TResult? Function(int id, int categoryId)? getHouseProducts,
  }) {
    return init?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult Function(int id, int categoryId)? getProducts,
    TResult Function(int id, int categoryId)? getHouseProducts,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inited value) init,
    required TResult Function(_GetProductsByCtg value) getProductsByCtg,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetHouseProducts value) getHouseProducts,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inited value)? init,
    TResult? Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetHouseProducts value)? getHouseProducts,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inited value)? init,
    TResult Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetHouseProducts value)? getHouseProducts,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Inited implements UserBusinessProfileEvent {
  const factory _Inited(final int id) = _$InitedImpl;

  @override
  int get id;

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitedImplCopyWith<_$InitedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsByCtgImplCopyWith<$Res>
    implements $UserBusinessProfileEventCopyWith<$Res> {
  factory _$$GetProductsByCtgImplCopyWith(_$GetProductsByCtgImpl value,
          $Res Function(_$GetProductsByCtgImpl) then) =
      __$$GetProductsByCtgImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, ProductCategory ctg});

  $ProductCategoryCopyWith<$Res> get ctg;
}

/// @nodoc
class __$$GetProductsByCtgImplCopyWithImpl<$Res>
    extends _$UserBusinessProfileEventCopyWithImpl<$Res, _$GetProductsByCtgImpl>
    implements _$$GetProductsByCtgImplCopyWith<$Res> {
  __$$GetProductsByCtgImplCopyWithImpl(_$GetProductsByCtgImpl _value,
      $Res Function(_$GetProductsByCtgImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ctg = null,
  }) {
    return _then(_$GetProductsByCtgImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == ctg
          ? _value.ctg
          : ctg // ignore: cast_nullable_to_non_nullable
              as ProductCategory,
    ));
  }

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res> get ctg {
    return $ProductCategoryCopyWith<$Res>(_value.ctg, (value) {
      return _then(_value.copyWith(ctg: value));
    });
  }
}

/// @nodoc

class _$GetProductsByCtgImpl implements _GetProductsByCtg {
  const _$GetProductsByCtgImpl(this.id, this.ctg);

  @override
  final int id;
  @override
  final ProductCategory ctg;

  @override
  String toString() {
    return 'UserBusinessProfileEvent.getProductsByCtg(id: $id, ctg: $ctg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsByCtgImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ctg, ctg) || other.ctg == ctg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, ctg);

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsByCtgImplCopyWith<_$GetProductsByCtgImpl> get copyWith =>
      __$$GetProductsByCtgImplCopyWithImpl<_$GetProductsByCtgImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
    required TResult Function(int id, ProductCategory ctg) getProductsByCtg,
    required TResult Function(int id, int categoryId) getProducts,
    required TResult Function(int id, int categoryId) getHouseProducts,
  }) {
    return getProductsByCtg(id, ctg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult? Function(int id, int categoryId)? getProducts,
    TResult? Function(int id, int categoryId)? getHouseProducts,
  }) {
    return getProductsByCtg?.call(id, ctg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult Function(int id, int categoryId)? getProducts,
    TResult Function(int id, int categoryId)? getHouseProducts,
    required TResult orElse(),
  }) {
    if (getProductsByCtg != null) {
      return getProductsByCtg(id, ctg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inited value) init,
    required TResult Function(_GetProductsByCtg value) getProductsByCtg,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetHouseProducts value) getHouseProducts,
  }) {
    return getProductsByCtg(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inited value)? init,
    TResult? Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetHouseProducts value)? getHouseProducts,
  }) {
    return getProductsByCtg?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inited value)? init,
    TResult Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetHouseProducts value)? getHouseProducts,
    required TResult orElse(),
  }) {
    if (getProductsByCtg != null) {
      return getProductsByCtg(this);
    }
    return orElse();
  }
}

abstract class _GetProductsByCtg implements UserBusinessProfileEvent {
  const factory _GetProductsByCtg(final int id, final ProductCategory ctg) =
      _$GetProductsByCtgImpl;

  @override
  int get id;
  ProductCategory get ctg;

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductsByCtgImplCopyWith<_$GetProductsByCtgImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res>
    implements $UserBusinessProfileEventCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
          _$GetProductsImpl value, $Res Function(_$GetProductsImpl) then) =
      __$$GetProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int categoryId});
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$UserBusinessProfileEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
      _$GetProductsImpl _value, $Res Function(_$GetProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
  }) {
    return _then(_$GetProductsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetProductsImpl implements _GetProducts {
  const _$GetProductsImpl(this.id, this.categoryId);

  @override
  final int id;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'UserBusinessProfileEvent.getProducts(id: $id, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId);

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      __$$GetProductsImplCopyWithImpl<_$GetProductsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
    required TResult Function(int id, ProductCategory ctg) getProductsByCtg,
    required TResult Function(int id, int categoryId) getProducts,
    required TResult Function(int id, int categoryId) getHouseProducts,
  }) {
    return getProducts(id, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult? Function(int id, int categoryId)? getProducts,
    TResult? Function(int id, int categoryId)? getHouseProducts,
  }) {
    return getProducts?.call(id, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult Function(int id, int categoryId)? getProducts,
    TResult Function(int id, int categoryId)? getHouseProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(id, categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inited value) init,
    required TResult Function(_GetProductsByCtg value) getProductsByCtg,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetHouseProducts value) getHouseProducts,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inited value)? init,
    TResult? Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetHouseProducts value)? getHouseProducts,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inited value)? init,
    TResult Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetHouseProducts value)? getHouseProducts,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements UserBusinessProfileEvent {
  const factory _GetProducts(final int id, final int categoryId) =
      _$GetProductsImpl;

  @override
  int get id;
  int get categoryId;

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProductsImplCopyWith<_$GetProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHouseProductsImplCopyWith<$Res>
    implements $UserBusinessProfileEventCopyWith<$Res> {
  factory _$$GetHouseProductsImplCopyWith(_$GetHouseProductsImpl value,
          $Res Function(_$GetHouseProductsImpl) then) =
      __$$GetHouseProductsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int categoryId});
}

/// @nodoc
class __$$GetHouseProductsImplCopyWithImpl<$Res>
    extends _$UserBusinessProfileEventCopyWithImpl<$Res, _$GetHouseProductsImpl>
    implements _$$GetHouseProductsImplCopyWith<$Res> {
  __$$GetHouseProductsImplCopyWithImpl(_$GetHouseProductsImpl _value,
      $Res Function(_$GetHouseProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
  }) {
    return _then(_$GetHouseProductsImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetHouseProductsImpl implements _GetHouseProducts {
  const _$GetHouseProductsImpl(this.id, this.categoryId);

  @override
  final int id;
  @override
  final int categoryId;

  @override
  String toString() {
    return 'UserBusinessProfileEvent.getHouseProducts(id: $id, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHouseProductsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId);

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHouseProductsImplCopyWith<_$GetHouseProductsImpl> get copyWith =>
      __$$GetHouseProductsImplCopyWithImpl<_$GetHouseProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) init,
    required TResult Function(int id, ProductCategory ctg) getProductsByCtg,
    required TResult Function(int id, int categoryId) getProducts,
    required TResult Function(int id, int categoryId) getHouseProducts,
  }) {
    return getHouseProducts(id, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? init,
    TResult? Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult? Function(int id, int categoryId)? getProducts,
    TResult? Function(int id, int categoryId)? getHouseProducts,
  }) {
    return getHouseProducts?.call(id, categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? init,
    TResult Function(int id, ProductCategory ctg)? getProductsByCtg,
    TResult Function(int id, int categoryId)? getProducts,
    TResult Function(int id, int categoryId)? getHouseProducts,
    required TResult orElse(),
  }) {
    if (getHouseProducts != null) {
      return getHouseProducts(id, categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Inited value) init,
    required TResult Function(_GetProductsByCtg value) getProductsByCtg,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_GetHouseProducts value) getHouseProducts,
  }) {
    return getHouseProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Inited value)? init,
    TResult? Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_GetHouseProducts value)? getHouseProducts,
  }) {
    return getHouseProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Inited value)? init,
    TResult Function(_GetProductsByCtg value)? getProductsByCtg,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_GetHouseProducts value)? getHouseProducts,
    required TResult orElse(),
  }) {
    if (getHouseProducts != null) {
      return getHouseProducts(this);
    }
    return orElse();
  }
}

abstract class _GetHouseProducts implements UserBusinessProfileEvent {
  const factory _GetHouseProducts(final int id, final int categoryId) =
      _$GetHouseProductsImpl;

  @override
  int get id;
  int get categoryId;

  /// Create a copy of UserBusinessProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHouseProductsImplCopyWith<_$GetHouseProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserBusinessProfileState {
  BaseStatus<dynamic> get status => throw _privateConstructorUsedError;
  BaseStatus<dynamic> get productsStatus => throw _privateConstructorUsedError;
  ProductCategory? get currentCategory => throw _privateConstructorUsedError;
  BusinessProfileData? get profile => throw _privateConstructorUsedError;
  List<HouseProduct>? get houseProducts => throw _privateConstructorUsedError;
  List<ProductData>? get products => throw _privateConstructorUsedError;

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBusinessProfileStateCopyWith<UserBusinessProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBusinessProfileStateCopyWith<$Res> {
  factory $UserBusinessProfileStateCopyWith(UserBusinessProfileState value,
          $Res Function(UserBusinessProfileState) then) =
      _$UserBusinessProfileStateCopyWithImpl<$Res, UserBusinessProfileState>;
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      BaseStatus<dynamic> productsStatus,
      ProductCategory? currentCategory,
      BusinessProfileData? profile,
      List<HouseProduct>? houseProducts,
      List<ProductData>? products});

  $BaseStatusCopyWith<dynamic, $Res> get status;
  $BaseStatusCopyWith<dynamic, $Res> get productsStatus;
  $ProductCategoryCopyWith<$Res>? get currentCategory;
  $BusinessProfileDataCopyWith<$Res>? get profile;
}

/// @nodoc
class _$UserBusinessProfileStateCopyWithImpl<$Res,
        $Val extends UserBusinessProfileState>
    implements $UserBusinessProfileStateCopyWith<$Res> {
  _$UserBusinessProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productsStatus = null,
    Object? currentCategory = freezed,
    Object? profile = freezed,
    Object? houseProducts = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      productsStatus: null == productsStatus
          ? _value.productsStatus
          : productsStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      currentCategory: freezed == currentCategory
          ? _value.currentCategory
          : currentCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as BusinessProfileData?,
      houseProducts: freezed == houseProducts
          ? _value.houseProducts
          : houseProducts // ignore: cast_nullable_to_non_nullable
              as List<HouseProduct>?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ) as $Val);
  }

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get status {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<dynamic, $Res> get productsStatus {
    return $BaseStatusCopyWith<dynamic, $Res>(_value.productsStatus, (value) {
      return _then(_value.copyWith(productsStatus: value) as $Val);
    });
  }

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryCopyWith<$Res>? get currentCategory {
    if (_value.currentCategory == null) {
      return null;
    }

    return $ProductCategoryCopyWith<$Res>(_value.currentCategory!, (value) {
      return _then(_value.copyWith(currentCategory: value) as $Val);
    });
  }

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessProfileDataCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $BusinessProfileDataCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserBusinessProfileStateImplCopyWith<$Res>
    implements $UserBusinessProfileStateCopyWith<$Res> {
  factory _$$UserBusinessProfileStateImplCopyWith(
          _$UserBusinessProfileStateImpl value,
          $Res Function(_$UserBusinessProfileStateImpl) then) =
      __$$UserBusinessProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus<dynamic> status,
      BaseStatus<dynamic> productsStatus,
      ProductCategory? currentCategory,
      BusinessProfileData? profile,
      List<HouseProduct>? houseProducts,
      List<ProductData>? products});

  @override
  $BaseStatusCopyWith<dynamic, $Res> get status;
  @override
  $BaseStatusCopyWith<dynamic, $Res> get productsStatus;
  @override
  $ProductCategoryCopyWith<$Res>? get currentCategory;
  @override
  $BusinessProfileDataCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$UserBusinessProfileStateImplCopyWithImpl<$Res>
    extends _$UserBusinessProfileStateCopyWithImpl<$Res,
        _$UserBusinessProfileStateImpl>
    implements _$$UserBusinessProfileStateImplCopyWith<$Res> {
  __$$UserBusinessProfileStateImplCopyWithImpl(
      _$UserBusinessProfileStateImpl _value,
      $Res Function(_$UserBusinessProfileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? productsStatus = null,
    Object? currentCategory = freezed,
    Object? profile = freezed,
    Object? houseProducts = freezed,
    Object? products = freezed,
  }) {
    return _then(_$UserBusinessProfileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      productsStatus: null == productsStatus
          ? _value.productsStatus
          : productsStatus // ignore: cast_nullable_to_non_nullable
              as BaseStatus<dynamic>,
      currentCategory: freezed == currentCategory
          ? _value.currentCategory
          : currentCategory // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as BusinessProfileData?,
      houseProducts: freezed == houseProducts
          ? _value._houseProducts
          : houseProducts // ignore: cast_nullable_to_non_nullable
              as List<HouseProduct>?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ));
  }
}

/// @nodoc

class _$UserBusinessProfileStateImpl extends _UserBusinessProfileState {
  const _$UserBusinessProfileStateImpl(
      {this.status = const BaseStatus.initial(),
      this.productsStatus = const BaseStatus.initial(),
      this.currentCategory,
      this.profile,
      final List<HouseProduct>? houseProducts,
      final List<ProductData>? products})
      : _houseProducts = houseProducts,
        _products = products,
        super._();

  @override
  @JsonKey()
  final BaseStatus<dynamic> status;
  @override
  @JsonKey()
  final BaseStatus<dynamic> productsStatus;
  @override
  final ProductCategory? currentCategory;
  @override
  final BusinessProfileData? profile;
  final List<HouseProduct>? _houseProducts;
  @override
  List<HouseProduct>? get houseProducts {
    final value = _houseProducts;
    if (value == null) return null;
    if (_houseProducts is EqualUnmodifiableListView) return _houseProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductData>? _products;
  @override
  List<ProductData>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserBusinessProfileState(status: $status, productsStatus: $productsStatus, currentCategory: $currentCategory, profile: $profile, houseProducts: $houseProducts, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBusinessProfileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.productsStatus, productsStatus) ||
                other.productsStatus == productsStatus) &&
            (identical(other.currentCategory, currentCategory) ||
                other.currentCategory == currentCategory) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            const DeepCollectionEquality()
                .equals(other._houseProducts, _houseProducts) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      productsStatus,
      currentCategory,
      profile,
      const DeepCollectionEquality().hash(_houseProducts),
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBusinessProfileStateImplCopyWith<_$UserBusinessProfileStateImpl>
      get copyWith => __$$UserBusinessProfileStateImplCopyWithImpl<
          _$UserBusinessProfileStateImpl>(this, _$identity);
}

abstract class _UserBusinessProfileState extends UserBusinessProfileState {
  const factory _UserBusinessProfileState(
      {final BaseStatus<dynamic> status,
      final BaseStatus<dynamic> productsStatus,
      final ProductCategory? currentCategory,
      final BusinessProfileData? profile,
      final List<HouseProduct>? houseProducts,
      final List<ProductData>? products}) = _$UserBusinessProfileStateImpl;
  const _UserBusinessProfileState._() : super._();

  @override
  BaseStatus<dynamic> get status;
  @override
  BaseStatus<dynamic> get productsStatus;
  @override
  ProductCategory? get currentCategory;
  @override
  BusinessProfileData? get profile;
  @override
  List<HouseProduct>? get houseProducts;
  @override
  List<ProductData>? get products;

  /// Create a copy of UserBusinessProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBusinessProfileStateImplCopyWith<_$UserBusinessProfileStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
