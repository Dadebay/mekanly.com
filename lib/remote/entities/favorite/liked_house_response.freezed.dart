// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liked_house_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikedHouseResponse _$LikedHouseResponseFromJson(Map<String, dynamic> json) {
  return _LikedHouseResponse.fromJson(json);
}

/// @nodoc
mixin _$LikedHouseResponse {
  List<LikedHouse>? get data => throw _privateConstructorUsedError;

  /// Serializes this LikedHouseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LikedHouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LikedHouseResponseCopyWith<LikedHouseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedHouseResponseCopyWith<$Res> {
  factory $LikedHouseResponseCopyWith(
          LikedHouseResponse value, $Res Function(LikedHouseResponse) then) =
      _$LikedHouseResponseCopyWithImpl<$Res, LikedHouseResponse>;
  @useResult
  $Res call({List<LikedHouse>? data});
}

/// @nodoc
class _$LikedHouseResponseCopyWithImpl<$Res, $Val extends LikedHouseResponse>
    implements $LikedHouseResponseCopyWith<$Res> {
  _$LikedHouseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LikedHouseResponse
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
              as List<LikedHouse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikedHouseResponseImplCopyWith<$Res>
    implements $LikedHouseResponseCopyWith<$Res> {
  factory _$$LikedHouseResponseImplCopyWith(_$LikedHouseResponseImpl value,
          $Res Function(_$LikedHouseResponseImpl) then) =
      __$$LikedHouseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LikedHouse>? data});
}

/// @nodoc
class __$$LikedHouseResponseImplCopyWithImpl<$Res>
    extends _$LikedHouseResponseCopyWithImpl<$Res, _$LikedHouseResponseImpl>
    implements _$$LikedHouseResponseImplCopyWith<$Res> {
  __$$LikedHouseResponseImplCopyWithImpl(_$LikedHouseResponseImpl _value,
      $Res Function(_$LikedHouseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LikedHouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LikedHouseResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LikedHouse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikedHouseResponseImpl implements _LikedHouseResponse {
  const _$LikedHouseResponseImpl({final List<LikedHouse>? data}) : _data = data;

  factory _$LikedHouseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikedHouseResponseImplFromJson(json);

  final List<LikedHouse>? _data;
  @override
  List<LikedHouse>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LikedHouseResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedHouseResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of LikedHouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedHouseResponseImplCopyWith<_$LikedHouseResponseImpl> get copyWith =>
      __$$LikedHouseResponseImplCopyWithImpl<_$LikedHouseResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikedHouseResponseImplToJson(
      this,
    );
  }
}

abstract class _LikedHouseResponse implements LikedHouseResponse {
  const factory _LikedHouseResponse({final List<LikedHouse>? data}) =
      _$LikedHouseResponseImpl;

  factory _LikedHouseResponse.fromJson(Map<String, dynamic> json) =
      _$LikedHouseResponseImpl.fromJson;

  @override
  List<LikedHouse>? get data;

  /// Create a copy of LikedHouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikedHouseResponseImplCopyWith<_$LikedHouseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LikedHouse _$LikedHouseFromJson(Map<String, dynamic> json) {
  return _LikedHouse.fromJson(json);
}

/// @nodoc
mixin _$LikedHouse {
  @JsonKey(name: 'house_id')
  int? get houseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String? get userPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_parent_id')
  int? get locationParentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_parent_name')
  String? get locationParentName => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_id')
  int? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_name')
  String? get locationName => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  dynamic get star =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  String? get status => throw _privateConstructorUsedError;
  int? get luxe => throw _privateConstructorUsedError;
  @JsonKey(name: 'bron_number')
  String? get bronNumber => throw _privateConstructorUsedError;
  List<HouseImage>? get images => throw _privateConstructorUsedError;
  List<HousePossibility>? get possibilities =>
      throw _privateConstructorUsedError;
  dynamic get comment =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  dynamic get isComment =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  @JsonKey(name: 'is_comment')
  dynamic get who =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  dynamic get area =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  dynamic get exclusive =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  dynamic get hashtag =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  @JsonKey(name: 'level_number')
  dynamic get levelNumber =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  dynamic get reason =>
      throw _privateConstructorUsedError; // Using dynamic for null value
  int? get viewed => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_number')
  int? get roomNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_number')
  int? get floorNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'guest_number')
  int? get guestNumber => throw _privateConstructorUsedError;

  /// Serializes this LikedHouse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LikedHouse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LikedHouseCopyWith<LikedHouse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedHouseCopyWith<$Res> {
  factory $LikedHouseCopyWith(
          LikedHouse value, $Res Function(LikedHouse) then) =
      _$LikedHouseCopyWithImpl<$Res, LikedHouse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_phone') String? userPhone,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'location_parent_id') int? locationParentId,
      @JsonKey(name: 'location_parent_name') String? locationParentName,
      @JsonKey(name: 'location_id') int? locationId,
      @JsonKey(name: 'location_name') String? locationName,
      String? name,
      String? description,
      String? price,
      dynamic star,
      String? status,
      int? luxe,
      @JsonKey(name: 'bron_number') String? bronNumber,
      List<HouseImage>? images,
      List<HousePossibility>? possibilities,
      dynamic comment,
      dynamic isComment,
      @JsonKey(name: 'is_comment') dynamic who,
      dynamic area,
      dynamic exclusive,
      dynamic hashtag,
      @JsonKey(name: 'level_number') dynamic levelNumber,
      dynamic reason,
      int? viewed,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      @JsonKey(name: 'guest_number') int? guestNumber});
}

/// @nodoc
class _$LikedHouseCopyWithImpl<$Res, $Val extends LikedHouse>
    implements $LikedHouseCopyWith<$Res> {
  _$LikedHouseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LikedHouse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseId = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhone = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? locationParentId = freezed,
    Object? locationParentName = freezed,
    Object? locationId = freezed,
    Object? locationName = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? star = freezed,
    Object? status = freezed,
    Object? luxe = freezed,
    Object? bronNumber = freezed,
    Object? images = freezed,
    Object? possibilities = freezed,
    Object? comment = freezed,
    Object? isComment = freezed,
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? reason = freezed,
    Object? viewed = freezed,
    Object? roomNumber = freezed,
    Object? floorNumber = freezed,
    Object? guestNumber = freezed,
  }) {
    return _then(_value.copyWith(
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationParentId: freezed == locationParentId
          ? _value.locationParentId
          : locationParentId // ignore: cast_nullable_to_non_nullable
              as int?,
      locationParentName: freezed == locationParentName
          ? _value.locationParentName
          : locationParentName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
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
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      luxe: freezed == luxe
          ? _value.luxe
          : luxe // ignore: cast_nullable_to_non_nullable
              as int?,
      bronNumber: freezed == bronNumber
          ? _value.bronNumber
          : bronNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HouseImage>?,
      possibilities: freezed == possibilities
          ? _value.possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<HousePossibility>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exclusive: freezed == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as dynamic,
      levelNumber: freezed == levelNumber
          ? _value.levelNumber
          : levelNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      guestNumber: freezed == guestNumber
          ? _value.guestNumber
          : guestNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikedHouseImplCopyWith<$Res>
    implements $LikedHouseCopyWith<$Res> {
  factory _$$LikedHouseImplCopyWith(
          _$LikedHouseImpl value, $Res Function(_$LikedHouseImpl) then) =
      __$$LikedHouseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_phone') String? userPhone,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'location_parent_id') int? locationParentId,
      @JsonKey(name: 'location_parent_name') String? locationParentName,
      @JsonKey(name: 'location_id') int? locationId,
      @JsonKey(name: 'location_name') String? locationName,
      String? name,
      String? description,
      String? price,
      dynamic star,
      String? status,
      int? luxe,
      @JsonKey(name: 'bron_number') String? bronNumber,
      List<HouseImage>? images,
      List<HousePossibility>? possibilities,
      dynamic comment,
      dynamic isComment,
      @JsonKey(name: 'is_comment') dynamic who,
      dynamic area,
      dynamic exclusive,
      dynamic hashtag,
      @JsonKey(name: 'level_number') dynamic levelNumber,
      dynamic reason,
      int? viewed,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      @JsonKey(name: 'guest_number') int? guestNumber});
}

/// @nodoc
class __$$LikedHouseImplCopyWithImpl<$Res>
    extends _$LikedHouseCopyWithImpl<$Res, _$LikedHouseImpl>
    implements _$$LikedHouseImplCopyWith<$Res> {
  __$$LikedHouseImplCopyWithImpl(
      _$LikedHouseImpl _value, $Res Function(_$LikedHouseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LikedHouse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseId = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhone = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? locationParentId = freezed,
    Object? locationParentName = freezed,
    Object? locationId = freezed,
    Object? locationName = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? star = freezed,
    Object? status = freezed,
    Object? luxe = freezed,
    Object? bronNumber = freezed,
    Object? images = freezed,
    Object? possibilities = freezed,
    Object? comment = freezed,
    Object? isComment = freezed,
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? reason = freezed,
    Object? viewed = freezed,
    Object? roomNumber = freezed,
    Object? floorNumber = freezed,
    Object? guestNumber = freezed,
  }) {
    return _then(_$LikedHouseImpl(
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationParentId: freezed == locationParentId
          ? _value.locationParentId
          : locationParentId // ignore: cast_nullable_to_non_nullable
              as int?,
      locationParentName: freezed == locationParentName
          ? _value.locationParentName
          : locationParentName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
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
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      luxe: freezed == luxe
          ? _value.luxe
          : luxe // ignore: cast_nullable_to_non_nullable
              as int?,
      bronNumber: freezed == bronNumber
          ? _value.bronNumber
          : bronNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<HouseImage>?,
      possibilities: freezed == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<HousePossibility>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exclusive: freezed == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as dynamic,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as dynamic,
      levelNumber: freezed == levelNumber
          ? _value.levelNumber
          : levelNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      guestNumber: freezed == guestNumber
          ? _value.guestNumber
          : guestNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikedHouseImpl implements _LikedHouse {
  const _$LikedHouseImpl(
      {@JsonKey(name: 'house_id') this.houseId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'user_phone') this.userPhone,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'category_name') this.categoryName,
      @JsonKey(name: 'location_parent_id') this.locationParentId,
      @JsonKey(name: 'location_parent_name') this.locationParentName,
      @JsonKey(name: 'location_id') this.locationId,
      @JsonKey(name: 'location_name') this.locationName,
      this.name,
      this.description,
      this.price,
      this.star,
      this.status,
      this.luxe,
      @JsonKey(name: 'bron_number') this.bronNumber,
      final List<HouseImage>? images,
      final List<HousePossibility>? possibilities,
      this.comment,
      this.isComment,
      @JsonKey(name: 'is_comment') this.who,
      this.area,
      this.exclusive,
      this.hashtag,
      @JsonKey(name: 'level_number') this.levelNumber,
      this.reason,
      this.viewed,
      @JsonKey(name: 'room_number') this.roomNumber,
      @JsonKey(name: 'floor_number') this.floorNumber,
      @JsonKey(name: 'guest_number') this.guestNumber})
      : _images = images,
        _possibilities = possibilities;

  factory _$LikedHouseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikedHouseImplFromJson(json);

  @override
  @JsonKey(name: 'house_id')
  final int? houseId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_phone')
  final String? userPhone;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  @JsonKey(name: 'location_parent_id')
  final int? locationParentId;
  @override
  @JsonKey(name: 'location_parent_name')
  final String? locationParentName;
  @override
  @JsonKey(name: 'location_id')
  final int? locationId;
  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? price;
  @override
  final dynamic star;
// Using dynamic for null value
  @override
  final String? status;
  @override
  final int? luxe;
  @override
  @JsonKey(name: 'bron_number')
  final String? bronNumber;
  final List<HouseImage>? _images;
  @override
  List<HouseImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HousePossibility>? _possibilities;
  @override
  List<HousePossibility>? get possibilities {
    final value = _possibilities;
    if (value == null) return null;
    if (_possibilities is EqualUnmodifiableListView) return _possibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic comment;
// Using dynamic for null value
  @override
  final dynamic isComment;
// Using dynamic for null value
  @override
  @JsonKey(name: 'is_comment')
  final dynamic who;
// Using dynamic for null value
  @override
  final dynamic area;
// Using dynamic for null value
  @override
  final dynamic exclusive;
// Using dynamic for null value
  @override
  final dynamic hashtag;
// Using dynamic for null value
  @override
  @JsonKey(name: 'level_number')
  final dynamic levelNumber;
// Using dynamic for null value
  @override
  final dynamic reason;
// Using dynamic for null value
  @override
  final int? viewed;
  @override
  @JsonKey(name: 'room_number')
  final int? roomNumber;
  @override
  @JsonKey(name: 'floor_number')
  final int? floorNumber;
  @override
  @JsonKey(name: 'guest_number')
  final int? guestNumber;

  @override
  String toString() {
    return 'LikedHouse(houseId: $houseId, userId: $userId, userName: $userName, userPhone: $userPhone, categoryId: $categoryId, categoryName: $categoryName, locationParentId: $locationParentId, locationParentName: $locationParentName, locationId: $locationId, locationName: $locationName, name: $name, description: $description, price: $price, star: $star, status: $status, luxe: $luxe, bronNumber: $bronNumber, images: $images, possibilities: $possibilities, comment: $comment, isComment: $isComment, who: $who, area: $area, exclusive: $exclusive, hashtag: $hashtag, levelNumber: $levelNumber, reason: $reason, viewed: $viewed, roomNumber: $roomNumber, floorNumber: $floorNumber, guestNumber: $guestNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedHouseImpl &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.locationParentId, locationParentId) ||
                other.locationParentId == locationParentId) &&
            (identical(other.locationParentName, locationParentName) ||
                other.locationParentName == locationParentName) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other.star, star) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.luxe, luxe) || other.luxe == luxe) &&
            (identical(other.bronNumber, bronNumber) ||
                other.bronNumber == bronNumber) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._possibilities, _possibilities) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.isComment, isComment) &&
            const DeepCollectionEquality().equals(other.who, who) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.exclusive, exclusive) &&
            const DeepCollectionEquality().equals(other.hashtag, hashtag) &&
            const DeepCollectionEquality()
                .equals(other.levelNumber, levelNumber) &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            (identical(other.viewed, viewed) || other.viewed == viewed) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.guestNumber, guestNumber) ||
                other.guestNumber == guestNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        houseId,
        userId,
        userName,
        userPhone,
        categoryId,
        categoryName,
        locationParentId,
        locationParentName,
        locationId,
        locationName,
        name,
        description,
        price,
        const DeepCollectionEquality().hash(star),
        status,
        luxe,
        bronNumber,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_possibilities),
        const DeepCollectionEquality().hash(comment),
        const DeepCollectionEquality().hash(isComment),
        const DeepCollectionEquality().hash(who),
        const DeepCollectionEquality().hash(area),
        const DeepCollectionEquality().hash(exclusive),
        const DeepCollectionEquality().hash(hashtag),
        const DeepCollectionEquality().hash(levelNumber),
        const DeepCollectionEquality().hash(reason),
        viewed,
        roomNumber,
        floorNumber,
        guestNumber
      ]);

  /// Create a copy of LikedHouse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedHouseImplCopyWith<_$LikedHouseImpl> get copyWith =>
      __$$LikedHouseImplCopyWithImpl<_$LikedHouseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikedHouseImplToJson(
      this,
    );
  }
}

abstract class _LikedHouse implements LikedHouse {
  const factory _LikedHouse(
      {@JsonKey(name: 'house_id') final int? houseId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'user_phone') final String? userPhone,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'category_name') final String? categoryName,
      @JsonKey(name: 'location_parent_id') final int? locationParentId,
      @JsonKey(name: 'location_parent_name') final String? locationParentName,
      @JsonKey(name: 'location_id') final int? locationId,
      @JsonKey(name: 'location_name') final String? locationName,
      final String? name,
      final String? description,
      final String? price,
      final dynamic star,
      final String? status,
      final int? luxe,
      @JsonKey(name: 'bron_number') final String? bronNumber,
      final List<HouseImage>? images,
      final List<HousePossibility>? possibilities,
      final dynamic comment,
      final dynamic isComment,
      @JsonKey(name: 'is_comment') final dynamic who,
      final dynamic area,
      final dynamic exclusive,
      final dynamic hashtag,
      @JsonKey(name: 'level_number') final dynamic levelNumber,
      final dynamic reason,
      final int? viewed,
      @JsonKey(name: 'room_number') final int? roomNumber,
      @JsonKey(name: 'floor_number') final int? floorNumber,
      @JsonKey(name: 'guest_number')
      final int? guestNumber}) = _$LikedHouseImpl;

  factory _LikedHouse.fromJson(Map<String, dynamic> json) =
      _$LikedHouseImpl.fromJson;

  @override
  @JsonKey(name: 'house_id')
  int? get houseId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_phone')
  String? get userPhone;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  @JsonKey(name: 'location_parent_id')
  int? get locationParentId;
  @override
  @JsonKey(name: 'location_parent_name')
  String? get locationParentName;
  @override
  @JsonKey(name: 'location_id')
  int? get locationId;
  @override
  @JsonKey(name: 'location_name')
  String? get locationName;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get price;
  @override
  dynamic get star; // Using dynamic for null value
  @override
  String? get status;
  @override
  int? get luxe;
  @override
  @JsonKey(name: 'bron_number')
  String? get bronNumber;
  @override
  List<HouseImage>? get images;
  @override
  List<HousePossibility>? get possibilities;
  @override
  dynamic get comment; // Using dynamic for null value
  @override
  dynamic get isComment; // Using dynamic for null value
  @override
  @JsonKey(name: 'is_comment')
  dynamic get who; // Using dynamic for null value
  @override
  dynamic get area; // Using dynamic for null value
  @override
  dynamic get exclusive; // Using dynamic for null value
  @override
  dynamic get hashtag; // Using dynamic for null value
  @override
  @JsonKey(name: 'level_number')
  dynamic get levelNumber; // Using dynamic for null value
  @override
  dynamic get reason; // Using dynamic for null value
  @override
  int? get viewed;
  @override
  @JsonKey(name: 'room_number')
  int? get roomNumber;
  @override
  @JsonKey(name: 'floor_number')
  int? get floorNumber;
  @override
  @JsonKey(name: 'guest_number')
  int? get guestNumber;

  /// Create a copy of LikedHouse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikedHouseImplCopyWith<_$LikedHouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HouseImage _$HouseImageFromJson(Map<String, dynamic> json) {
  return _HouseImage.fromJson(json);
}

/// @nodoc
mixin _$HouseImage {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'house_id')
  int? get houseId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      {int? id,
      @JsonKey(name: 'house_id') int? houseId,
      String? url,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
      DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
      DateTime? updatedAt});
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
    Object? id = freezed,
    Object? houseId = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {int? id,
      @JsonKey(name: 'house_id') int? houseId,
      String? url,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
      DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
      DateTime? updatedAt});
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
    Object? id = freezed,
    Object? houseId = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$HouseImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseImageImpl implements _HouseImage {
  const _$HouseImageImpl(
      {this.id,
      @JsonKey(name: 'house_id') this.houseId,
      this.url,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
      this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
      this.updatedAt});

  factory _$HouseImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseImageImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'house_id')
  final int? houseId;
  @override
  final String? url;
  @override
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'HouseImage(id: $id, houseId: $houseId, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, houseId, url, createdAt, updatedAt);

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
      {final int? id,
      @JsonKey(name: 'house_id') final int? houseId,
      final String? url,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
      final DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
      final DateTime? updatedAt}) = _$HouseImageImpl;

  factory _HouseImage.fromJson(Map<String, dynamic> json) =
      _$HouseImageImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'house_id')
  int? get houseId;
  @override
  String? get url;
  @override
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
  DateTime? get updatedAt;

  /// Create a copy of HouseImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseImageImplCopyWith<_$HouseImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HousePossibility _$HousePossibilityFromJson(Map<String, dynamic> json) {
  return _HousePossibility.fromJson(json);
}

/// @nodoc
mixin _$HousePossibility {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  PossibilityPivot? get pivot => throw _privateConstructorUsedError;

  /// Serializes this HousePossibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HousePossibilityCopyWith<HousePossibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HousePossibilityCopyWith<$Res> {
  factory $HousePossibilityCopyWith(
          HousePossibility value, $Res Function(HousePossibility) then) =
      _$HousePossibilityCopyWithImpl<$Res, HousePossibility>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
      DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
      DateTime? updatedAt,
      PossibilityPivot? pivot});

  $PossibilityPivotCopyWith<$Res>? get pivot;
}

/// @nodoc
class _$HousePossibilityCopyWithImpl<$Res, $Val extends HousePossibility>
    implements $HousePossibilityCopyWith<$Res> {
  _$HousePossibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pivot = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PossibilityPivot?,
    ) as $Val);
  }

  /// Create a copy of HousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PossibilityPivotCopyWith<$Res>? get pivot {
    if (_value.pivot == null) {
      return null;
    }

    return $PossibilityPivotCopyWith<$Res>(_value.pivot!, (value) {
      return _then(_value.copyWith(pivot: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HousePossibilityImplCopyWith<$Res>
    implements $HousePossibilityCopyWith<$Res> {
  factory _$$HousePossibilityImplCopyWith(_$HousePossibilityImpl value,
          $Res Function(_$HousePossibilityImpl) then) =
      __$$HousePossibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
      DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
      DateTime? updatedAt,
      PossibilityPivot? pivot});

  @override
  $PossibilityPivotCopyWith<$Res>? get pivot;
}

/// @nodoc
class __$$HousePossibilityImplCopyWithImpl<$Res>
    extends _$HousePossibilityCopyWithImpl<$Res, _$HousePossibilityImpl>
    implements _$$HousePossibilityImplCopyWith<$Res> {
  __$$HousePossibilityImplCopyWithImpl(_$HousePossibilityImpl _value,
      $Res Function(_$HousePossibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? pivot = freezed,
  }) {
    return _then(_$HousePossibilityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      pivot: freezed == pivot
          ? _value.pivot
          : pivot // ignore: cast_nullable_to_non_nullable
              as PossibilityPivot?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HousePossibilityImpl implements _HousePossibility {
  const _$HousePossibilityImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
      this.createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
      this.updatedAt,
      this.pivot});

  factory _$HousePossibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HousePossibilityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
  final DateTime? updatedAt;
  @override
  final PossibilityPivot? pivot;

  @override
  String toString() {
    return 'HousePossibility(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, pivot: $pivot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HousePossibilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.pivot, pivot) || other.pivot == pivot));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, createdAt, updatedAt, pivot);

  /// Create a copy of HousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HousePossibilityImplCopyWith<_$HousePossibilityImpl> get copyWith =>
      __$$HousePossibilityImplCopyWithImpl<_$HousePossibilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HousePossibilityImplToJson(
      this,
    );
  }
}

abstract class _HousePossibility implements HousePossibility {
  const factory _HousePossibility(
      {final int? id,
      final String? name,
      @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
      final DateTime? createdAt,
      @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
      final DateTime? updatedAt,
      final PossibilityPivot? pivot}) = _$HousePossibilityImpl;

  factory _HousePossibility.fromJson(Map<String, dynamic> json) =
      _$HousePossibilityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
  DateTime? get updatedAt;
  @override
  PossibilityPivot? get pivot;

  /// Create a copy of HousePossibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HousePossibilityImplCopyWith<_$HousePossibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PossibilityPivot _$PossibilityPivotFromJson(Map<String, dynamic> json) {
  return _PossibilityPivot.fromJson(json);
}

/// @nodoc
mixin _$PossibilityPivot {
  @JsonKey(name: 'house_id')
  int? get houseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'possibility_id')
  int? get possibilityId => throw _privateConstructorUsedError;

  /// Serializes this PossibilityPivot to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PossibilityPivot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PossibilityPivotCopyWith<PossibilityPivot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossibilityPivotCopyWith<$Res> {
  factory $PossibilityPivotCopyWith(
          PossibilityPivot value, $Res Function(PossibilityPivot) then) =
      _$PossibilityPivotCopyWithImpl<$Res, PossibilityPivot>;
  @useResult
  $Res call(
      {@JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'possibility_id') int? possibilityId});
}

/// @nodoc
class _$PossibilityPivotCopyWithImpl<$Res, $Val extends PossibilityPivot>
    implements $PossibilityPivotCopyWith<$Res> {
  _$PossibilityPivotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PossibilityPivot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseId = freezed,
    Object? possibilityId = freezed,
  }) {
    return _then(_value.copyWith(
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      possibilityId: freezed == possibilityId
          ? _value.possibilityId
          : possibilityId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PossibilityPivotImplCopyWith<$Res>
    implements $PossibilityPivotCopyWith<$Res> {
  factory _$$PossibilityPivotImplCopyWith(_$PossibilityPivotImpl value,
          $Res Function(_$PossibilityPivotImpl) then) =
      __$$PossibilityPivotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'house_id') int? houseId,
      @JsonKey(name: 'possibility_id') int? possibilityId});
}

/// @nodoc
class __$$PossibilityPivotImplCopyWithImpl<$Res>
    extends _$PossibilityPivotCopyWithImpl<$Res, _$PossibilityPivotImpl>
    implements _$$PossibilityPivotImplCopyWith<$Res> {
  __$$PossibilityPivotImplCopyWithImpl(_$PossibilityPivotImpl _value,
      $Res Function(_$PossibilityPivotImpl) _then)
      : super(_value, _then);

  /// Create a copy of PossibilityPivot
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseId = freezed,
    Object? possibilityId = freezed,
  }) {
    return _then(_$PossibilityPivotImpl(
      houseId: freezed == houseId
          ? _value.houseId
          : houseId // ignore: cast_nullable_to_non_nullable
              as int?,
      possibilityId: freezed == possibilityId
          ? _value.possibilityId
          : possibilityId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PossibilityPivotImpl implements _PossibilityPivot {
  const _$PossibilityPivotImpl(
      {@JsonKey(name: 'house_id') this.houseId,
      @JsonKey(name: 'possibility_id') this.possibilityId});

  factory _$PossibilityPivotImpl.fromJson(Map<String, dynamic> json) =>
      _$$PossibilityPivotImplFromJson(json);

  @override
  @JsonKey(name: 'house_id')
  final int? houseId;
  @override
  @JsonKey(name: 'possibility_id')
  final int? possibilityId;

  @override
  String toString() {
    return 'PossibilityPivot(houseId: $houseId, possibilityId: $possibilityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PossibilityPivotImpl &&
            (identical(other.houseId, houseId) || other.houseId == houseId) &&
            (identical(other.possibilityId, possibilityId) ||
                other.possibilityId == possibilityId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, houseId, possibilityId);

  /// Create a copy of PossibilityPivot
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PossibilityPivotImplCopyWith<_$PossibilityPivotImpl> get copyWith =>
      __$$PossibilityPivotImplCopyWithImpl<_$PossibilityPivotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PossibilityPivotImplToJson(
      this,
    );
  }
}

abstract class _PossibilityPivot implements PossibilityPivot {
  const factory _PossibilityPivot(
          {@JsonKey(name: 'house_id') final int? houseId,
          @JsonKey(name: 'possibility_id') final int? possibilityId}) =
      _$PossibilityPivotImpl;

  factory _PossibilityPivot.fromJson(Map<String, dynamic> json) =
      _$PossibilityPivotImpl.fromJson;

  @override
  @JsonKey(name: 'house_id')
  int? get houseId;
  @override
  @JsonKey(name: 'possibility_id')
  int? get possibilityId;

  /// Create a copy of PossibilityPivot
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PossibilityPivotImplCopyWith<_$PossibilityPivotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
