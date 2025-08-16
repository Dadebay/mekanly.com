// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HouseDetailResponse _$HouseDetailResponseFromJson(Map<String, dynamic> json) {
  return _HouseDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$HouseDetailResponse {
  HouseData? get data => throw _privateConstructorUsedError;

  /// Serializes this HouseDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseDetailResponseCopyWith<HouseDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseDetailResponseCopyWith<$Res> {
  factory $HouseDetailResponseCopyWith(
          HouseDetailResponse value, $Res Function(HouseDetailResponse) then) =
      _$HouseDetailResponseCopyWithImpl<$Res, HouseDetailResponse>;
  @useResult
  $Res call({HouseData? data});

  $HouseDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$HouseDetailResponseCopyWithImpl<$Res, $Val extends HouseDetailResponse>
    implements $HouseDetailResponseCopyWith<$Res> {
  _$HouseDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseDetailResponse
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
              as HouseData?,
    ) as $Val);
  }

  /// Create a copy of HouseDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HouseDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HouseDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HouseDetailResponseImplCopyWith<$Res>
    implements $HouseDetailResponseCopyWith<$Res> {
  factory _$$HouseDetailResponseImplCopyWith(_$HouseDetailResponseImpl value,
          $Res Function(_$HouseDetailResponseImpl) then) =
      __$$HouseDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HouseData? data});

  @override
  $HouseDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HouseDetailResponseImplCopyWithImpl<$Res>
    extends _$HouseDetailResponseCopyWithImpl<$Res, _$HouseDetailResponseImpl>
    implements _$$HouseDetailResponseImplCopyWith<$Res> {
  __$$HouseDetailResponseImplCopyWithImpl(_$HouseDetailResponseImpl _value,
      $Res Function(_$HouseDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HouseDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$HouseDetailResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HouseData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseDetailResponseImpl implements _HouseDetailResponse {
  const _$HouseDetailResponseImpl({this.data});

  factory _$HouseDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseDetailResponseImplFromJson(json);

  @override
  final HouseData? data;

  @override
  String toString() {
    return 'HouseDetailResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseDetailResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of HouseDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseDetailResponseImplCopyWith<_$HouseDetailResponseImpl> get copyWith =>
      __$$HouseDetailResponseImplCopyWithImpl<_$HouseDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _HouseDetailResponse implements HouseDetailResponse {
  const factory _HouseDetailResponse({final HouseData? data}) =
      _$HouseDetailResponseImpl;

  factory _HouseDetailResponse.fromJson(Map<String, dynamic> json) =
      _$HouseDetailResponseImpl.fromJson;

  @override
  HouseData? get data;

  /// Create a copy of HouseDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseDetailResponseImplCopyWith<_$HouseDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HouseData _$HouseDataFromJson(Map<String, dynamic> json) {
  return _HouseData.fromJson(json);
}

/// @nodoc
mixin _$HouseData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'lower_price')
  String? get lowerPrice => throw _privateConstructorUsedError; // Added
  @JsonKey(name: 'lower_percentage')
  int? get lowerPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  int? get viewed => throw _privateConstructorUsedError;
  double? get star => throw _privateConstructorUsedError;
  @JsonKey(name: 'bron_number')
  String? get bronNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_number')
  int? get roomNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_number')
  int? get floorNumber => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get luxe => throw _privateConstructorUsedError;
  @JsonKey(name: 'luxe_status')
  bool? get luxeStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'luxe_expire')
  DateTime? get luxeExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_status')
  bool? get vipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_expire')
  DateTime? get vipExpire => throw _privateConstructorUsedError;
  List<HouseImage>? get images => throw _privateConstructorUsedError;
  List<Possibility>? get possibilities => throw _privateConstructorUsedError;
  int? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'write_comment')
  int? get writeComment => throw _privateConstructorUsedError;
  String? get who => throw _privateConstructorUsedError;
  int? get area => throw _privateConstructorUsedError;
  int? get exclusive => throw _privateConstructorUsedError;
  String? get hashtag => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_number')
  int? get levelNumber => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  String? get shop => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_type')
  PropertyType? get propertyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'repair_type')
  RepairType? get repairType => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_owner')
  bool? get isOwner => throw _privateConstructorUsedError;
  bool? get favorited => throw _privateConstructorUsedError;

  /// Serializes this HouseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseDataCopyWith<HouseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseDataCopyWith<$Res> {
  factory $HouseDataCopyWith(HouseData value, $Res Function(HouseData) then) =
      _$HouseDataCopyWithImpl<$Res, HouseData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'category_name') String? categoryName,
      Location? location,
      String? username,
      User? user,
      String? name,
      String? description,
      String? reason,
      String? price,
      @JsonKey(name: 'lower_price') String? lowerPrice,
      @JsonKey(name: 'lower_percentage') int? lowerPercentage,
      @JsonKey(name: 'comment_count') int? commentCount,
      int? viewed,
      double? star,
      @JsonKey(name: 'bron_number') String? bronNumber,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      String? status,
      int? luxe,
      @JsonKey(name: 'luxe_status') bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') DateTime? luxeExpire,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      @JsonKey(name: 'vip_expire') DateTime? vipExpire,
      List<HouseImage>? images,
      List<Possibility>? possibilities,
      int? comment,
      @JsonKey(name: 'write_comment') int? writeComment,
      String? who,
      int? area,
      int? exclusive,
      String? hashtag,
      @JsonKey(name: 'level_number') int? levelNumber,
      bool? liked,
      String? shop,
      String? type,
      @JsonKey(name: 'property_type') PropertyType? propertyType,
      @JsonKey(name: 'repair_type') RepairType? repairType,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? banner,
      @JsonKey(name: 'is_owner') bool? isOwner,
      bool? favorited});

  $LocationCopyWith<$Res>? get location;
  $UserCopyWith<$Res>? get user;
  $PropertyTypeCopyWith<$Res>? get propertyType;
  $RepairTypeCopyWith<$Res>? get repairType;
}

/// @nodoc
class _$HouseDataCopyWithImpl<$Res, $Val extends HouseData>
    implements $HouseDataCopyWith<$Res> {
  _$HouseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? location = freezed,
    Object? username = freezed,
    Object? user = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? reason = freezed,
    Object? price = freezed,
    Object? lowerPrice = freezed,
    Object? lowerPercentage = freezed,
    Object? commentCount = freezed,
    Object? viewed = freezed,
    Object? star = freezed,
    Object? bronNumber = freezed,
    Object? roomNumber = freezed,
    Object? floorNumber = freezed,
    Object? status = freezed,
    Object? luxe = freezed,
    Object? luxeStatus = freezed,
    Object? luxeExpire = freezed,
    Object? vipStatus = freezed,
    Object? vipExpire = freezed,
    Object? images = freezed,
    Object? possibilities = freezed,
    Object? comment = freezed,
    Object? writeComment = freezed,
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? liked = freezed,
    Object? shop = freezed,
    Object? type = freezed,
    Object? propertyType = freezed,
    Object? repairType = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? banner = freezed,
    Object? isOwner = freezed,
    Object? favorited = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      lowerPrice: freezed == lowerPrice
          ? _value.lowerPrice
          : lowerPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      lowerPercentage: freezed == lowerPercentage
          ? _value.lowerPercentage
          : lowerPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as double?,
      bronNumber: freezed == bronNumber
          ? _value.bronNumber
          : bronNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      luxe: freezed == luxe
          ? _value.luxe
          : luxe // ignore: cast_nullable_to_non_nullable
              as int?,
      luxeStatus: freezed == luxeStatus
          ? _value.luxeStatus
          : luxeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeExpire: freezed == luxeExpire
          ? _value.luxeExpire
          : luxeExpire // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HouseImage>?,
      possibilities: freezed == possibilities
          ? _value.possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<Possibility>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      writeComment: freezed == writeComment
          ? _value.writeComment
          : writeComment // ignore: cast_nullable_to_non_nullable
              as int?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusive: freezed == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as int?,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as String?,
      levelNumber: freezed == levelNumber
          ? _value.levelNumber
          : levelNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyType?,
      repairType: freezed == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as RepairType?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      isOwner: freezed == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
      favorited: freezed == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of HouseData
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

  /// Create a copy of HouseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of HouseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeCopyWith<$Res>? get propertyType {
    if (_value.propertyType == null) {
      return null;
    }

    return $PropertyTypeCopyWith<$Res>(_value.propertyType!, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

  /// Create a copy of HouseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepairTypeCopyWith<$Res>? get repairType {
    if (_value.repairType == null) {
      return null;
    }

    return $RepairTypeCopyWith<$Res>(_value.repairType!, (value) {
      return _then(_value.copyWith(repairType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HouseDataImplCopyWith<$Res>
    implements $HouseDataCopyWith<$Res> {
  factory _$$HouseDataImplCopyWith(
          _$HouseDataImpl value, $Res Function(_$HouseDataImpl) then) =
      __$$HouseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'category_name') String? categoryName,
      Location? location,
      String? username,
      User? user,
      String? name,
      String? description,
      String? reason,
      String? price,
      @JsonKey(name: 'lower_price') String? lowerPrice,
      @JsonKey(name: 'lower_percentage') int? lowerPercentage,
      @JsonKey(name: 'comment_count') int? commentCount,
      int? viewed,
      double? star,
      @JsonKey(name: 'bron_number') String? bronNumber,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      String? status,
      int? luxe,
      @JsonKey(name: 'luxe_status') bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') DateTime? luxeExpire,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      @JsonKey(name: 'vip_expire') DateTime? vipExpire,
      List<HouseImage>? images,
      List<Possibility>? possibilities,
      int? comment,
      @JsonKey(name: 'write_comment') int? writeComment,
      String? who,
      int? area,
      int? exclusive,
      String? hashtag,
      @JsonKey(name: 'level_number') int? levelNumber,
      bool? liked,
      String? shop,
      String? type,
      @JsonKey(name: 'property_type') PropertyType? propertyType,
      @JsonKey(name: 'repair_type') RepairType? repairType,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      String? banner,
      @JsonKey(name: 'is_owner') bool? isOwner,
      bool? favorited});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $PropertyTypeCopyWith<$Res>? get propertyType;
  @override
  $RepairTypeCopyWith<$Res>? get repairType;
}

/// @nodoc
class __$$HouseDataImplCopyWithImpl<$Res>
    extends _$HouseDataCopyWithImpl<$Res, _$HouseDataImpl>
    implements _$$HouseDataImplCopyWith<$Res> {
  __$$HouseDataImplCopyWithImpl(
      _$HouseDataImpl _value, $Res Function(_$HouseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HouseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? location = freezed,
    Object? username = freezed,
    Object? user = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? reason = freezed,
    Object? price = freezed,
    Object? lowerPrice = freezed,
    Object? lowerPercentage = freezed,
    Object? commentCount = freezed,
    Object? viewed = freezed,
    Object? star = freezed,
    Object? bronNumber = freezed,
    Object? roomNumber = freezed,
    Object? floorNumber = freezed,
    Object? status = freezed,
    Object? luxe = freezed,
    Object? luxeStatus = freezed,
    Object? luxeExpire = freezed,
    Object? vipStatus = freezed,
    Object? vipExpire = freezed,
    Object? images = freezed,
    Object? possibilities = freezed,
    Object? comment = freezed,
    Object? writeComment = freezed,
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? liked = freezed,
    Object? shop = freezed,
    Object? type = freezed,
    Object? propertyType = freezed,
    Object? repairType = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? banner = freezed,
    Object? isOwner = freezed,
    Object? favorited = freezed,
  }) {
    return _then(_$HouseDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      lowerPrice: freezed == lowerPrice
          ? _value.lowerPrice
          : lowerPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      lowerPercentage: freezed == lowerPercentage
          ? _value.lowerPercentage
          : lowerPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as double?,
      bronNumber: freezed == bronNumber
          ? _value.bronNumber
          : bronNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      luxe: freezed == luxe
          ? _value.luxe
          : luxe // ignore: cast_nullable_to_non_nullable
              as int?,
      luxeStatus: freezed == luxeStatus
          ? _value.luxeStatus
          : luxeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeExpire: freezed == luxeExpire
          ? _value.luxeExpire
          : luxeExpire // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HouseImage>?,
      possibilities: freezed == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<Possibility>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      writeComment: freezed == writeComment
          ? _value.writeComment
          : writeComment // ignore: cast_nullable_to_non_nullable
              as int?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusive: freezed == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as int?,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as String?,
      levelNumber: freezed == levelNumber
          ? _value.levelNumber
          : levelNumber // ignore: cast_nullable_to_non_nullable
              as int?,
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
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyType?,
      repairType: freezed == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as RepairType?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      isOwner: freezed == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
      favorited: freezed == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseDataImpl implements _HouseData {
  const _$HouseDataImpl(
      {this.id,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'category_name') this.categoryName,
      this.location,
      this.username,
      this.user,
      this.name,
      this.description,
      this.reason,
      this.price,
      @JsonKey(name: 'lower_price') this.lowerPrice,
      @JsonKey(name: 'lower_percentage') this.lowerPercentage,
      @JsonKey(name: 'comment_count') this.commentCount,
      this.viewed,
      this.star,
      @JsonKey(name: 'bron_number') this.bronNumber,
      @JsonKey(name: 'room_number') this.roomNumber,
      @JsonKey(name: 'floor_number') this.floorNumber,
      this.status,
      this.luxe,
      @JsonKey(name: 'luxe_status') this.luxeStatus,
      @JsonKey(name: 'luxe_expire') this.luxeExpire,
      @JsonKey(name: 'vip_status') this.vipStatus,
      @JsonKey(name: 'vip_expire') this.vipExpire,
      final List<HouseImage>? images,
      final List<Possibility>? possibilities,
      this.comment,
      @JsonKey(name: 'write_comment') this.writeComment,
      this.who,
      this.area,
      this.exclusive,
      this.hashtag,
      @JsonKey(name: 'level_number') this.levelNumber,
      this.liked,
      this.shop,
      this.type,
      @JsonKey(name: 'property_type') this.propertyType,
      @JsonKey(name: 'repair_type') this.repairType,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      this.banner,
      @JsonKey(name: 'is_owner') this.isOwner,
      this.favorited})
      : _images = images,
        _possibilities = possibilities;

  factory _$HouseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseDataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  final Location? location;
  @override
  final String? username;
  @override
  final User? user;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? reason;
  @override
  final String? price;
  @override
  @JsonKey(name: 'lower_price')
  final String? lowerPrice;
// Added
  @override
  @JsonKey(name: 'lower_percentage')
  final int? lowerPercentage;
  @override
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  @override
  final int? viewed;
  @override
  final double? star;
  @override
  @JsonKey(name: 'bron_number')
  final String? bronNumber;
  @override
  @JsonKey(name: 'room_number')
  final int? roomNumber;
  @override
  @JsonKey(name: 'floor_number')
  final int? floorNumber;
  @override
  final String? status;
  @override
  final int? luxe;
  @override
  @JsonKey(name: 'luxe_status')
  final bool? luxeStatus;
  @override
  @JsonKey(name: 'luxe_expire')
  final DateTime? luxeExpire;
  @override
  @JsonKey(name: 'vip_status')
  final bool? vipStatus;
  @override
  @JsonKey(name: 'vip_expire')
  final DateTime? vipExpire;
  final List<HouseImage>? _images;
  @override
  List<HouseImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Possibility>? _possibilities;
  @override
  List<Possibility>? get possibilities {
    final value = _possibilities;
    if (value == null) return null;
    if (_possibilities is EqualUnmodifiableListView) return _possibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? comment;
  @override
  @JsonKey(name: 'write_comment')
  final int? writeComment;
  @override
  final String? who;
  @override
  final int? area;
  @override
  final int? exclusive;
  @override
  final String? hashtag;
  @override
  @JsonKey(name: 'level_number')
  final int? levelNumber;
  @override
  final bool? liked;
  @override
  final String? shop;
  @override
  final String? type;
  @override
  @JsonKey(name: 'property_type')
  final PropertyType? propertyType;
  @override
  @JsonKey(name: 'repair_type')
  final RepairType? repairType;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  final String? banner;
  @override
  @JsonKey(name: 'is_owner')
  final bool? isOwner;
  @override
  final bool? favorited;

  @override
  String toString() {
    return 'HouseData(id: $id, categoryId: $categoryId, categoryName: $categoryName, location: $location, username: $username, user: $user, name: $name, description: $description, reason: $reason, price: $price, lowerPrice: $lowerPrice, lowerPercentage: $lowerPercentage, commentCount: $commentCount, viewed: $viewed, star: $star, bronNumber: $bronNumber, roomNumber: $roomNumber, floorNumber: $floorNumber, status: $status, luxe: $luxe, luxeStatus: $luxeStatus, luxeExpire: $luxeExpire, vipStatus: $vipStatus, vipExpire: $vipExpire, images: $images, possibilities: $possibilities, comment: $comment, writeComment: $writeComment, who: $who, area: $area, exclusive: $exclusive, hashtag: $hashtag, levelNumber: $levelNumber, liked: $liked, shop: $shop, type: $type, propertyType: $propertyType, repairType: $repairType, updatedAt: $updatedAt, createdAt: $createdAt, banner: $banner, isOwner: $isOwner, favorited: $favorited)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.lowerPrice, lowerPrice) ||
                other.lowerPrice == lowerPrice) &&
            (identical(other.lowerPercentage, lowerPercentage) ||
                other.lowerPercentage == lowerPercentage) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.viewed, viewed) || other.viewed == viewed) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.bronNumber, bronNumber) ||
                other.bronNumber == bronNumber) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
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
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._possibilities, _possibilities) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.writeComment, writeComment) ||
                other.writeComment == writeComment) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.exclusive, exclusive) ||
                other.exclusive == exclusive) &&
            (identical(other.hashtag, hashtag) || other.hashtag == hashtag) &&
            (identical(other.levelNumber, levelNumber) ||
                other.levelNumber == levelNumber) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.repairType, repairType) ||
                other.repairType == repairType) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner) &&
            (identical(other.favorited, favorited) ||
                other.favorited == favorited));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryId,
        categoryName,
        location,
        username,
        user,
        name,
        description,
        reason,
        price,
        lowerPrice,
        lowerPercentage,
        commentCount,
        viewed,
        star,
        bronNumber,
        roomNumber,
        floorNumber,
        status,
        luxe,
        luxeStatus,
        luxeExpire,
        vipStatus,
        vipExpire,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_possibilities),
        comment,
        writeComment,
        who,
        area,
        exclusive,
        hashtag,
        levelNumber,
        liked,
        shop,
        type,
        propertyType,
        repairType,
        updatedAt,
        createdAt,
        banner,
        isOwner,
        favorited
      ]);

  /// Create a copy of HouseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseDataImplCopyWith<_$HouseDataImpl> get copyWith =>
      __$$HouseDataImplCopyWithImpl<_$HouseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseDataImplToJson(
      this,
    );
  }
}

abstract class _HouseData implements HouseData {
  const factory _HouseData(
      {final int? id,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'category_name') final String? categoryName,
      final Location? location,
      final String? username,
      final User? user,
      final String? name,
      final String? description,
      final String? reason,
      final String? price,
      @JsonKey(name: 'lower_price') final String? lowerPrice,
      @JsonKey(name: 'lower_percentage') final int? lowerPercentage,
      @JsonKey(name: 'comment_count') final int? commentCount,
      final int? viewed,
      final double? star,
      @JsonKey(name: 'bron_number') final String? bronNumber,
      @JsonKey(name: 'room_number') final int? roomNumber,
      @JsonKey(name: 'floor_number') final int? floorNumber,
      final String? status,
      final int? luxe,
      @JsonKey(name: 'luxe_status') final bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') final DateTime? luxeExpire,
      @JsonKey(name: 'vip_status') final bool? vipStatus,
      @JsonKey(name: 'vip_expire') final DateTime? vipExpire,
      final List<HouseImage>? images,
      final List<Possibility>? possibilities,
      final int? comment,
      @JsonKey(name: 'write_comment') final int? writeComment,
      final String? who,
      final int? area,
      final int? exclusive,
      final String? hashtag,
      @JsonKey(name: 'level_number') final int? levelNumber,
      final bool? liked,
      final String? shop,
      final String? type,
      @JsonKey(name: 'property_type') final PropertyType? propertyType,
      @JsonKey(name: 'repair_type') final RepairType? repairType,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      final String? banner,
      @JsonKey(name: 'is_owner') final bool? isOwner,
      final bool? favorited}) = _$HouseDataImpl;

  factory _HouseData.fromJson(Map<String, dynamic> json) =
      _$HouseDataImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  Location? get location;
  @override
  String? get username;
  @override
  User? get user;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get reason;
  @override
  String? get price;
  @override
  @JsonKey(name: 'lower_price')
  String? get lowerPrice; // Added
  @override
  @JsonKey(name: 'lower_percentage')
  int? get lowerPercentage;
  @override
  @JsonKey(name: 'comment_count')
  int? get commentCount;
  @override
  int? get viewed;
  @override
  double? get star;
  @override
  @JsonKey(name: 'bron_number')
  String? get bronNumber;
  @override
  @JsonKey(name: 'room_number')
  int? get roomNumber;
  @override
  @JsonKey(name: 'floor_number')
  int? get floorNumber;
  @override
  String? get status;
  @override
  int? get luxe;
  @override
  @JsonKey(name: 'luxe_status')
  bool? get luxeStatus;
  @override
  @JsonKey(name: 'luxe_expire')
  DateTime? get luxeExpire;
  @override
  @JsonKey(name: 'vip_status')
  bool? get vipStatus;
  @override
  @JsonKey(name: 'vip_expire')
  DateTime? get vipExpire;
  @override
  List<HouseImage>? get images;
  @override
  List<Possibility>? get possibilities;
  @override
  int? get comment;
  @override
  @JsonKey(name: 'write_comment')
  int? get writeComment;
  @override
  String? get who;
  @override
  int? get area;
  @override
  int? get exclusive;
  @override
  String? get hashtag;
  @override
  @JsonKey(name: 'level_number')
  int? get levelNumber;
  @override
  bool? get liked;
  @override
  String? get shop;
  @override
  String? get type;
  @override
  @JsonKey(name: 'property_type')
  PropertyType? get propertyType;
  @override
  @JsonKey(name: 'repair_type')
  RepairType? get repairType;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  String? get banner;
  @override
  @JsonKey(name: 'is_owner')
  bool? get isOwner;
  @override
  bool? get favorited;

  /// Create a copy of HouseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseDataImplCopyWith<_$HouseDataImpl> get copyWith =>
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

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({int? id, String? username});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? username});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({this.id, this.username});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  final String? username;

  @override
  String toString() {
    return 'User(id: $id, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User({final int? id, final String? username}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  String? get username;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HouseImage _$HouseImageFromJson(Map<String, dynamic> json) {
  return _HouseImage.fromJson(json);
}

/// @nodoc
mixin _$HouseImage {
  String? get url => throw _privateConstructorUsedError;
  String? get original => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get watermark => throw _privateConstructorUsedError;

  /// Serializes this HouseImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseImageCopyWith<HouseImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseImageCopyWith<$Res> {
  factory $HouseImageCopyWith(
          HouseImage value, $Res Function(HouseImage) then) =
      _$HouseImageCopyWithImpl<$Res, HouseImage>;
  @useResult
  $Res call(
      {String? url, String? original, String? thumbnail, String? watermark});
}

/// @nodoc
class _$HouseImageCopyWithImpl<$Res, $Val extends HouseImage>
    implements $HouseImageCopyWith<$Res> {
  _$HouseImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? original = freezed,
    Object? thumbnail = freezed,
    Object? watermark = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      watermark: freezed == watermark
          ? _value.watermark
          : watermark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HouseImageImplCopyWith<$Res>
    implements $HouseImageCopyWith<$Res> {
  factory _$$HouseImageImplCopyWith(
          _$HouseImageImpl value, $Res Function(_$HouseImageImpl) then) =
      __$$HouseImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url, String? original, String? thumbnail, String? watermark});
}

/// @nodoc
class __$$HouseImageImplCopyWithImpl<$Res>
    extends _$HouseImageCopyWithImpl<$Res, _$HouseImageImpl>
    implements _$$HouseImageImplCopyWith<$Res> {
  __$$HouseImageImplCopyWithImpl(
      _$HouseImageImpl _value, $Res Function(_$HouseImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of HouseImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? original = freezed,
    Object? thumbnail = freezed,
    Object? watermark = freezed,
  }) {
    return _then(_$HouseImageImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      watermark: freezed == watermark
          ? _value.watermark
          : watermark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseImageImpl implements _HouseImage {
  const _$HouseImageImpl(
      {this.url, this.original, this.thumbnail, this.watermark});

  factory _$HouseImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseImageImplFromJson(json);

  @override
  final String? url;
  @override
  final String? original;
  @override
  final String? thumbnail;
  @override
  final String? watermark;

  @override
  String toString() {
    return 'HouseImage(url: $url, original: $original, thumbnail: $thumbnail, watermark: $watermark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseImageImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.watermark, watermark) ||
                other.watermark == watermark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, original, thumbnail, watermark);

  /// Create a copy of HouseImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseImageImplCopyWith<_$HouseImageImpl> get copyWith =>
      __$$HouseImageImplCopyWithImpl<_$HouseImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseImageImplToJson(
      this,
    );
  }
}

abstract class _HouseImage implements HouseImage {
  const factory _HouseImage(
      {final String? url,
      final String? original,
      final String? thumbnail,
      final String? watermark}) = _$HouseImageImpl;

  factory _HouseImage.fromJson(Map<String, dynamic> json) =
      _$HouseImageImpl.fromJson;

  @override
  String? get url;
  @override
  String? get original;
  @override
  String? get thumbnail;
  @override
  String? get watermark;

  /// Create a copy of HouseImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseImageImplCopyWith<_$HouseImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Possibility _$PossibilityFromJson(Map<String, dynamic> json) {
  return _Possibility.fromJson(json);
}

/// @nodoc
mixin _$Possibility {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this Possibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Possibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PossibilityCopyWith<Possibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossibilityCopyWith<$Res> {
  factory $PossibilityCopyWith(
          Possibility value, $Res Function(Possibility) then) =
      _$PossibilityCopyWithImpl<$Res, Possibility>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$PossibilityCopyWithImpl<$Res, $Val extends Possibility>
    implements $PossibilityCopyWith<$Res> {
  _$PossibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Possibility
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
abstract class _$$PossibilityImplCopyWith<$Res>
    implements $PossibilityCopyWith<$Res> {
  factory _$$PossibilityImplCopyWith(
          _$PossibilityImpl value, $Res Function(_$PossibilityImpl) then) =
      __$$PossibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$PossibilityImplCopyWithImpl<$Res>
    extends _$PossibilityCopyWithImpl<$Res, _$PossibilityImpl>
    implements _$$PossibilityImplCopyWith<$Res> {
  __$$PossibilityImplCopyWithImpl(
      _$PossibilityImpl _value, $Res Function(_$PossibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Possibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PossibilityImpl(
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
class _$PossibilityImpl implements _Possibility {
  const _$PossibilityImpl({this.id, this.name});

  factory _$PossibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PossibilityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Possibility(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PossibilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Possibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PossibilityImplCopyWith<_$PossibilityImpl> get copyWith =>
      __$$PossibilityImplCopyWithImpl<_$PossibilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PossibilityImplToJson(
      this,
    );
  }
}

abstract class _Possibility implements Possibility {
  const factory _Possibility({final int? id, final String? name}) =
      _$PossibilityImpl;

  factory _Possibility.fromJson(Map<String, dynamic> json) =
      _$PossibilityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of Possibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PossibilityImplCopyWith<_$PossibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
