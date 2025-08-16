// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessProfileEntity _$BusinessProfileEntityFromJson(
    Map<String, dynamic> json) {
  return _BusinessProfileEntity.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileEntity {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo')
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  BaseTranslationModel? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'brief_description')
  String? get briefDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_count')
  int? get productCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_id')
  int? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire')
  String? get expire => throw _privateConstructorUsedError;
  @JsonKey(name: 'views')
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_media')
  String? get coverMedia => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'locations')
  dynamic get locations => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'phone_numbers',
      fromJson: _phoneNumbersFromJson,
      toJson: _phoneNumbersToJson)
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_vip')
  int? get isVip => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_days')
  int? get vipDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'site')
  String? get site => throw _privateConstructorUsedError;
  @JsonKey(name: 'messengers')
  dynamic get messengers => throw _privateConstructorUsedError;
  @JsonKey(name: 'mail')
  String? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BusinessProfileEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileEntityCopyWith<BusinessProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileEntityCopyWith<$Res> {
  factory $BusinessProfileEntityCopyWith(BusinessProfileEntity value,
          $Res Function(BusinessProfileEntity) then) =
      _$BusinessProfileEntityCopyWithImpl<$Res, BusinessProfileEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'description') BaseTranslationModel? description,
      @JsonKey(name: 'brief_description') String? briefDescription,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'location_id') int? locationId,
      @JsonKey(name: 'expire') String? expire,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'cover_media') String? coverMedia,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'locations') dynamic locations,
      @JsonKey(
          name: 'phone_numbers',
          fromJson: _phoneNumbersFromJson,
          toJson: _phoneNumbersToJson)
      List<String>? phoneNumbers,
      @JsonKey(name: 'is_vip') int? isVip,
      @JsonKey(name: 'vip_days') int? vipDays,
      @JsonKey(name: 'site') String? site,
      @JsonKey(name: 'messengers') dynamic messengers,
      @JsonKey(name: 'mail') String? mail,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $BaseTranslationModelCopyWith<$Res>? get description;
}

/// @nodoc
class _$BusinessProfileEntityCopyWithImpl<$Res,
        $Val extends BusinessProfileEntity>
    implements $BusinessProfileEntityCopyWith<$Res> {
  _$BusinessProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? logo = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? briefDescription = freezed,
    Object? productCount = freezed,
    Object? locationId = freezed,
    Object? expire = freezed,
    Object? views = freezed,
    Object? coverMedia = freezed,
    Object? rating = freezed,
    Object? locations = freezed,
    Object? phoneNumbers = freezed,
    Object? isVip = freezed,
    Object? vipDays = freezed,
    Object? site = freezed,
    Object? messengers = freezed,
    Object? mail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BaseTranslationModel?,
      briefDescription: freezed == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      expire: freezed == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      coverMedia: freezed == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as int?,
      vipDays: freezed == vipDays
          ? _value.vipDays
          : vipDays // ignore: cast_nullable_to_non_nullable
              as int?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      messengers: freezed == messengers
          ? _value.messengers
          : messengers // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BusinessProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BaseTranslationModelCopyWith<$Res>? get description {
    if (_value.description == null) {
      return null;
    }

    return $BaseTranslationModelCopyWith<$Res>(_value.description!, (value) {
      return _then(_value.copyWith(description: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessProfileEntityImplCopyWith<$Res>
    implements $BusinessProfileEntityCopyWith<$Res> {
  factory _$$BusinessProfileEntityImplCopyWith(
          _$BusinessProfileEntityImpl value,
          $Res Function(_$BusinessProfileEntityImpl) then) =
      __$$BusinessProfileEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'brand') String? brand,
      @JsonKey(name: 'logo') String? logo,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'description') BaseTranslationModel? description,
      @JsonKey(name: 'brief_description') String? briefDescription,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'location_id') int? locationId,
      @JsonKey(name: 'expire') String? expire,
      @JsonKey(name: 'views') int? views,
      @JsonKey(name: 'cover_media') String? coverMedia,
      @JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'locations') dynamic locations,
      @JsonKey(
          name: 'phone_numbers',
          fromJson: _phoneNumbersFromJson,
          toJson: _phoneNumbersToJson)
      List<String>? phoneNumbers,
      @JsonKey(name: 'is_vip') int? isVip,
      @JsonKey(name: 'vip_days') int? vipDays,
      @JsonKey(name: 'site') String? site,
      @JsonKey(name: 'messengers') dynamic messengers,
      @JsonKey(name: 'mail') String? mail,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $BaseTranslationModelCopyWith<$Res>? get description;
}

/// @nodoc
class __$$BusinessProfileEntityImplCopyWithImpl<$Res>
    extends _$BusinessProfileEntityCopyWithImpl<$Res,
        _$BusinessProfileEntityImpl>
    implements _$$BusinessProfileEntityImplCopyWith<$Res> {
  __$$BusinessProfileEntityImplCopyWithImpl(_$BusinessProfileEntityImpl _value,
      $Res Function(_$BusinessProfileEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? logo = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? briefDescription = freezed,
    Object? productCount = freezed,
    Object? locationId = freezed,
    Object? expire = freezed,
    Object? views = freezed,
    Object? coverMedia = freezed,
    Object? rating = freezed,
    Object? locations = freezed,
    Object? phoneNumbers = freezed,
    Object? isVip = freezed,
    Object? vipDays = freezed,
    Object? site = freezed,
    Object? messengers = freezed,
    Object? mail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BusinessProfileEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as BaseTranslationModel?,
      briefDescription: freezed == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      expire: freezed == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      coverMedia: freezed == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneNumbers: freezed == phoneNumbers
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as int?,
      vipDays: freezed == vipDays
          ? _value.vipDays
          : vipDays // ignore: cast_nullable_to_non_nullable
              as int?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      messengers: freezed == messengers
          ? _value.messengers
          : messengers // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileEntityImpl implements _BusinessProfileEntity {
  const _$BusinessProfileEntityImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'brand') this.brand,
      @JsonKey(name: 'logo') this.logo,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'brief_description') this.briefDescription,
      @JsonKey(name: 'product_count') this.productCount,
      @JsonKey(name: 'location_id') this.locationId,
      @JsonKey(name: 'expire') this.expire,
      @JsonKey(name: 'views') this.views,
      @JsonKey(name: 'cover_media') this.coverMedia,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'locations') this.locations,
      @JsonKey(
          name: 'phone_numbers',
          fromJson: _phoneNumbersFromJson,
          toJson: _phoneNumbersToJson)
      final List<String>? phoneNumbers,
      @JsonKey(name: 'is_vip') this.isVip,
      @JsonKey(name: 'vip_days') this.vipDays,
      @JsonKey(name: 'site') this.site,
      @JsonKey(name: 'messengers') this.messengers,
      @JsonKey(name: 'mail') this.mail,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt})
      : _phoneNumbers = phoneNumbers;

  factory _$BusinessProfileEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessProfileEntityImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'brand')
  final String? brand;
  @override
  @JsonKey(name: 'logo')
  final String? logo;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'description')
  final BaseTranslationModel? description;
  @override
  @JsonKey(name: 'brief_description')
  final String? briefDescription;
  @override
  @JsonKey(name: 'product_count')
  final int? productCount;
  @override
  @JsonKey(name: 'location_id')
  final int? locationId;
  @override
  @JsonKey(name: 'expire')
  final String? expire;
  @override
  @JsonKey(name: 'views')
  final int? views;
  @override
  @JsonKey(name: 'cover_media')
  final String? coverMedia;
  @override
  @JsonKey(name: 'rating')
  final int? rating;
  @override
  @JsonKey(name: 'locations')
  final dynamic locations;
  final List<String>? _phoneNumbers;
  @override
  @JsonKey(
      name: 'phone_numbers',
      fromJson: _phoneNumbersFromJson,
      toJson: _phoneNumbersToJson)
  List<String>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'is_vip')
  final int? isVip;
  @override
  @JsonKey(name: 'vip_days')
  final int? vipDays;
  @override
  @JsonKey(name: 'site')
  final String? site;
  @override
  @JsonKey(name: 'messengers')
  final dynamic messengers;
  @override
  @JsonKey(name: 'mail')
  final String? mail;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'BusinessProfileEntity(id: $id, brand: $brand, logo: $logo, image: $image, status: $status, description: $description, briefDescription: $briefDescription, productCount: $productCount, locationId: $locationId, expire: $expire, views: $views, coverMedia: $coverMedia, rating: $rating, locations: $locations, phoneNumbers: $phoneNumbers, isVip: $isVip, vipDays: $vipDays, site: $site, messengers: $messengers, mail: $mail, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.briefDescription, briefDescription) ||
                other.briefDescription == briefDescription) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.expire, expire) || other.expire == expire) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.coverMedia, coverMedia) ||
                other.coverMedia == coverMedia) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other.locations, locations) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.vipDays, vipDays) || other.vipDays == vipDays) &&
            (identical(other.site, site) || other.site == site) &&
            const DeepCollectionEquality()
                .equals(other.messengers, messengers) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        brand,
        logo,
        image,
        status,
        description,
        briefDescription,
        productCount,
        locationId,
        expire,
        views,
        coverMedia,
        rating,
        const DeepCollectionEquality().hash(locations),
        const DeepCollectionEquality().hash(_phoneNumbers),
        isVip,
        vipDays,
        site,
        const DeepCollectionEquality().hash(messengers),
        mail,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of BusinessProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileEntityImplCopyWith<_$BusinessProfileEntityImpl>
      get copyWith => __$$BusinessProfileEntityImplCopyWithImpl<
          _$BusinessProfileEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileEntityImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileEntity implements BusinessProfileEntity {
  const factory _BusinessProfileEntity(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'brand') final String? brand,
          @JsonKey(name: 'logo') final String? logo,
          @JsonKey(name: 'image') final String? image,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'description') final BaseTranslationModel? description,
          @JsonKey(name: 'brief_description') final String? briefDescription,
          @JsonKey(name: 'product_count') final int? productCount,
          @JsonKey(name: 'location_id') final int? locationId,
          @JsonKey(name: 'expire') final String? expire,
          @JsonKey(name: 'views') final int? views,
          @JsonKey(name: 'cover_media') final String? coverMedia,
          @JsonKey(name: 'rating') final int? rating,
          @JsonKey(name: 'locations') final dynamic locations,
          @JsonKey(
              name: 'phone_numbers',
              fromJson: _phoneNumbersFromJson,
              toJson: _phoneNumbersToJson)
          final List<String>? phoneNumbers,
          @JsonKey(name: 'is_vip') final int? isVip,
          @JsonKey(name: 'vip_days') final int? vipDays,
          @JsonKey(name: 'site') final String? site,
          @JsonKey(name: 'messengers') final dynamic messengers,
          @JsonKey(name: 'mail') final String? mail,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$BusinessProfileEntityImpl;

  factory _BusinessProfileEntity.fromJson(Map<String, dynamic> json) =
      _$BusinessProfileEntityImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'brand')
  String? get brand;
  @override
  @JsonKey(name: 'logo')
  String? get logo;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'description')
  BaseTranslationModel? get description;
  @override
  @JsonKey(name: 'brief_description')
  String? get briefDescription;
  @override
  @JsonKey(name: 'product_count')
  int? get productCount;
  @override
  @JsonKey(name: 'location_id')
  int? get locationId;
  @override
  @JsonKey(name: 'expire')
  String? get expire;
  @override
  @JsonKey(name: 'views')
  int? get views;
  @override
  @JsonKey(name: 'cover_media')
  String? get coverMedia;
  @override
  @JsonKey(name: 'rating')
  int? get rating;
  @override
  @JsonKey(name: 'locations')
  dynamic get locations;
  @override
  @JsonKey(
      name: 'phone_numbers',
      fromJson: _phoneNumbersFromJson,
      toJson: _phoneNumbersToJson)
  List<String>? get phoneNumbers;
  @override
  @JsonKey(name: 'is_vip')
  int? get isVip;
  @override
  @JsonKey(name: 'vip_days')
  int? get vipDays;
  @override
  @JsonKey(name: 'site')
  String? get site;
  @override
  @JsonKey(name: 'messengers')
  dynamic get messengers;
  @override
  @JsonKey(name: 'mail')
  String? get mail;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of BusinessProfileEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileEntityImplCopyWith<_$BusinessProfileEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BaseTranslationModel _$BaseTranslationModelFromJson(Map<String, dynamic> json) {
  return _BaseTranslationModel.fromJson(json);
}

/// @nodoc
mixin _$BaseTranslationModel {
  String? get tk => throw _privateConstructorUsedError;
  String? get ru => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;

  /// Serializes this BaseTranslationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BaseTranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseTranslationModelCopyWith<BaseTranslationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseTranslationModelCopyWith<$Res> {
  factory $BaseTranslationModelCopyWith(BaseTranslationModel value,
          $Res Function(BaseTranslationModel) then) =
      _$BaseTranslationModelCopyWithImpl<$Res, BaseTranslationModel>;
  @useResult
  $Res call({String? tk, String? ru, String? en});
}

/// @nodoc
class _$BaseTranslationModelCopyWithImpl<$Res,
        $Val extends BaseTranslationModel>
    implements $BaseTranslationModelCopyWith<$Res> {
  _$BaseTranslationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseTranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tk = freezed,
    Object? ru = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      tk: freezed == tk
          ? _value.tk
          : tk // ignore: cast_nullable_to_non_nullable
              as String?,
      ru: freezed == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseTranslationModelImplCopyWith<$Res>
    implements $BaseTranslationModelCopyWith<$Res> {
  factory _$$BaseTranslationModelImplCopyWith(_$BaseTranslationModelImpl value,
          $Res Function(_$BaseTranslationModelImpl) then) =
      __$$BaseTranslationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? tk, String? ru, String? en});
}

/// @nodoc
class __$$BaseTranslationModelImplCopyWithImpl<$Res>
    extends _$BaseTranslationModelCopyWithImpl<$Res, _$BaseTranslationModelImpl>
    implements _$$BaseTranslationModelImplCopyWith<$Res> {
  __$$BaseTranslationModelImplCopyWithImpl(_$BaseTranslationModelImpl _value,
      $Res Function(_$BaseTranslationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BaseTranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tk = freezed,
    Object? ru = freezed,
    Object? en = freezed,
  }) {
    return _then(_$BaseTranslationModelImpl(
      tk: freezed == tk
          ? _value.tk
          : tk // ignore: cast_nullable_to_non_nullable
              as String?,
      ru: freezed == ru
          ? _value.ru
          : ru // ignore: cast_nullable_to_non_nullable
              as String?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseTranslationModelImpl implements _BaseTranslationModel {
  const _$BaseTranslationModelImpl({this.tk, this.ru, this.en});

  factory _$BaseTranslationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseTranslationModelImplFromJson(json);

  @override
  final String? tk;
  @override
  final String? ru;
  @override
  final String? en;

  @override
  String toString() {
    return 'BaseTranslationModel(tk: $tk, ru: $ru, en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseTranslationModelImpl &&
            (identical(other.tk, tk) || other.tk == tk) &&
            (identical(other.ru, ru) || other.ru == ru) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tk, ru, en);

  /// Create a copy of BaseTranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseTranslationModelImplCopyWith<_$BaseTranslationModelImpl>
      get copyWith =>
          __$$BaseTranslationModelImplCopyWithImpl<_$BaseTranslationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseTranslationModelImplToJson(
      this,
    );
  }
}

abstract class _BaseTranslationModel implements BaseTranslationModel {
  const factory _BaseTranslationModel(
      {final String? tk,
      final String? ru,
      final String? en}) = _$BaseTranslationModelImpl;

  factory _BaseTranslationModel.fromJson(Map<String, dynamic> json) =
      _$BaseTranslationModelImpl.fromJson;

  @override
  String? get tk;
  @override
  String? get ru;
  @override
  String? get en;

  /// Create a copy of BaseTranslationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseTranslationModelImplCopyWith<_$BaseTranslationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
