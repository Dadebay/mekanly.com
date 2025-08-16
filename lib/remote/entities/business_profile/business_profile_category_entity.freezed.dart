// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessProfileCategoryEntity _$BusinessProfileCategoryEntityFromJson(
    Map<String, dynamic> json) {
  return _BusinessProfileCategoryEntity.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileCategoryEntity {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'business_profiles')
  int? get businessProfiles => throw _privateConstructorUsedError;
  List<BusinessProfileCategoryEntity>? get subcategories =>
      throw _privateConstructorUsedError;

  /// Serializes this BusinessProfileCategoryEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileCategoryEntityCopyWith<BusinessProfileCategoryEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileCategoryEntityCopyWith<$Res> {
  factory $BusinessProfileCategoryEntityCopyWith(
          BusinessProfileCategoryEntity value,
          $Res Function(BusinessProfileCategoryEntity) then) =
      _$BusinessProfileCategoryEntityCopyWithImpl<$Res,
          BusinessProfileCategoryEntity>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? image,
      @JsonKey(name: 'business_profiles') int? businessProfiles,
      List<BusinessProfileCategoryEntity>? subcategories});
}

/// @nodoc
class _$BusinessProfileCategoryEntityCopyWithImpl<$Res,
        $Val extends BusinessProfileCategoryEntity>
    implements $BusinessProfileCategoryEntityCopyWith<$Res> {
  _$BusinessProfileCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? image = freezed,
    Object? businessProfiles = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      businessProfiles: freezed == businessProfiles
          ? _value.businessProfiles
          : businessProfiles // ignore: cast_nullable_to_non_nullable
              as int?,
      subcategories: freezed == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<BusinessProfileCategoryEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessProfileCategoryEntityImplCopyWith<$Res>
    implements $BusinessProfileCategoryEntityCopyWith<$Res> {
  factory _$$BusinessProfileCategoryEntityImplCopyWith(
          _$BusinessProfileCategoryEntityImpl value,
          $Res Function(_$BusinessProfileCategoryEntityImpl) then) =
      __$$BusinessProfileCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? image,
      @JsonKey(name: 'business_profiles') int? businessProfiles,
      List<BusinessProfileCategoryEntity>? subcategories});
}

/// @nodoc
class __$$BusinessProfileCategoryEntityImplCopyWithImpl<$Res>
    extends _$BusinessProfileCategoryEntityCopyWithImpl<$Res,
        _$BusinessProfileCategoryEntityImpl>
    implements _$$BusinessProfileCategoryEntityImplCopyWith<$Res> {
  __$$BusinessProfileCategoryEntityImplCopyWithImpl(
      _$BusinessProfileCategoryEntityImpl _value,
      $Res Function(_$BusinessProfileCategoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? image = freezed,
    Object? businessProfiles = freezed,
    Object? subcategories = freezed,
  }) {
    return _then(_$BusinessProfileCategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      businessProfiles: freezed == businessProfiles
          ? _value.businessProfiles
          : businessProfiles // ignore: cast_nullable_to_non_nullable
              as int?,
      subcategories: freezed == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<BusinessProfileCategoryEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileCategoryEntityImpl
    implements _BusinessProfileCategoryEntity {
  const _$BusinessProfileCategoryEntityImpl(
      {required this.id,
      this.title,
      this.image,
      @JsonKey(name: 'business_profiles') this.businessProfiles,
      final List<BusinessProfileCategoryEntity>? subcategories})
      : _subcategories = subcategories;

  factory _$BusinessProfileCategoryEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessProfileCategoryEntityImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  @JsonKey(name: 'business_profiles')
  final int? businessProfiles;
  final List<BusinessProfileCategoryEntity>? _subcategories;
  @override
  List<BusinessProfileCategoryEntity>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BusinessProfileCategoryEntity(id: $id, title: $title, image: $image, businessProfiles: $businessProfiles, subcategories: $subcategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.businessProfiles, businessProfiles) ||
                other.businessProfiles == businessProfiles) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image,
      businessProfiles, const DeepCollectionEquality().hash(_subcategories));

  /// Create a copy of BusinessProfileCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileCategoryEntityImplCopyWith<
          _$BusinessProfileCategoryEntityImpl>
      get copyWith => __$$BusinessProfileCategoryEntityImplCopyWithImpl<
          _$BusinessProfileCategoryEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileCategoryEntityImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileCategoryEntity
    implements BusinessProfileCategoryEntity {
  const factory _BusinessProfileCategoryEntity(
          {required final int id,
          final String? title,
          final String? image,
          @JsonKey(name: 'business_profiles') final int? businessProfiles,
          final List<BusinessProfileCategoryEntity>? subcategories}) =
      _$BusinessProfileCategoryEntityImpl;

  factory _BusinessProfileCategoryEntity.fromJson(Map<String, dynamic> json) =
      _$BusinessProfileCategoryEntityImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  @JsonKey(name: 'business_profiles')
  int? get businessProfiles;
  @override
  List<BusinessProfileCategoryEntity>? get subcategories;

  /// Create a copy of BusinessProfileCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileCategoryEntityImplCopyWith<
          _$BusinessProfileCategoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
