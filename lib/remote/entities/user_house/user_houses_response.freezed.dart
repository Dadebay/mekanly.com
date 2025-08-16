// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_houses_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserHousesResponse _$UserHousesResponseFromJson(Map<String, dynamic> json) {
  return _UserHousesResponse.fromJson(json);
}

/// @nodoc
mixin _$UserHousesResponse {
  List<UserHouse>? get data => throw _privateConstructorUsedError;

  /// Serializes this UserHousesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHousesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHousesResponseCopyWith<UserHousesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHousesResponseCopyWith<$Res> {
  factory $UserHousesResponseCopyWith(
          UserHousesResponse value, $Res Function(UserHousesResponse) then) =
      _$UserHousesResponseCopyWithImpl<$Res, UserHousesResponse>;
  @useResult
  $Res call({List<UserHouse>? data});
}

/// @nodoc
class _$UserHousesResponseCopyWithImpl<$Res, $Val extends UserHousesResponse>
    implements $UserHousesResponseCopyWith<$Res> {
  _$UserHousesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHousesResponse
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
              as List<UserHouse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserHousesResponseImplCopyWith<$Res>
    implements $UserHousesResponseCopyWith<$Res> {
  factory _$$UserHousesResponseImplCopyWith(_$UserHousesResponseImpl value,
          $Res Function(_$UserHousesResponseImpl) then) =
      __$$UserHousesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserHouse>? data});
}

/// @nodoc
class __$$UserHousesResponseImplCopyWithImpl<$Res>
    extends _$UserHousesResponseCopyWithImpl<$Res, _$UserHousesResponseImpl>
    implements _$$UserHousesResponseImplCopyWith<$Res> {
  __$$UserHousesResponseImplCopyWithImpl(_$UserHousesResponseImpl _value,
      $Res Function(_$UserHousesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHousesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UserHousesResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserHouse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHousesResponseImpl implements _UserHousesResponse {
  const _$UserHousesResponseImpl({final List<UserHouse>? data}) : _data = data;

  factory _$UserHousesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHousesResponseImplFromJson(json);

  final List<UserHouse>? _data;
  @override
  List<UserHouse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserHousesResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHousesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of UserHousesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHousesResponseImplCopyWith<_$UserHousesResponseImpl> get copyWith =>
      __$$UserHousesResponseImplCopyWithImpl<_$UserHousesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHousesResponseImplToJson(
      this,
    );
  }
}

abstract class _UserHousesResponse implements UserHousesResponse {
  const factory _UserHousesResponse({final List<UserHouse>? data}) =
      _$UserHousesResponseImpl;

  factory _UserHousesResponse.fromJson(Map<String, dynamic> json) =
      _$UserHousesResponseImpl.fromJson;

  @override
  List<UserHouse>? get data;

  /// Create a copy of UserHousesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHousesResponseImplCopyWith<_$UserHousesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserHouse _$UserHouseFromJson(Map<String, dynamic> json) {
  return _UserHouse.fromJson(json);
}

/// @nodoc
mixin _$UserHouse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  UserHouseLocation? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String? get userPhone => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  int? get viewed => throw _privateConstructorUsedError;
  double? get star => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_number')
  int? get roomNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_number')
  int? get floorNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_type')
  UserHousePropertyType? get propertyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'repair_type')
  UserHouseRepairType? get repairType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get luxe => throw _privateConstructorUsedError;
  @JsonKey(name: 'luxe_status')
  bool? get luxeStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'luxe_expire')
  String? get luxeExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_status')
  bool? get vipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_expire')
  String? get vipExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'bron_number')
  String? get bronNumber => throw _privateConstructorUsedError;
  List<UserHouseImage>? get images => throw _privateConstructorUsedError;
  List<UserHousePossibility>? get possibilities =>
      throw _privateConstructorUsedError;
  int? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_comment')
  bool? get isComment => throw _privateConstructorUsedError;
  String? get who => throw _privateConstructorUsedError;
  double? get area => throw _privateConstructorUsedError;
  int? get exclusisive => throw _privateConstructorUsedError;
  String? get hashtag => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_number')
  int? get levelNumber => throw _privateConstructorUsedError;
  bool? get favorited => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  String? get shop => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserHouse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHouse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHouseCopyWith<UserHouse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHouseCopyWith<$Res> {
  factory $UserHouseCopyWith(UserHouse value, $Res Function(UserHouse) then) =
      _$UserHouseCopyWithImpl<$Res, UserHouse>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'category_name') String? categoryName,
      UserHouseLocation? location,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'user_phone') String? userPhone,
      String? name,
      String? description,
      String? price,
      int? viewed,
      double? star,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      @JsonKey(name: 'property_type') UserHousePropertyType? propertyType,
      @JsonKey(name: 'repair_type') UserHouseRepairType? repairType,
      String? status,
      bool? luxe,
      @JsonKey(name: 'luxe_status') bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') String? luxeExpire,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      @JsonKey(name: 'bron_number') String? bronNumber,
      List<UserHouseImage>? images,
      List<UserHousePossibility>? possibilities,
      int? comment,
      @JsonKey(name: 'is_comment') bool? isComment,
      String? who,
      double? area,
      int? exclusisive,
      String? hashtag,
      @JsonKey(name: 'level_number') int? levelNumber,
      bool? favorited,
      bool? liked,
      String? shop,
      String? type,
      String? date,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  $UserHouseLocationCopyWith<$Res>? get location;
  $UserHousePropertyTypeCopyWith<$Res>? get propertyType;
  $UserHouseRepairTypeCopyWith<$Res>? get repairType;
}

/// @nodoc
class _$UserHouseCopyWithImpl<$Res, $Val extends UserHouse>
    implements $UserHouseCopyWith<$Res> {
  _$UserHouseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHouse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? userPhone = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? viewed = freezed,
    Object? star = freezed,
    Object? commentCount = freezed,
    Object? roomNumber = freezed,
    Object? floorNumber = freezed,
    Object? propertyType = freezed,
    Object? repairType = freezed,
    Object? status = freezed,
    Object? luxe = freezed,
    Object? luxeStatus = freezed,
    Object? luxeExpire = freezed,
    Object? vipStatus = freezed,
    Object? vipExpire = freezed,
    Object? bronNumber = freezed,
    Object? images = freezed,
    Object? possibilities = freezed,
    Object? comment = freezed,
    Object? isComment = freezed,
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusisive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? favorited = freezed,
    Object? liked = freezed,
    Object? shop = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserHouseLocation?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as double?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as UserHousePropertyType?,
      repairType: freezed == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as UserHouseRepairType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      luxe: freezed == luxe
          ? _value.luxe
          : luxe // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeStatus: freezed == luxeStatus
          ? _value.luxeStatus
          : luxeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeExpire: freezed == luxeExpire
          ? _value.luxeExpire
          : luxeExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      bronNumber: freezed == bronNumber
          ? _value.bronNumber
          : bronNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UserHouseImage>?,
      possibilities: freezed == possibilities
          ? _value.possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<UserHousePossibility>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as bool?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double?,
      exclusisive: freezed == exclusisive
          ? _value.exclusisive
          : exclusisive // ignore: cast_nullable_to_non_nullable
              as int?,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as String?,
      levelNumber: freezed == levelNumber
          ? _value.levelNumber
          : levelNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      favorited: freezed == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of UserHouse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHouseLocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $UserHouseLocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of UserHouse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHousePropertyTypeCopyWith<$Res>? get propertyType {
    if (_value.propertyType == null) {
      return null;
    }

    return $UserHousePropertyTypeCopyWith<$Res>(_value.propertyType!, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

  /// Create a copy of UserHouse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserHouseRepairTypeCopyWith<$Res>? get repairType {
    if (_value.repairType == null) {
      return null;
    }

    return $UserHouseRepairTypeCopyWith<$Res>(_value.repairType!, (value) {
      return _then(_value.copyWith(repairType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserHouseImplCopyWith<$Res>
    implements $UserHouseCopyWith<$Res> {
  factory _$$UserHouseImplCopyWith(
          _$UserHouseImpl value, $Res Function(_$UserHouseImpl) then) =
      __$$UserHouseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'category_name') String? categoryName,
      UserHouseLocation? location,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'user_phone') String? userPhone,
      String? name,
      String? description,
      String? price,
      int? viewed,
      double? star,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      @JsonKey(name: 'property_type') UserHousePropertyType? propertyType,
      @JsonKey(name: 'repair_type') UserHouseRepairType? repairType,
      String? status,
      bool? luxe,
      @JsonKey(name: 'luxe_status') bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') String? luxeExpire,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      @JsonKey(name: 'bron_number') String? bronNumber,
      List<UserHouseImage>? images,
      List<UserHousePossibility>? possibilities,
      int? comment,
      @JsonKey(name: 'is_comment') bool? isComment,
      String? who,
      double? area,
      int? exclusisive,
      String? hashtag,
      @JsonKey(name: 'level_number') int? levelNumber,
      bool? favorited,
      bool? liked,
      String? shop,
      String? type,
      String? date,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  @override
  $UserHouseLocationCopyWith<$Res>? get location;
  @override
  $UserHousePropertyTypeCopyWith<$Res>? get propertyType;
  @override
  $UserHouseRepairTypeCopyWith<$Res>? get repairType;
}

/// @nodoc
class __$$UserHouseImplCopyWithImpl<$Res>
    extends _$UserHouseCopyWithImpl<$Res, _$UserHouseImpl>
    implements _$$UserHouseImplCopyWith<$Res> {
  __$$UserHouseImplCopyWithImpl(
      _$UserHouseImpl _value, $Res Function(_$UserHouseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHouse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? userPhone = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? viewed = freezed,
    Object? star = freezed,
    Object? commentCount = freezed,
    Object? roomNumber = freezed,
    Object? floorNumber = freezed,
    Object? propertyType = freezed,
    Object? repairType = freezed,
    Object? status = freezed,
    Object? luxe = freezed,
    Object? luxeStatus = freezed,
    Object? luxeExpire = freezed,
    Object? vipStatus = freezed,
    Object? vipExpire = freezed,
    Object? bronNumber = freezed,
    Object? images = freezed,
    Object? possibilities = freezed,
    Object? comment = freezed,
    Object? isComment = freezed,
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusisive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? favorited = freezed,
    Object? liked = freezed,
    Object? shop = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$UserHouseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as UserHouseLocation?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as double?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as UserHousePropertyType?,
      repairType: freezed == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as UserHouseRepairType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      luxe: freezed == luxe
          ? _value.luxe
          : luxe // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeStatus: freezed == luxeStatus
          ? _value.luxeStatus
          : luxeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeExpire: freezed == luxeExpire
          ? _value.luxeExpire
          : luxeExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      bronNumber: freezed == bronNumber
          ? _value.bronNumber
          : bronNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<UserHouseImage>?,
      possibilities: freezed == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<UserHousePossibility>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as bool?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as double?,
      exclusisive: freezed == exclusisive
          ? _value.exclusisive
          : exclusisive // ignore: cast_nullable_to_non_nullable
              as int?,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as String?,
      levelNumber: freezed == levelNumber
          ? _value.levelNumber
          : levelNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      favorited: freezed == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHouseImpl implements _UserHouse {
  const _$UserHouseImpl(
      {this.id,
      @JsonKey(name: 'category_name') this.categoryName,
      this.location,
      @JsonKey(name: 'user_id') this.userId,
      this.username,
      @JsonKey(name: 'user_phone') this.userPhone,
      this.name,
      this.description,
      this.price,
      this.viewed,
      this.star,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'room_number') this.roomNumber,
      @JsonKey(name: 'floor_number') this.floorNumber,
      @JsonKey(name: 'property_type') this.propertyType,
      @JsonKey(name: 'repair_type') this.repairType,
      this.status,
      this.luxe,
      @JsonKey(name: 'luxe_status') this.luxeStatus,
      @JsonKey(name: 'luxe_expire') this.luxeExpire,
      @JsonKey(name: 'vip_status') this.vipStatus,
      @JsonKey(name: 'vip_expire') this.vipExpire,
      @JsonKey(name: 'bron_number') this.bronNumber,
      final List<UserHouseImage>? images,
      final List<UserHousePossibility>? possibilities,
      this.comment,
      @JsonKey(name: 'is_comment') this.isComment,
      this.who,
      this.area,
      this.exclusisive,
      this.hashtag,
      @JsonKey(name: 'level_number') this.levelNumber,
      this.favorited,
      this.liked,
      this.shop,
      this.type,
      this.date,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt})
      : _images = images,
        _possibilities = possibilities;

  factory _$UserHouseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHouseImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  final UserHouseLocation? location;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? username;
  @override
  @JsonKey(name: 'user_phone')
  final String? userPhone;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final int? viewed;
  @override
  final double? star;
  @override
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  @override
  @JsonKey(name: 'room_number')
  final int? roomNumber;
  @override
  @JsonKey(name: 'floor_number')
  final int? floorNumber;
  @override
  @JsonKey(name: 'property_type')
  final UserHousePropertyType? propertyType;
  @override
  @JsonKey(name: 'repair_type')
  final UserHouseRepairType? repairType;
  @override
  final String? status;
  @override
  final bool? luxe;
  @override
  @JsonKey(name: 'luxe_status')
  final bool? luxeStatus;
  @override
  @JsonKey(name: 'luxe_expire')
  final String? luxeExpire;
  @override
  @JsonKey(name: 'vip_status')
  final bool? vipStatus;
  @override
  @JsonKey(name: 'vip_expire')
  final String? vipExpire;
  @override
  @JsonKey(name: 'bron_number')
  final String? bronNumber;
  final List<UserHouseImage>? _images;
  @override
  List<UserHouseImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserHousePossibility>? _possibilities;
  @override
  List<UserHousePossibility>? get possibilities {
    final value = _possibilities;
    if (value == null) return null;
    if (_possibilities is EqualUnmodifiableListView) return _possibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? comment;
  @override
  @JsonKey(name: 'is_comment')
  final bool? isComment;
  @override
  final String? who;
  @override
  final double? area;
  @override
  final int? exclusisive;
  @override
  final String? hashtag;
  @override
  @JsonKey(name: 'level_number')
  final int? levelNumber;
  @override
  final bool? favorited;
  @override
  final bool? liked;
  @override
  final String? shop;
  @override
  final String? type;
  @override
  final String? date;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'UserHouse(id: $id, categoryName: $categoryName, location: $location, userId: $userId, username: $username, userPhone: $userPhone, name: $name, description: $description, price: $price, viewed: $viewed, star: $star, commentCount: $commentCount, roomNumber: $roomNumber, floorNumber: $floorNumber, propertyType: $propertyType, repairType: $repairType, status: $status, luxe: $luxe, luxeStatus: $luxeStatus, luxeExpire: $luxeExpire, vipStatus: $vipStatus, vipExpire: $vipExpire, bronNumber: $bronNumber, images: $images, possibilities: $possibilities, comment: $comment, isComment: $isComment, who: $who, area: $area, exclusisive: $exclusisive, hashtag: $hashtag, levelNumber: $levelNumber, favorited: $favorited, liked: $liked, shop: $shop, type: $type, date: $date, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHouseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.viewed, viewed) || other.viewed == viewed) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.repairType, repairType) ||
                other.repairType == repairType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.luxe, luxe) || other.luxe == luxe) &&
            (identical(other.luxeStatus, luxeStatus) ||
                other.luxeStatus == luxeStatus) &&
            (identical(other.luxeExpire, luxeExpire) ||
                other.luxeExpire == luxeExpire) &&
            (identical(other.vipStatus, vipStatus) ||
                other.vipStatus == vipStatus) &&
            (identical(other.vipExpire, vipExpire) ||
                other.vipExpire == vipExpire) &&
            (identical(other.bronNumber, bronNumber) ||
                other.bronNumber == bronNumber) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._possibilities, _possibilities) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isComment, isComment) ||
                other.isComment == isComment) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.exclusisive, exclusisive) ||
                other.exclusisive == exclusisive) &&
            (identical(other.hashtag, hashtag) || other.hashtag == hashtag) &&
            (identical(other.levelNumber, levelNumber) ||
                other.levelNumber == levelNumber) &&
            (identical(other.favorited, favorited) ||
                other.favorited == favorited) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryName,
        location,
        userId,
        username,
        userPhone,
        name,
        description,
        price,
        viewed,
        star,
        commentCount,
        roomNumber,
        floorNumber,
        propertyType,
        repairType,
        status,
        luxe,
        luxeStatus,
        luxeExpire,
        vipStatus,
        vipExpire,
        bronNumber,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_possibilities),
        comment,
        isComment,
        who,
        area,
        exclusisive,
        hashtag,
        levelNumber,
        favorited,
        liked,
        shop,
        type,
        date,
        updatedAt,
        createdAt
      ]);

  /// Create a copy of UserHouse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHouseImplCopyWith<_$UserHouseImpl> get copyWith =>
      __$$UserHouseImplCopyWithImpl<_$UserHouseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHouseImplToJson(
      this,
    );
  }
}

abstract class _UserHouse implements UserHouse {
  const factory _UserHouse(
      {final int? id,
      @JsonKey(name: 'category_name') final String? categoryName,
      final UserHouseLocation? location,
      @JsonKey(name: 'user_id') final int? userId,
      final String? username,
      @JsonKey(name: 'user_phone') final String? userPhone,
      final String? name,
      final String? description,
      final String? price,
      final int? viewed,
      final double? star,
      @JsonKey(name: 'comment_count') final int? commentCount,
      @JsonKey(name: 'room_number') final int? roomNumber,
      @JsonKey(name: 'floor_number') final int? floorNumber,
      @JsonKey(name: 'property_type') final UserHousePropertyType? propertyType,
      @JsonKey(name: 'repair_type') final UserHouseRepairType? repairType,
      final String? status,
      final bool? luxe,
      @JsonKey(name: 'luxe_status') final bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') final String? luxeExpire,
      @JsonKey(name: 'vip_status') final bool? vipStatus,
      @JsonKey(name: 'vip_expire') final String? vipExpire,
      @JsonKey(name: 'bron_number') final String? bronNumber,
      final List<UserHouseImage>? images,
      final List<UserHousePossibility>? possibilities,
      final int? comment,
      @JsonKey(name: 'is_comment') final bool? isComment,
      final String? who,
      final double? area,
      final int? exclusisive,
      final String? hashtag,
      @JsonKey(name: 'level_number') final int? levelNumber,
      final bool? favorited,
      final bool? liked,
      final String? shop,
      final String? type,
      final String? date,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'created_at')
      final DateTime? createdAt}) = _$UserHouseImpl;

  factory _UserHouse.fromJson(Map<String, dynamic> json) =
      _$UserHouseImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  UserHouseLocation? get location;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get username;
  @override
  @JsonKey(name: 'user_phone')
  String? get userPhone;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get price;
  @override
  int? get viewed;
  @override
  double? get star;
  @override
  @JsonKey(name: 'comment_count')
  int? get commentCount;
  @override
  @JsonKey(name: 'room_number')
  int? get roomNumber;
  @override
  @JsonKey(name: 'floor_number')
  int? get floorNumber;
  @override
  @JsonKey(name: 'property_type')
  UserHousePropertyType? get propertyType;
  @override
  @JsonKey(name: 'repair_type')
  UserHouseRepairType? get repairType;
  @override
  String? get status;
  @override
  bool? get luxe;
  @override
  @JsonKey(name: 'luxe_status')
  bool? get luxeStatus;
  @override
  @JsonKey(name: 'luxe_expire')
  String? get luxeExpire;
  @override
  @JsonKey(name: 'vip_status')
  bool? get vipStatus;
  @override
  @JsonKey(name: 'vip_expire')
  String? get vipExpire;
  @override
  @JsonKey(name: 'bron_number')
  String? get bronNumber;
  @override
  List<UserHouseImage>? get images;
  @override
  List<UserHousePossibility>? get possibilities;
  @override
  int? get comment;
  @override
  @JsonKey(name: 'is_comment')
  bool? get isComment;
  @override
  String? get who;
  @override
  double? get area;
  @override
  int? get exclusisive;
  @override
  String? get hashtag;
  @override
  @JsonKey(name: 'level_number')
  int? get levelNumber;
  @override
  bool? get favorited;
  @override
  bool? get liked;
  @override
  String? get shop;
  @override
  String? get type;
  @override
  String? get date;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of UserHouse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHouseImplCopyWith<_$UserHouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserHouseLocation _$UserHouseLocationFromJson(Map<String, dynamic> json) {
  return _UserHouseLocation.fromJson(json);
}

/// @nodoc
mixin _$UserHouseLocation {
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

  /// Serializes this UserHouseLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHouseLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHouseLocationCopyWith<UserHouseLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHouseLocationCopyWith<$Res> {
  factory $UserHouseLocationCopyWith(
          UserHouseLocation value, $Res Function(UserHouseLocation) then) =
      _$UserHouseLocationCopyWithImpl<$Res, UserHouseLocation>;
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
class _$UserHouseLocationCopyWithImpl<$Res, $Val extends UserHouseLocation>
    implements $UserHouseLocationCopyWith<$Res> {
  _$UserHouseLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHouseLocation
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
abstract class _$$UserHouseLocationImplCopyWith<$Res>
    implements $UserHouseLocationCopyWith<$Res> {
  factory _$$UserHouseLocationImplCopyWith(_$UserHouseLocationImpl value,
          $Res Function(_$UserHouseLocationImpl) then) =
      __$$UserHouseLocationImplCopyWithImpl<$Res>;
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
class __$$UserHouseLocationImplCopyWithImpl<$Res>
    extends _$UserHouseLocationCopyWithImpl<$Res, _$UserHouseLocationImpl>
    implements _$$UserHouseLocationImplCopyWith<$Res> {
  __$$UserHouseLocationImplCopyWithImpl(_$UserHouseLocationImpl _value,
      $Res Function(_$UserHouseLocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHouseLocation
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
    return _then(_$UserHouseLocationImpl(
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
class _$UserHouseLocationImpl implements _UserHouseLocation {
  const _$UserHouseLocationImpl(
      {this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'parent_name') this.parentName});

  factory _$UserHouseLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHouseLocationImplFromJson(json);

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
    return 'UserHouseLocation(id: $id, parentId: $parentId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, parentName: $parentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHouseLocationImpl &&
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

  /// Create a copy of UserHouseLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHouseLocationImplCopyWith<_$UserHouseLocationImpl> get copyWith =>
      __$$UserHouseLocationImplCopyWithImpl<_$UserHouseLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHouseLocationImplToJson(
      this,
    );
  }
}

abstract class _UserHouseLocation implements UserHouseLocation {
  const factory _UserHouseLocation(
          {final int? id,
          @JsonKey(name: 'parent_id') final int? parentId,
          final String? name,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'parent_name') final String? parentName}) =
      _$UserHouseLocationImpl;

  factory _UserHouseLocation.fromJson(Map<String, dynamic> json) =
      _$UserHouseLocationImpl.fromJson;

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

  /// Create a copy of UserHouseLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHouseLocationImplCopyWith<_$UserHouseLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserHousePropertyType _$UserHousePropertyTypeFromJson(
    Map<String, dynamic> json) {
  return _UserHousePropertyType.fromJson(json);
}

/// @nodoc
mixin _$UserHousePropertyType {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this UserHousePropertyType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHousePropertyType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHousePropertyTypeCopyWith<UserHousePropertyType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHousePropertyTypeCopyWith<$Res> {
  factory $UserHousePropertyTypeCopyWith(UserHousePropertyType value,
          $Res Function(UserHousePropertyType) then) =
      _$UserHousePropertyTypeCopyWithImpl<$Res, UserHousePropertyType>;
  @useResult
  $Res call({int? id, String? name, String? icon});
}

/// @nodoc
class _$UserHousePropertyTypeCopyWithImpl<$Res,
        $Val extends UserHousePropertyType>
    implements $UserHousePropertyTypeCopyWith<$Res> {
  _$UserHousePropertyTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHousePropertyType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserHousePropertyTypeImplCopyWith<$Res>
    implements $UserHousePropertyTypeCopyWith<$Res> {
  factory _$$UserHousePropertyTypeImplCopyWith(
          _$UserHousePropertyTypeImpl value,
          $Res Function(_$UserHousePropertyTypeImpl) then) =
      __$$UserHousePropertyTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? icon});
}

/// @nodoc
class __$$UserHousePropertyTypeImplCopyWithImpl<$Res>
    extends _$UserHousePropertyTypeCopyWithImpl<$Res,
        _$UserHousePropertyTypeImpl>
    implements _$$UserHousePropertyTypeImplCopyWith<$Res> {
  __$$UserHousePropertyTypeImplCopyWithImpl(_$UserHousePropertyTypeImpl _value,
      $Res Function(_$UserHousePropertyTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHousePropertyType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$UserHousePropertyTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHousePropertyTypeImpl implements _UserHousePropertyType {
  const _$UserHousePropertyTypeImpl({this.id, this.name, this.icon});

  factory _$UserHousePropertyTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHousePropertyTypeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? icon;

  @override
  String toString() {
    return 'UserHousePropertyType(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHousePropertyTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of UserHousePropertyType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHousePropertyTypeImplCopyWith<_$UserHousePropertyTypeImpl>
      get copyWith => __$$UserHousePropertyTypeImplCopyWithImpl<
          _$UserHousePropertyTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHousePropertyTypeImplToJson(
      this,
    );
  }
}

abstract class _UserHousePropertyType implements UserHousePropertyType {
  const factory _UserHousePropertyType(
      {final int? id,
      final String? name,
      final String? icon}) = _$UserHousePropertyTypeImpl;

  factory _UserHousePropertyType.fromJson(Map<String, dynamic> json) =
      _$UserHousePropertyTypeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get icon;

  /// Create a copy of UserHousePropertyType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHousePropertyTypeImplCopyWith<_$UserHousePropertyTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserHouseRepairType _$UserHouseRepairTypeFromJson(Map<String, dynamic> json) {
  return _UserHouseRepairType.fromJson(json);
}

/// @nodoc
mixin _$UserHouseRepairType {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this UserHouseRepairType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHouseRepairType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHouseRepairTypeCopyWith<UserHouseRepairType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHouseRepairTypeCopyWith<$Res> {
  factory $UserHouseRepairTypeCopyWith(
          UserHouseRepairType value, $Res Function(UserHouseRepairType) then) =
      _$UserHouseRepairTypeCopyWithImpl<$Res, UserHouseRepairType>;
  @useResult
  $Res call({int? id, String? name, String? icon});
}

/// @nodoc
class _$UserHouseRepairTypeCopyWithImpl<$Res, $Val extends UserHouseRepairType>
    implements $UserHouseRepairTypeCopyWith<$Res> {
  _$UserHouseRepairTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHouseRepairType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserHouseRepairTypeImplCopyWith<$Res>
    implements $UserHouseRepairTypeCopyWith<$Res> {
  factory _$$UserHouseRepairTypeImplCopyWith(_$UserHouseRepairTypeImpl value,
          $Res Function(_$UserHouseRepairTypeImpl) then) =
      __$$UserHouseRepairTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? icon});
}

/// @nodoc
class __$$UserHouseRepairTypeImplCopyWithImpl<$Res>
    extends _$UserHouseRepairTypeCopyWithImpl<$Res, _$UserHouseRepairTypeImpl>
    implements _$$UserHouseRepairTypeImplCopyWith<$Res> {
  __$$UserHouseRepairTypeImplCopyWithImpl(_$UserHouseRepairTypeImpl _value,
      $Res Function(_$UserHouseRepairTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHouseRepairType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$UserHouseRepairTypeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHouseRepairTypeImpl implements _UserHouseRepairType {
  const _$UserHouseRepairTypeImpl({this.id, this.name, this.icon});

  factory _$UserHouseRepairTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHouseRepairTypeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? icon;

  @override
  String toString() {
    return 'UserHouseRepairType(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHouseRepairTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of UserHouseRepairType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHouseRepairTypeImplCopyWith<_$UserHouseRepairTypeImpl> get copyWith =>
      __$$UserHouseRepairTypeImplCopyWithImpl<_$UserHouseRepairTypeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHouseRepairTypeImplToJson(
      this,
    );
  }
}

abstract class _UserHouseRepairType implements UserHouseRepairType {
  const factory _UserHouseRepairType(
      {final int? id,
      final String? name,
      final String? icon}) = _$UserHouseRepairTypeImpl;

  factory _UserHouseRepairType.fromJson(Map<String, dynamic> json) =
      _$UserHouseRepairTypeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get icon;

  /// Create a copy of UserHouseRepairType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHouseRepairTypeImplCopyWith<_$UserHouseRepairTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserHouseImage _$UserHouseImageFromJson(Map<String, dynamic> json) {
  return _UserHouseImage.fromJson(json);
}

/// @nodoc
mixin _$UserHouseImage {
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this UserHouseImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHouseImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHouseImageCopyWith<UserHouseImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHouseImageCopyWith<$Res> {
  factory $UserHouseImageCopyWith(
          UserHouseImage value, $Res Function(UserHouseImage) then) =
      _$UserHouseImageCopyWithImpl<$Res, UserHouseImage>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$UserHouseImageCopyWithImpl<$Res, $Val extends UserHouseImage>
    implements $UserHouseImageCopyWith<$Res> {
  _$UserHouseImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHouseImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserHouseImageImplCopyWith<$Res>
    implements $UserHouseImageCopyWith<$Res> {
  factory _$$UserHouseImageImplCopyWith(_$UserHouseImageImpl value,
          $Res Function(_$UserHouseImageImpl) then) =
      __$$UserHouseImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$UserHouseImageImplCopyWithImpl<$Res>
    extends _$UserHouseImageCopyWithImpl<$Res, _$UserHouseImageImpl>
    implements _$$UserHouseImageImplCopyWith<$Res> {
  __$$UserHouseImageImplCopyWithImpl(
      _$UserHouseImageImpl _value, $Res Function(_$UserHouseImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHouseImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$UserHouseImageImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHouseImageImpl implements _UserHouseImage {
  const _$UserHouseImageImpl({this.url});

  factory _$UserHouseImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHouseImageImplFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'UserHouseImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHouseImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of UserHouseImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHouseImageImplCopyWith<_$UserHouseImageImpl> get copyWith =>
      __$$UserHouseImageImplCopyWithImpl<_$UserHouseImageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHouseImageImplToJson(
      this,
    );
  }
}

abstract class _UserHouseImage implements UserHouseImage {
  const factory _UserHouseImage({final String? url}) = _$UserHouseImageImpl;

  factory _UserHouseImage.fromJson(Map<String, dynamic> json) =
      _$UserHouseImageImpl.fromJson;

  @override
  String? get url;

  /// Create a copy of UserHouseImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHouseImageImplCopyWith<_$UserHouseImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserHousePossibility _$UserHousePossibilityFromJson(Map<String, dynamic> json) {
  return _UserHousePossibility.fromJson(json);
}

/// @nodoc
mixin _$UserHousePossibility {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this UserHousePossibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserHousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserHousePossibilityCopyWith<UserHousePossibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserHousePossibilityCopyWith<$Res> {
  factory $UserHousePossibilityCopyWith(UserHousePossibility value,
          $Res Function(UserHousePossibility) then) =
      _$UserHousePossibilityCopyWithImpl<$Res, UserHousePossibility>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$UserHousePossibilityCopyWithImpl<$Res,
        $Val extends UserHousePossibility>
    implements $UserHousePossibilityCopyWith<$Res> {
  _$UserHousePossibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserHousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserHousePossibilityImplCopyWith<$Res>
    implements $UserHousePossibilityCopyWith<$Res> {
  factory _$$UserHousePossibilityImplCopyWith(_$UserHousePossibilityImpl value,
          $Res Function(_$UserHousePossibilityImpl) then) =
      __$$UserHousePossibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$UserHousePossibilityImplCopyWithImpl<$Res>
    extends _$UserHousePossibilityCopyWithImpl<$Res, _$UserHousePossibilityImpl>
    implements _$$UserHousePossibilityImplCopyWith<$Res> {
  __$$UserHousePossibilityImplCopyWithImpl(_$UserHousePossibilityImpl _value,
      $Res Function(_$UserHousePossibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserHousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$UserHousePossibilityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserHousePossibilityImpl implements _UserHousePossibility {
  const _$UserHousePossibilityImpl({this.id, this.name});

  factory _$UserHousePossibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserHousePossibilityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'UserHousePossibility(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserHousePossibilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of UserHousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserHousePossibilityImplCopyWith<_$UserHousePossibilityImpl>
      get copyWith =>
          __$$UserHousePossibilityImplCopyWithImpl<_$UserHousePossibilityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserHousePossibilityImplToJson(
      this,
    );
  }
}

abstract class _UserHousePossibility implements UserHousePossibility {
  const factory _UserHousePossibility({final int? id, final String? name}) =
      _$UserHousePossibilityImpl;

  factory _UserHousePossibility.fromJson(Map<String, dynamic> json) =
      _$UserHousePossibilityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of UserHousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserHousePossibilityImplCopyWith<_$UserHousePossibilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
