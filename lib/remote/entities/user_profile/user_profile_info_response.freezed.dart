// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileInfoResponse _$UserProfileInfoResponseFromJson(
    Map<String, dynamic> json) {
  return _UserProfileInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileInfoResponse {
  UserData? get data => throw _privateConstructorUsedError;

  /// Serializes this UserProfileInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileInfoResponseCopyWith<UserProfileInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileInfoResponseCopyWith<$Res> {
  factory $UserProfileInfoResponseCopyWith(UserProfileInfoResponse value,
          $Res Function(UserProfileInfoResponse) then) =
      _$UserProfileInfoResponseCopyWithImpl<$Res, UserProfileInfoResponse>;
  @useResult
  $Res call({UserData? data});

  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserProfileInfoResponseCopyWithImpl<$Res,
        $Val extends UserProfileInfoResponse>
    implements $UserProfileInfoResponseCopyWith<$Res> {
  _$UserProfileInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileInfoResponse
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
              as UserData?,
    ) as $Val);
  }

  /// Create a copy of UserProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileInfoResponseImplCopyWith<$Res>
    implements $UserProfileInfoResponseCopyWith<$Res> {
  factory _$$UserProfileInfoResponseImplCopyWith(
          _$UserProfileInfoResponseImpl value,
          $Res Function(_$UserProfileInfoResponseImpl) then) =
      __$$UserProfileInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserData? data});

  @override
  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserProfileInfoResponseImplCopyWithImpl<$Res>
    extends _$UserProfileInfoResponseCopyWithImpl<$Res,
        _$UserProfileInfoResponseImpl>
    implements _$$UserProfileInfoResponseImplCopyWith<$Res> {
  __$$UserProfileInfoResponseImplCopyWithImpl(
      _$UserProfileInfoResponseImpl _value,
      $Res Function(_$UserProfileInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UserProfileInfoResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileInfoResponseImpl implements _UserProfileInfoResponse {
  const _$UserProfileInfoResponseImpl({this.data});

  factory _$UserProfileInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileInfoResponseImplFromJson(json);

  @override
  final UserData? data;

  @override
  String toString() {
    return 'UserProfileInfoResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileInfoResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of UserProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileInfoResponseImplCopyWith<_$UserProfileInfoResponseImpl>
      get copyWith => __$$UserProfileInfoResponseImplCopyWithImpl<
          _$UserProfileInfoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _UserProfileInfoResponse implements UserProfileInfoResponse {
  const factory _UserProfileInfoResponse({final UserData? data}) =
      _$UserProfileInfoResponseImpl;

  factory _UserProfileInfoResponse.fromJson(Map<String, dynamic> json) =
      _$UserProfileInfoResponseImpl.fromJson;

  @override
  UserData? get data;

  /// Create a copy of UserProfileInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileInfoResponseImplCopyWith<_$UserProfileInfoResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  List<Shop>? get shops => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_categories')
  List<UserProductCategory>? get productCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_expire')
  DateTime? get vipExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_day')
  int? get vipDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_info')
  String? get deviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_token')
  String? get deviceToken => throw _privateConstructorUsedError;

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? phone,
      String? role,
      String? status,
      String? about,
      int? views,
      List<Shop>? shops,
      @JsonKey(name: 'product_categories')
      List<UserProductCategory>? productCategories,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      @JsonKey(name: 'vip_expire') DateTime? vipExpire,
      @JsonKey(name: 'vip_day') int? vipDay,
      @JsonKey(name: 'device_info') String? deviceInfo,
      @JsonKey(name: 'device_token') String? deviceToken});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? about = freezed,
    Object? views = freezed,
    Object? shops = freezed,
    Object? productCategories = freezed,
    Object? socialProfiles = freezed,
    Object? vipExpire = freezed,
    Object? vipDay = freezed,
    Object? deviceInfo = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      shops: freezed == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>?,
      productCategories: freezed == productCategories
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<UserProductCategory>?,
      socialProfiles: freezed == socialProfiles
          ? _value.socialProfiles
          : socialProfiles // ignore: cast_nullable_to_non_nullable
              as List<SocialProfile>?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vipDay: freezed == vipDay
          ? _value.vipDay
          : vipDay // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? phone,
      String? role,
      String? status,
      String? about,
      int? views,
      List<Shop>? shops,
      @JsonKey(name: 'product_categories')
      List<UserProductCategory>? productCategories,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      @JsonKey(name: 'vip_expire') DateTime? vipExpire,
      @JsonKey(name: 'vip_day') int? vipDay,
      @JsonKey(name: 'device_info') String? deviceInfo,
      @JsonKey(name: 'device_token') String? deviceToken});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? role = freezed,
    Object? status = freezed,
    Object? about = freezed,
    Object? views = freezed,
    Object? shops = freezed,
    Object? productCategories = freezed,
    Object? socialProfiles = freezed,
    Object? vipExpire = freezed,
    Object? vipDay = freezed,
    Object? deviceInfo = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_$UserDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      shops: freezed == shops
          ? _value._shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>?,
      productCategories: freezed == productCategories
          ? _value._productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<UserProductCategory>?,
      socialProfiles: freezed == socialProfiles
          ? _value._socialProfiles
          : socialProfiles // ignore: cast_nullable_to_non_nullable
              as List<SocialProfile>?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vipDay: freezed == vipDay
          ? _value.vipDay
          : vipDay // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {this.id,
      this.username,
      this.email,
      this.phone,
      this.role,
      this.status,
      this.about,
      this.views,
      final List<Shop>? shops,
      @JsonKey(name: 'product_categories')
      final List<UserProductCategory>? productCategories,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      @JsonKey(name: 'vip_expire') this.vipExpire,
      @JsonKey(name: 'vip_day') this.vipDay,
      @JsonKey(name: 'device_info') this.deviceInfo,
      @JsonKey(name: 'device_token') this.deviceToken})
      : _shops = shops,
        _productCategories = productCategories,
        _socialProfiles = socialProfiles;

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? role;
  @override
  final String? status;
  @override
  final String? about;
  @override
  final int? views;
  final List<Shop>? _shops;
  @override
  List<Shop>? get shops {
    final value = _shops;
    if (value == null) return null;
    if (_shops is EqualUnmodifiableListView) return _shops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserProductCategory>? _productCategories;
  @override
  @JsonKey(name: 'product_categories')
  List<UserProductCategory>? get productCategories {
    final value = _productCategories;
    if (value == null) return null;
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SocialProfile>? _socialProfiles;
  @override
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles {
    final value = _socialProfiles;
    if (value == null) return null;
    if (_socialProfiles is EqualUnmodifiableListView) return _socialProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'vip_expire')
  final DateTime? vipExpire;
  @override
  @JsonKey(name: 'vip_day')
  final int? vipDay;
  @override
  @JsonKey(name: 'device_info')
  final String? deviceInfo;
  @override
  @JsonKey(name: 'device_token')
  final String? deviceToken;

  @override
  String toString() {
    return 'UserData(id: $id, username: $username, email: $email, phone: $phone, role: $role, status: $status, about: $about, views: $views, shops: $shops, productCategories: $productCategories, socialProfiles: $socialProfiles, vipExpire: $vipExpire, vipDay: $vipDay, deviceInfo: $deviceInfo, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.views, views) || other.views == views) &&
            const DeepCollectionEquality().equals(other._shops, _shops) &&
            const DeepCollectionEquality()
                .equals(other._productCategories, _productCategories) &&
            const DeepCollectionEquality()
                .equals(other._socialProfiles, _socialProfiles) &&
            (identical(other.vipExpire, vipExpire) ||
                other.vipExpire == vipExpire) &&
            (identical(other.vipDay, vipDay) || other.vipDay == vipDay) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      email,
      phone,
      role,
      status,
      about,
      views,
      const DeepCollectionEquality().hash(_shops),
      const DeepCollectionEquality().hash(_productCategories),
      const DeepCollectionEquality().hash(_socialProfiles),
      vipExpire,
      vipDay,
      deviceInfo,
      deviceToken);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
          {final int? id,
          final String? username,
          final String? email,
          final String? phone,
          final String? role,
          final String? status,
          final String? about,
          final int? views,
          final List<Shop>? shops,
          @JsonKey(name: 'product_categories')
          final List<UserProductCategory>? productCategories,
          @JsonKey(name: 'social_profiles')
          final List<SocialProfile>? socialProfiles,
          @JsonKey(name: 'vip_expire') final DateTime? vipExpire,
          @JsonKey(name: 'vip_day') final int? vipDay,
          @JsonKey(name: 'device_info') final String? deviceInfo,
          @JsonKey(name: 'device_token') final String? deviceToken}) =
      _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get role;
  @override
  String? get status;
  @override
  String? get about;
  @override
  int? get views;
  @override
  List<Shop>? get shops;
  @override
  @JsonKey(name: 'product_categories')
  List<UserProductCategory>? get productCategories;
  @override
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles;
  @override
  @JsonKey(name: 'vip_expire')
  DateTime? get vipExpire;
  @override
  @JsonKey(name: 'vip_day')
  int? get vipDay;
  @override
  @JsonKey(name: 'device_info')
  String? get deviceInfo;
  @override
  @JsonKey(name: 'device_token')
  String? get deviceToken;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
  int? get id => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'brief_description')
  String? get briefDescription => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_media')
  String? get coverMedia => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_numbers')
  String? get phoneNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_vip')
  int? get isVip => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_days')
  int? get vipDays => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  String? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_count')
  int? get productCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories =>
      throw _privateConstructorUsedError;

  /// Serializes this Shop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res, Shop>;
  @useResult
  $Res call(
      {int? id,
      String? brand,
      String? logo,
      String? image,
      String? description,
      @JsonKey(name: 'brief_description') String? briefDescription,
      int? views,
      @JsonKey(name: 'cover_media') String? coverMedia,
      @JsonKey(name: 'phone_numbers') String? phoneNumbers,
      @JsonKey(name: 'is_vip') int? isVip,
      @JsonKey(name: 'vip_days') int? vipDays,
      String? site,
      String? mail,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      Location? location,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'product_categories')
      List<ProductCategory>? productCategories});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$ShopCopyWithImpl<$Res, $Val extends Shop>
    implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? logo = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? briefDescription = freezed,
    Object? views = freezed,
    Object? coverMedia = freezed,
    Object? phoneNumbers = freezed,
    Object? isVip = freezed,
    Object? vipDays = freezed,
    Object? site = freezed,
    Object? mail = freezed,
    Object? socialProfiles = freezed,
    Object? location = freezed,
    Object? productCount = freezed,
    Object? productCategories = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      briefDescription: freezed == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      coverMedia: freezed == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as String?,
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
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      socialProfiles: freezed == socialProfiles
          ? _value.socialProfiles
          : socialProfiles // ignore: cast_nullable_to_non_nullable
              as List<SocialProfile>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productCategories: freezed == productCategories
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
    ) as $Val);
  }

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShopImplCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$ShopImplCopyWith(
          _$ShopImpl value, $Res Function(_$ShopImpl) then) =
      __$$ShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? brand,
      String? logo,
      String? image,
      String? description,
      @JsonKey(name: 'brief_description') String? briefDescription,
      int? views,
      @JsonKey(name: 'cover_media') String? coverMedia,
      @JsonKey(name: 'phone_numbers') String? phoneNumbers,
      @JsonKey(name: 'is_vip') int? isVip,
      @JsonKey(name: 'vip_days') int? vipDays,
      String? site,
      String? mail,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      Location? location,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'product_categories')
      List<ProductCategory>? productCategories});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ShopImplCopyWithImpl<$Res>
    extends _$ShopCopyWithImpl<$Res, _$ShopImpl>
    implements _$$ShopImplCopyWith<$Res> {
  __$$ShopImplCopyWithImpl(_$ShopImpl _value, $Res Function(_$ShopImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? logo = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? briefDescription = freezed,
    Object? views = freezed,
    Object? coverMedia = freezed,
    Object? phoneNumbers = freezed,
    Object? isVip = freezed,
    Object? vipDays = freezed,
    Object? site = freezed,
    Object? mail = freezed,
    Object? socialProfiles = freezed,
    Object? location = freezed,
    Object? productCount = freezed,
    Object? productCategories = freezed,
  }) {
    return _then(_$ShopImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      briefDescription: freezed == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      coverMedia: freezed == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as String?,
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
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      socialProfiles: freezed == socialProfiles
          ? _value._socialProfiles
          : socialProfiles // ignore: cast_nullable_to_non_nullable
              as List<SocialProfile>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productCategories: freezed == productCategories
          ? _value._productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopImpl implements _Shop {
  const _$ShopImpl(
      {this.id,
      this.brand,
      this.logo,
      this.image,
      this.description,
      @JsonKey(name: 'brief_description') this.briefDescription,
      this.views,
      @JsonKey(name: 'cover_media') this.coverMedia,
      @JsonKey(name: 'phone_numbers') this.phoneNumbers,
      @JsonKey(name: 'is_vip') this.isVip,
      @JsonKey(name: 'vip_days') this.vipDays,
      this.site,
      this.mail,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      this.location,
      @JsonKey(name: 'product_count') this.productCount,
      @JsonKey(name: 'product_categories')
      final List<ProductCategory>? productCategories})
      : _socialProfiles = socialProfiles,
        _productCategories = productCategories;

  factory _$ShopImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopImplFromJson(json);

  @override
  final int? id;
  @override
  final String? brand;
  @override
  final String? logo;
  @override
  final String? image;
  @override
  final String? description;
  @override
  @JsonKey(name: 'brief_description')
  final String? briefDescription;
  @override
  final int? views;
  @override
  @JsonKey(name: 'cover_media')
  final String? coverMedia;
  @override
  @JsonKey(name: 'phone_numbers')
  final String? phoneNumbers;
  @override
  @JsonKey(name: 'is_vip')
  final int? isVip;
  @override
  @JsonKey(name: 'vip_days')
  final int? vipDays;
  @override
  final String? site;
  @override
  final String? mail;
  final List<SocialProfile>? _socialProfiles;
  @override
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles {
    final value = _socialProfiles;
    if (value == null) return null;
    if (_socialProfiles is EqualUnmodifiableListView) return _socialProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Location? location;
  @override
  @JsonKey(name: 'product_count')
  final int? productCount;
  final List<ProductCategory>? _productCategories;
  @override
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories {
    final value = _productCategories;
    if (value == null) return null;
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Shop(id: $id, brand: $brand, logo: $logo, image: $image, description: $description, briefDescription: $briefDescription, views: $views, coverMedia: $coverMedia, phoneNumbers: $phoneNumbers, isVip: $isVip, vipDays: $vipDays, site: $site, mail: $mail, socialProfiles: $socialProfiles, location: $location, productCount: $productCount, productCategories: $productCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.briefDescription, briefDescription) ||
                other.briefDescription == briefDescription) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.coverMedia, coverMedia) ||
                other.coverMedia == coverMedia) &&
            (identical(other.phoneNumbers, phoneNumbers) ||
                other.phoneNumbers == phoneNumbers) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.vipDays, vipDays) || other.vipDays == vipDays) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            const DeepCollectionEquality()
                .equals(other._socialProfiles, _socialProfiles) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            const DeepCollectionEquality()
                .equals(other._productCategories, _productCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      brand,
      logo,
      image,
      description,
      briefDescription,
      views,
      coverMedia,
      phoneNumbers,
      isVip,
      vipDays,
      site,
      mail,
      const DeepCollectionEquality().hash(_socialProfiles),
      location,
      productCount,
      const DeepCollectionEquality().hash(_productCategories));

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      __$$ShopImplCopyWithImpl<_$ShopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopImplToJson(
      this,
    );
  }
}

abstract class _Shop implements Shop {
  const factory _Shop(
      {final int? id,
      final String? brand,
      final String? logo,
      final String? image,
      final String? description,
      @JsonKey(name: 'brief_description') final String? briefDescription,
      final int? views,
      @JsonKey(name: 'cover_media') final String? coverMedia,
      @JsonKey(name: 'phone_numbers') final String? phoneNumbers,
      @JsonKey(name: 'is_vip') final int? isVip,
      @JsonKey(name: 'vip_days') final int? vipDays,
      final String? site,
      final String? mail,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      final Location? location,
      @JsonKey(name: 'product_count') final int? productCount,
      @JsonKey(name: 'product_categories')
      final List<ProductCategory>? productCategories}) = _$ShopImpl;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$ShopImpl.fromJson;

  @override
  int? get id;
  @override
  String? get brand;
  @override
  String? get logo;
  @override
  String? get image;
  @override
  String? get description;
  @override
  @JsonKey(name: 'brief_description')
  String? get briefDescription;
  @override
  int? get views;
  @override
  @JsonKey(name: 'cover_media')
  String? get coverMedia;
  @override
  @JsonKey(name: 'phone_numbers')
  String? get phoneNumbers;
  @override
  @JsonKey(name: 'is_vip')
  int? get isVip;
  @override
  @JsonKey(name: 'vip_days')
  int? get vipDays;
  @override
  String? get site;
  @override
  String? get mail;
  @override
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles;
  @override
  Location? get location;
  @override
  @JsonKey(name: 'product_count')
  int? get productCount;
  @override
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialProfile _$SocialProfileFromJson(Map<String, dynamic> json) {
  return _SocialProfile.fromJson(json);
}

/// @nodoc
mixin _$SocialProfile {
  @JsonKey(name: 'sociable_id')
  int? get sociableId => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this SocialProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialProfileCopyWith<SocialProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialProfileCopyWith<$Res> {
  factory $SocialProfileCopyWith(
          SocialProfile value, $Res Function(SocialProfile) then) =
      _$SocialProfileCopyWithImpl<$Res, SocialProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sociable_id') int? sociableId,
      String? platform,
      String? url});
}

/// @nodoc
class _$SocialProfileCopyWithImpl<$Res, $Val extends SocialProfile>
    implements $SocialProfileCopyWith<$Res> {
  _$SocialProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sociableId = freezed,
    Object? platform = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      sociableId: freezed == sociableId
          ? _value.sociableId
          : sociableId // ignore: cast_nullable_to_non_nullable
              as int?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialProfileImplCopyWith<$Res>
    implements $SocialProfileCopyWith<$Res> {
  factory _$$SocialProfileImplCopyWith(
          _$SocialProfileImpl value, $Res Function(_$SocialProfileImpl) then) =
      __$$SocialProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sociable_id') int? sociableId,
      String? platform,
      String? url});
}

/// @nodoc
class __$$SocialProfileImplCopyWithImpl<$Res>
    extends _$SocialProfileCopyWithImpl<$Res, _$SocialProfileImpl>
    implements _$$SocialProfileImplCopyWith<$Res> {
  __$$SocialProfileImplCopyWithImpl(
      _$SocialProfileImpl _value, $Res Function(_$SocialProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sociableId = freezed,
    Object? platform = freezed,
    Object? url = freezed,
  }) {
    return _then(_$SocialProfileImpl(
      sociableId: freezed == sociableId
          ? _value.sociableId
          : sociableId // ignore: cast_nullable_to_non_nullable
              as int?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialProfileImpl implements _SocialProfile {
  const _$SocialProfileImpl(
      {@JsonKey(name: 'sociable_id') this.sociableId, this.platform, this.url});

  factory _$SocialProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialProfileImplFromJson(json);

  @override
  @JsonKey(name: 'sociable_id')
  final int? sociableId;
  @override
  final String? platform;
  @override
  final String? url;

  @override
  String toString() {
    return 'SocialProfile(sociableId: $sociableId, platform: $platform, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialProfileImpl &&
            (identical(other.sociableId, sociableId) ||
                other.sociableId == sociableId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sociableId, platform, url);

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialProfileImplCopyWith<_$SocialProfileImpl> get copyWith =>
      __$$SocialProfileImplCopyWithImpl<_$SocialProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialProfileImplToJson(
      this,
    );
  }
}

abstract class _SocialProfile implements SocialProfile {
  const factory _SocialProfile(
      {@JsonKey(name: 'sociable_id') final int? sociableId,
      final String? platform,
      final String? url}) = _$SocialProfileImpl;

  factory _SocialProfile.fromJson(Map<String, dynamic> json) =
      _$SocialProfileImpl.fromJson;

  @override
  @JsonKey(name: 'sociable_id')
  int? get sociableId;
  @override
  String? get platform;
  @override
  String? get url;

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialProfileImplCopyWith<_$SocialProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProductCategory _$UserProductCategoryFromJson(Map<String, dynamic> json) {
  return _UserProductCategory.fromJson(json);
}

/// @nodoc
mixin _$UserProductCategory {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'products_count')
  int? get productCount => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this UserProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProductCategoryCopyWith<UserProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProductCategoryCopyWith<$Res> {
  factory $UserProductCategoryCopyWith(
          UserProductCategory value, $Res Function(UserProductCategory) then) =
      _$UserProductCategoryCopyWithImpl<$Res, UserProductCategory>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      @JsonKey(name: 'products_count') int? productCount,
      String? type});
}

/// @nodoc
class _$UserProductCategoryCopyWithImpl<$Res, $Val extends UserProductCategory>
    implements $UserProductCategoryCopyWith<$Res> {
  _$UserProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? productCount = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProductCategoryImplCopyWith<$Res>
    implements $UserProductCategoryCopyWith<$Res> {
  factory _$$UserProductCategoryImplCopyWith(_$UserProductCategoryImpl value,
          $Res Function(_$UserProductCategoryImpl) then) =
      __$$UserProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      @JsonKey(name: 'products_count') int? productCount,
      String? type});
}

/// @nodoc
class __$$UserProductCategoryImplCopyWithImpl<$Res>
    extends _$UserProductCategoryCopyWithImpl<$Res, _$UserProductCategoryImpl>
    implements _$$UserProductCategoryImplCopyWith<$Res> {
  __$$UserProductCategoryImplCopyWithImpl(_$UserProductCategoryImpl _value,
      $Res Function(_$UserProductCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? productCount = freezed,
    Object? type = freezed,
  }) {
    return _then(_$UserProductCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProductCategoryImpl implements _UserProductCategory {
  const _$UserProductCategoryImpl(
      {this.id,
      this.title,
      @JsonKey(name: 'products_count') this.productCount,
      this.type});

  factory _$UserProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProductCategoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'products_count')
  final int? productCount;
  @override
  final String? type;

  @override
  String toString() {
    return 'UserProductCategory(id: $id, title: $title, productCount: $productCount, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProductCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, productCount, type);

  /// Create a copy of UserProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProductCategoryImplCopyWith<_$UserProductCategoryImpl> get copyWith =>
      __$$UserProductCategoryImplCopyWithImpl<_$UserProductCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _UserProductCategory implements UserProductCategory {
  const factory _UserProductCategory(
      {final int? id,
      final String? title,
      @JsonKey(name: 'products_count') final int? productCount,
      final String? type}) = _$UserProductCategoryImpl;

  factory _UserProductCategory.fromJson(Map<String, dynamic> json) =
      _$UserProductCategoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  @JsonKey(name: 'products_count')
  int? get productCount;
  @override
  String? get type;

  /// Create a copy of UserProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProductCategoryImplCopyWith<_$UserProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_name')
  String? get parentName => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'parent_name') String? parentName});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? parentName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'parent_name') String? parentName});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? parentName = freezed,
  }) {
    return _then(_$LocationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'parent_name') this.parentName});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'parent_name')
  final String? parentName;

  @override
  String toString() {
    return 'Location(id: $id, parentId: $parentId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, parentName: $parentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, parentId, name, createdAt, updatedAt, parentName);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final int? id,
      @JsonKey(name: 'parent_id') final int? parentId,
      final String? name,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'parent_name') final String? parentName}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'parent_name')
  String? get parentName;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductCategory {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  CategoryParent? get parent => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'products_count')
  int? get productsCount => throw _privateConstructorUsedError;

  /// Serializes this ProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      CategoryParent? parent,
      String? description,
      @JsonKey(name: 'products_count') int? productsCount});

  $CategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
    Object? productsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $CategoryParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductCategoryImplCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$ProductCategoryImplCopyWith(_$ProductCategoryImpl value,
          $Res Function(_$ProductCategoryImpl) then) =
      __$$ProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      CategoryParent? parent,
      String? description,
      @JsonKey(name: 'products_count') int? productsCount});

  @override
  $CategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$ProductCategoryImplCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$ProductCategoryImpl>
    implements _$$ProductCategoryImplCopyWith<$Res> {
  __$$ProductCategoryImplCopyWithImpl(
      _$ProductCategoryImpl _value, $Res Function(_$ProductCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
    Object? productsCount = freezed,
  }) {
    return _then(_$ProductCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryImpl implements _ProductCategory {
  const _$ProductCategoryImpl(
      {this.id,
      this.title,
      this.image,
      this.parent,
      this.description,
      @JsonKey(name: 'products_count') this.productsCount});

  factory _$ProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final CategoryParent? parent;
  @override
  final String? description;
  @override
  @JsonKey(name: 'products_count')
  final int? productsCount;

  @override
  String toString() {
    return 'ProductCategory(id: $id, title: $title, image: $image, parent: $parent, description: $description, productsCount: $productsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.productsCount, productsCount) ||
                other.productsCount == productsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, image, parent, description, productsCount);

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      __$$ProductCategoryImplCopyWithImpl<_$ProductCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
          {final int? id,
          final String? title,
          final String? image,
          final CategoryParent? parent,
          final String? description,
          @JsonKey(name: 'products_count') final int? productsCount}) =
      _$ProductCategoryImpl;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  CategoryParent? get parent;
  @override
  String? get description;
  @override
  @JsonKey(name: 'products_count')
  int? get productsCount;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryParent _$CategoryParentFromJson(Map<String, dynamic> json) {
  return _CategoryParent.fromJson(json);
}

/// @nodoc
mixin _$CategoryParent {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  CategoryParent? get parent => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CategoryParent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryParentCopyWith<CategoryParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryParentCopyWith<$Res> {
  factory $CategoryParentCopyWith(
          CategoryParent value, $Res Function(CategoryParent) then) =
      _$CategoryParentCopyWithImpl<$Res, CategoryParent>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      CategoryParent? parent,
      String? description});

  $CategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class _$CategoryParentCopyWithImpl<$Res, $Val extends CategoryParent>
    implements $CategoryParentCopyWith<$Res> {
  _$CategoryParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $CategoryParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryParentImplCopyWith<$Res>
    implements $CategoryParentCopyWith<$Res> {
  factory _$$CategoryParentImplCopyWith(_$CategoryParentImpl value,
          $Res Function(_$CategoryParentImpl) then) =
      __$$CategoryParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      CategoryParent? parent,
      String? description});

  @override
  $CategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$CategoryParentImplCopyWithImpl<$Res>
    extends _$CategoryParentCopyWithImpl<$Res, _$CategoryParentImpl>
    implements _$$CategoryParentImplCopyWith<$Res> {
  __$$CategoryParentImplCopyWithImpl(
      _$CategoryParentImpl _value, $Res Function(_$CategoryParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
  }) {
    return _then(_$CategoryParentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as CategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryParentImpl implements _CategoryParent {
  const _$CategoryParentImpl(
      {this.id, this.title, this.image, this.parent, this.description});

  factory _$CategoryParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryParentImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final CategoryParent? parent;
  @override
  final String? description;

  @override
  String toString() {
    return 'CategoryParent(id: $id, title: $title, image: $image, parent: $parent, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryParentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, parent, description);

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryParentImplCopyWith<_$CategoryParentImpl> get copyWith =>
      __$$CategoryParentImplCopyWithImpl<_$CategoryParentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryParentImplToJson(
      this,
    );
  }
}

abstract class _CategoryParent implements CategoryParent {
  const factory _CategoryParent(
      {final int? id,
      final String? title,
      final String? image,
      final CategoryParent? parent,
      final String? description}) = _$CategoryParentImpl;

  factory _CategoryParent.fromJson(Map<String, dynamic> json) =
      _$CategoryParentImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  CategoryParent? get parent;
  @override
  String? get description;

  /// Create a copy of CategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryParentImplCopyWith<_$CategoryParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
