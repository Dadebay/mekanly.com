// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GlobalOptionsResponse _$GlobalOptionsResponseFromJson(
    Map<String, dynamic> json) {
  return _GlobalOptionsResponse.fromJson(json);
}

/// @nodoc
mixin _$GlobalOptionsResponse {
  GlobalOptions get data => throw _privateConstructorUsedError;

  /// Serializes this GlobalOptionsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GlobalOptionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlobalOptionsResponseCopyWith<GlobalOptionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalOptionsResponseCopyWith<$Res> {
  factory $GlobalOptionsResponseCopyWith(GlobalOptionsResponse value,
          $Res Function(GlobalOptionsResponse) then) =
      _$GlobalOptionsResponseCopyWithImpl<$Res, GlobalOptionsResponse>;
  @useResult
  $Res call({GlobalOptions data});

  $GlobalOptionsCopyWith<$Res> get data;
}

/// @nodoc
class _$GlobalOptionsResponseCopyWithImpl<$Res,
        $Val extends GlobalOptionsResponse>
    implements $GlobalOptionsResponseCopyWith<$Res> {
  _$GlobalOptionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalOptionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GlobalOptions,
    ) as $Val);
  }

  /// Create a copy of GlobalOptionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GlobalOptionsCopyWith<$Res> get data {
    return $GlobalOptionsCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GlobalOptionsResponseImplCopyWith<$Res>
    implements $GlobalOptionsResponseCopyWith<$Res> {
  factory _$$GlobalOptionsResponseImplCopyWith(
          _$GlobalOptionsResponseImpl value,
          $Res Function(_$GlobalOptionsResponseImpl) then) =
      __$$GlobalOptionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GlobalOptions data});

  @override
  $GlobalOptionsCopyWith<$Res> get data;
}

/// @nodoc
class __$$GlobalOptionsResponseImplCopyWithImpl<$Res>
    extends _$GlobalOptionsResponseCopyWithImpl<$Res,
        _$GlobalOptionsResponseImpl>
    implements _$$GlobalOptionsResponseImplCopyWith<$Res> {
  __$$GlobalOptionsResponseImplCopyWithImpl(_$GlobalOptionsResponseImpl _value,
      $Res Function(_$GlobalOptionsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalOptionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GlobalOptionsResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GlobalOptions,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlobalOptionsResponseImpl implements _GlobalOptionsResponse {
  const _$GlobalOptionsResponseImpl({required this.data});

  factory _$GlobalOptionsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalOptionsResponseImplFromJson(json);

  @override
  final GlobalOptions data;

  @override
  String toString() {
    return 'GlobalOptionsResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalOptionsResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of GlobalOptionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalOptionsResponseImplCopyWith<_$GlobalOptionsResponseImpl>
      get copyWith => __$$GlobalOptionsResponseImplCopyWithImpl<
          _$GlobalOptionsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalOptionsResponseImplToJson(
      this,
    );
  }
}

abstract class _GlobalOptionsResponse implements GlobalOptionsResponse {
  const factory _GlobalOptionsResponse({required final GlobalOptions data}) =
      _$GlobalOptionsResponseImpl;

  factory _GlobalOptionsResponse.fromJson(Map<String, dynamic> json) =
      _$GlobalOptionsResponseImpl.fromJson;

  @override
  GlobalOptions get data;

  /// Create a copy of GlobalOptionsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalOptionsResponseImplCopyWith<_$GlobalOptionsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GlobalOptions _$GlobalOptionsFromJson(Map<String, dynamic> json) {
  return _GlobalOptions.fromJson(json);
}

/// @nodoc
mixin _$GlobalOptions {
  List<Location> get locations => throw _privateConstructorUsedError;
  List<CategoryHouse> get categoryHouses => throw _privateConstructorUsedError;
  List<SubLocations>? get selectedSubLocations =>
      throw _privateConstructorUsedError;
  SubLocations? get selectedLocation => throw _privateConstructorUsedError;
  CategoryHouse? get selectedCategory => throw _privateConstructorUsedError;
  List<CategoryHouse>? get selectedCategoryHouses =>
      throw _privateConstructorUsedError;
  List<CategoryShop> get categoryShops => throw _privateConstructorUsedError;
  List<OptionsPossibility> get possibility =>
      throw _privateConstructorUsedError;
  List<PropertyType> get propertyType => throw _privateConstructorUsedError;
  List<RepairType> get repairType => throw _privateConstructorUsedError;
  List<OptionsPossibility>? get selectedPossibility =>
      throw _privateConstructorUsedError;
  List<PropertyType>? get selectedPropertyType =>
      throw _privateConstructorUsedError;
  List<RepairType>? get selectedRepairType =>
      throw _privateConstructorUsedError;
  int? get minPrice => throw _privateConstructorUsedError;
  int? get maxPrice => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get minArea => throw _privateConstructorUsedError;
  int? get maxArea => throw _privateConstructorUsedError;
  int? get area => throw _privateConstructorUsedError;
  bool? get fromHolder => throw _privateConstructorUsedError;
  bool? get justShowWithImage => throw _privateConstructorUsedError;
  bool? get justShowNewAdded => throw _privateConstructorUsedError;
  bool? get writeComment => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get search => throw _privateConstructorUsedError;
  List<HouseFloorCount>? get floorCount => throw _privateConstructorUsedError;
  List<HouseFloorCount>? get roomCount => throw _privateConstructorUsedError;
  List<HouseFloorCount>? get floorCountHouse =>
      throw _privateConstructorUsedError;
  List<HouseFloorCount>? get roomCountHouse =>
      throw _privateConstructorUsedError;
  List<HouseFloorCount>? get levelCountHouse =>
      throw _privateConstructorUsedError;
  List<HouseFloorCount>? get selectedRoomCount =>
      throw _privateConstructorUsedError;
  List<HouseFloorCount>? get selectedFloorCount =>
      throw _privateConstructorUsedError;
  List<HouseFloorCount>? get selectedRoomCountHouse =>
      throw _privateConstructorUsedError;
  List<HouseFloorCount>? get selectedFloorCountHouse =>
      throw _privateConstructorUsedError;
  List<HouseFloorCount>? get selectedLevelCountHouse =>
      throw _privateConstructorUsedError;
  bool? get payment => throw _privateConstructorUsedError;

  /// Serializes this GlobalOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GlobalOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlobalOptionsCopyWith<GlobalOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalOptionsCopyWith<$Res> {
  factory $GlobalOptionsCopyWith(
          GlobalOptions value, $Res Function(GlobalOptions) then) =
      _$GlobalOptionsCopyWithImpl<$Res, GlobalOptions>;
  @useResult
  $Res call(
      {List<Location> locations,
      List<CategoryHouse> categoryHouses,
      List<SubLocations>? selectedSubLocations,
      SubLocations? selectedLocation,
      CategoryHouse? selectedCategory,
      List<CategoryHouse>? selectedCategoryHouses,
      List<CategoryShop> categoryShops,
      List<OptionsPossibility> possibility,
      List<PropertyType> propertyType,
      List<RepairType> repairType,
      List<OptionsPossibility>? selectedPossibility,
      List<PropertyType>? selectedPropertyType,
      List<RepairType>? selectedRepairType,
      int? minPrice,
      int? maxPrice,
      int? price,
      int? minArea,
      int? maxArea,
      int? area,
      bool? fromHolder,
      bool? justShowWithImage,
      bool? justShowNewAdded,
      bool? writeComment,
      String? name,
      String? description,
      String? search,
      List<HouseFloorCount>? floorCount,
      List<HouseFloorCount>? roomCount,
      List<HouseFloorCount>? floorCountHouse,
      List<HouseFloorCount>? roomCountHouse,
      List<HouseFloorCount>? levelCountHouse,
      List<HouseFloorCount>? selectedRoomCount,
      List<HouseFloorCount>? selectedFloorCount,
      List<HouseFloorCount>? selectedRoomCountHouse,
      List<HouseFloorCount>? selectedFloorCountHouse,
      List<HouseFloorCount>? selectedLevelCountHouse,
      bool? payment});

  $SubLocationsCopyWith<$Res>? get selectedLocation;
  $CategoryHouseCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class _$GlobalOptionsCopyWithImpl<$Res, $Val extends GlobalOptions>
    implements $GlobalOptionsCopyWith<$Res> {
  _$GlobalOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? categoryHouses = null,
    Object? selectedSubLocations = freezed,
    Object? selectedLocation = freezed,
    Object? selectedCategory = freezed,
    Object? selectedCategoryHouses = freezed,
    Object? categoryShops = null,
    Object? possibility = null,
    Object? propertyType = null,
    Object? repairType = null,
    Object? selectedPossibility = freezed,
    Object? selectedPropertyType = freezed,
    Object? selectedRepairType = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? price = freezed,
    Object? minArea = freezed,
    Object? maxArea = freezed,
    Object? area = freezed,
    Object? fromHolder = freezed,
    Object? justShowWithImage = freezed,
    Object? justShowNewAdded = freezed,
    Object? writeComment = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? search = freezed,
    Object? floorCount = freezed,
    Object? roomCount = freezed,
    Object? floorCountHouse = freezed,
    Object? roomCountHouse = freezed,
    Object? levelCountHouse = freezed,
    Object? selectedRoomCount = freezed,
    Object? selectedFloorCount = freezed,
    Object? selectedRoomCountHouse = freezed,
    Object? selectedFloorCountHouse = freezed,
    Object? selectedLevelCountHouse = freezed,
    Object? payment = freezed,
  }) {
    return _then(_value.copyWith(
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      categoryHouses: null == categoryHouses
          ? _value.categoryHouses
          : categoryHouses // ignore: cast_nullable_to_non_nullable
              as List<CategoryHouse>,
      selectedSubLocations: freezed == selectedSubLocations
          ? _value.selectedSubLocations
          : selectedSubLocations // ignore: cast_nullable_to_non_nullable
              as List<SubLocations>?,
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as SubLocations?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryHouse?,
      selectedCategoryHouses: freezed == selectedCategoryHouses
          ? _value.selectedCategoryHouses
          : selectedCategoryHouses // ignore: cast_nullable_to_non_nullable
              as List<CategoryHouse>?,
      categoryShops: null == categoryShops
          ? _value.categoryShops
          : categoryShops // ignore: cast_nullable_to_non_nullable
              as List<CategoryShop>,
      possibility: null == possibility
          ? _value.possibility
          : possibility // ignore: cast_nullable_to_non_nullable
              as List<OptionsPossibility>,
      propertyType: null == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>,
      repairType: null == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as List<RepairType>,
      selectedPossibility: freezed == selectedPossibility
          ? _value.selectedPossibility
          : selectedPossibility // ignore: cast_nullable_to_non_nullable
              as List<OptionsPossibility>?,
      selectedPropertyType: freezed == selectedPropertyType
          ? _value.selectedPropertyType
          : selectedPropertyType // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>?,
      selectedRepairType: freezed == selectedRepairType
          ? _value.selectedRepairType
          : selectedRepairType // ignore: cast_nullable_to_non_nullable
              as List<RepairType>?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      minArea: freezed == minArea
          ? _value.minArea
          : minArea // ignore: cast_nullable_to_non_nullable
              as int?,
      maxArea: freezed == maxArea
          ? _value.maxArea
          : maxArea // ignore: cast_nullable_to_non_nullable
              as int?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      fromHolder: freezed == fromHolder
          ? _value.fromHolder
          : fromHolder // ignore: cast_nullable_to_non_nullable
              as bool?,
      justShowWithImage: freezed == justShowWithImage
          ? _value.justShowWithImage
          : justShowWithImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      justShowNewAdded: freezed == justShowNewAdded
          ? _value.justShowNewAdded
          : justShowNewAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      writeComment: freezed == writeComment
          ? _value.writeComment
          : writeComment // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      floorCount: freezed == floorCount
          ? _value.floorCount
          : floorCount // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      roomCount: freezed == roomCount
          ? _value.roomCount
          : roomCount // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      floorCountHouse: freezed == floorCountHouse
          ? _value.floorCountHouse
          : floorCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      roomCountHouse: freezed == roomCountHouse
          ? _value.roomCountHouse
          : roomCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      levelCountHouse: freezed == levelCountHouse
          ? _value.levelCountHouse
          : levelCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedRoomCount: freezed == selectedRoomCount
          ? _value.selectedRoomCount
          : selectedRoomCount // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedFloorCount: freezed == selectedFloorCount
          ? _value.selectedFloorCount
          : selectedFloorCount // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedRoomCountHouse: freezed == selectedRoomCountHouse
          ? _value.selectedRoomCountHouse
          : selectedRoomCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedFloorCountHouse: freezed == selectedFloorCountHouse
          ? _value.selectedFloorCountHouse
          : selectedFloorCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedLevelCountHouse: freezed == selectedLevelCountHouse
          ? _value.selectedLevelCountHouse
          : selectedLevelCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of GlobalOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubLocationsCopyWith<$Res>? get selectedLocation {
    if (_value.selectedLocation == null) {
      return null;
    }

    return $SubLocationsCopyWith<$Res>(_value.selectedLocation!, (value) {
      return _then(_value.copyWith(selectedLocation: value) as $Val);
    });
  }

  /// Create a copy of GlobalOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryHouseCopyWith<$Res>? get selectedCategory {
    if (_value.selectedCategory == null) {
      return null;
    }

    return $CategoryHouseCopyWith<$Res>(_value.selectedCategory!, (value) {
      return _then(_value.copyWith(selectedCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GlobalOptionsImplCopyWith<$Res>
    implements $GlobalOptionsCopyWith<$Res> {
  factory _$$GlobalOptionsImplCopyWith(
          _$GlobalOptionsImpl value, $Res Function(_$GlobalOptionsImpl) then) =
      __$$GlobalOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Location> locations,
      List<CategoryHouse> categoryHouses,
      List<SubLocations>? selectedSubLocations,
      SubLocations? selectedLocation,
      CategoryHouse? selectedCategory,
      List<CategoryHouse>? selectedCategoryHouses,
      List<CategoryShop> categoryShops,
      List<OptionsPossibility> possibility,
      List<PropertyType> propertyType,
      List<RepairType> repairType,
      List<OptionsPossibility>? selectedPossibility,
      List<PropertyType>? selectedPropertyType,
      List<RepairType>? selectedRepairType,
      int? minPrice,
      int? maxPrice,
      int? price,
      int? minArea,
      int? maxArea,
      int? area,
      bool? fromHolder,
      bool? justShowWithImage,
      bool? justShowNewAdded,
      bool? writeComment,
      String? name,
      String? description,
      String? search,
      List<HouseFloorCount>? floorCount,
      List<HouseFloorCount>? roomCount,
      List<HouseFloorCount>? floorCountHouse,
      List<HouseFloorCount>? roomCountHouse,
      List<HouseFloorCount>? levelCountHouse,
      List<HouseFloorCount>? selectedRoomCount,
      List<HouseFloorCount>? selectedFloorCount,
      List<HouseFloorCount>? selectedRoomCountHouse,
      List<HouseFloorCount>? selectedFloorCountHouse,
      List<HouseFloorCount>? selectedLevelCountHouse,
      bool? payment});

  @override
  $SubLocationsCopyWith<$Res>? get selectedLocation;
  @override
  $CategoryHouseCopyWith<$Res>? get selectedCategory;
}

/// @nodoc
class __$$GlobalOptionsImplCopyWithImpl<$Res>
    extends _$GlobalOptionsCopyWithImpl<$Res, _$GlobalOptionsImpl>
    implements _$$GlobalOptionsImplCopyWith<$Res> {
  __$$GlobalOptionsImplCopyWithImpl(
      _$GlobalOptionsImpl _value, $Res Function(_$GlobalOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locations = null,
    Object? categoryHouses = null,
    Object? selectedSubLocations = freezed,
    Object? selectedLocation = freezed,
    Object? selectedCategory = freezed,
    Object? selectedCategoryHouses = freezed,
    Object? categoryShops = null,
    Object? possibility = null,
    Object? propertyType = null,
    Object? repairType = null,
    Object? selectedPossibility = freezed,
    Object? selectedPropertyType = freezed,
    Object? selectedRepairType = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? price = freezed,
    Object? minArea = freezed,
    Object? maxArea = freezed,
    Object? area = freezed,
    Object? fromHolder = freezed,
    Object? justShowWithImage = freezed,
    Object? justShowNewAdded = freezed,
    Object? writeComment = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? search = freezed,
    Object? floorCount = freezed,
    Object? roomCount = freezed,
    Object? floorCountHouse = freezed,
    Object? roomCountHouse = freezed,
    Object? levelCountHouse = freezed,
    Object? selectedRoomCount = freezed,
    Object? selectedFloorCount = freezed,
    Object? selectedRoomCountHouse = freezed,
    Object? selectedFloorCountHouse = freezed,
    Object? selectedLevelCountHouse = freezed,
    Object? payment = freezed,
  }) {
    return _then(_$GlobalOptionsImpl(
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      categoryHouses: null == categoryHouses
          ? _value._categoryHouses
          : categoryHouses // ignore: cast_nullable_to_non_nullable
              as List<CategoryHouse>,
      selectedSubLocations: freezed == selectedSubLocations
          ? _value._selectedSubLocations
          : selectedSubLocations // ignore: cast_nullable_to_non_nullable
              as List<SubLocations>?,
      selectedLocation: freezed == selectedLocation
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as SubLocations?,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as CategoryHouse?,
      selectedCategoryHouses: freezed == selectedCategoryHouses
          ? _value._selectedCategoryHouses
          : selectedCategoryHouses // ignore: cast_nullable_to_non_nullable
              as List<CategoryHouse>?,
      categoryShops: null == categoryShops
          ? _value._categoryShops
          : categoryShops // ignore: cast_nullable_to_non_nullable
              as List<CategoryShop>,
      possibility: null == possibility
          ? _value._possibility
          : possibility // ignore: cast_nullable_to_non_nullable
              as List<OptionsPossibility>,
      propertyType: null == propertyType
          ? _value._propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>,
      repairType: null == repairType
          ? _value._repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as List<RepairType>,
      selectedPossibility: freezed == selectedPossibility
          ? _value._selectedPossibility
          : selectedPossibility // ignore: cast_nullable_to_non_nullable
              as List<OptionsPossibility>?,
      selectedPropertyType: freezed == selectedPropertyType
          ? _value._selectedPropertyType
          : selectedPropertyType // ignore: cast_nullable_to_non_nullable
              as List<PropertyType>?,
      selectedRepairType: freezed == selectedRepairType
          ? _value._selectedRepairType
          : selectedRepairType // ignore: cast_nullable_to_non_nullable
              as List<RepairType>?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      minArea: freezed == minArea
          ? _value.minArea
          : minArea // ignore: cast_nullable_to_non_nullable
              as int?,
      maxArea: freezed == maxArea
          ? _value.maxArea
          : maxArea // ignore: cast_nullable_to_non_nullable
              as int?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      fromHolder: freezed == fromHolder
          ? _value.fromHolder
          : fromHolder // ignore: cast_nullable_to_non_nullable
              as bool?,
      justShowWithImage: freezed == justShowWithImage
          ? _value.justShowWithImage
          : justShowWithImage // ignore: cast_nullable_to_non_nullable
              as bool?,
      justShowNewAdded: freezed == justShowNewAdded
          ? _value.justShowNewAdded
          : justShowNewAdded // ignore: cast_nullable_to_non_nullable
              as bool?,
      writeComment: freezed == writeComment
          ? _value.writeComment
          : writeComment // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      floorCount: freezed == floorCount
          ? _value._floorCount
          : floorCount // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      roomCount: freezed == roomCount
          ? _value._roomCount
          : roomCount // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      floorCountHouse: freezed == floorCountHouse
          ? _value._floorCountHouse
          : floorCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      roomCountHouse: freezed == roomCountHouse
          ? _value._roomCountHouse
          : roomCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      levelCountHouse: freezed == levelCountHouse
          ? _value._levelCountHouse
          : levelCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedRoomCount: freezed == selectedRoomCount
          ? _value._selectedRoomCount
          : selectedRoomCount // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedFloorCount: freezed == selectedFloorCount
          ? _value._selectedFloorCount
          : selectedFloorCount // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedRoomCountHouse: freezed == selectedRoomCountHouse
          ? _value._selectedRoomCountHouse
          : selectedRoomCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedFloorCountHouse: freezed == selectedFloorCountHouse
          ? _value._selectedFloorCountHouse
          : selectedFloorCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      selectedLevelCountHouse: freezed == selectedLevelCountHouse
          ? _value._selectedLevelCountHouse
          : selectedLevelCountHouse // ignore: cast_nullable_to_non_nullable
              as List<HouseFloorCount>?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GlobalOptionsImpl implements _GlobalOptions {
  const _$GlobalOptionsImpl(
      {required final List<Location> locations,
      required final List<CategoryHouse> categoryHouses,
      final List<SubLocations>? selectedSubLocations,
      this.selectedLocation,
      this.selectedCategory,
      final List<CategoryHouse>? selectedCategoryHouses,
      required final List<CategoryShop> categoryShops,
      required final List<OptionsPossibility> possibility,
      required final List<PropertyType> propertyType,
      required final List<RepairType> repairType,
      required final List<OptionsPossibility>? selectedPossibility,
      required final List<PropertyType>? selectedPropertyType,
      required final List<RepairType>? selectedRepairType,
      this.minPrice,
      this.maxPrice,
      this.price,
      this.minArea,
      this.maxArea,
      this.area,
      this.fromHolder,
      this.justShowWithImage,
      this.justShowNewAdded,
      this.writeComment,
      this.name,
      this.description,
      this.search,
      final List<HouseFloorCount>? floorCount,
      final List<HouseFloorCount>? roomCount,
      final List<HouseFloorCount>? floorCountHouse,
      final List<HouseFloorCount>? roomCountHouse,
      final List<HouseFloorCount>? levelCountHouse,
      final List<HouseFloorCount>? selectedRoomCount,
      final List<HouseFloorCount>? selectedFloorCount,
      final List<HouseFloorCount>? selectedRoomCountHouse,
      final List<HouseFloorCount>? selectedFloorCountHouse,
      final List<HouseFloorCount>? selectedLevelCountHouse,
      this.payment})
      : _locations = locations,
        _categoryHouses = categoryHouses,
        _selectedSubLocations = selectedSubLocations,
        _selectedCategoryHouses = selectedCategoryHouses,
        _categoryShops = categoryShops,
        _possibility = possibility,
        _propertyType = propertyType,
        _repairType = repairType,
        _selectedPossibility = selectedPossibility,
        _selectedPropertyType = selectedPropertyType,
        _selectedRepairType = selectedRepairType,
        _floorCount = floorCount,
        _roomCount = roomCount,
        _floorCountHouse = floorCountHouse,
        _roomCountHouse = roomCountHouse,
        _levelCountHouse = levelCountHouse,
        _selectedRoomCount = selectedRoomCount,
        _selectedFloorCount = selectedFloorCount,
        _selectedRoomCountHouse = selectedRoomCountHouse,
        _selectedFloorCountHouse = selectedFloorCountHouse,
        _selectedLevelCountHouse = selectedLevelCountHouse;

  factory _$GlobalOptionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GlobalOptionsImplFromJson(json);

  final List<Location> _locations;
  @override
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  final List<CategoryHouse> _categoryHouses;
  @override
  List<CategoryHouse> get categoryHouses {
    if (_categoryHouses is EqualUnmodifiableListView) return _categoryHouses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryHouses);
  }

  final List<SubLocations>? _selectedSubLocations;
  @override
  List<SubLocations>? get selectedSubLocations {
    final value = _selectedSubLocations;
    if (value == null) return null;
    if (_selectedSubLocations is EqualUnmodifiableListView)
      return _selectedSubLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final SubLocations? selectedLocation;
  @override
  final CategoryHouse? selectedCategory;
  final List<CategoryHouse>? _selectedCategoryHouses;
  @override
  List<CategoryHouse>? get selectedCategoryHouses {
    final value = _selectedCategoryHouses;
    if (value == null) return null;
    if (_selectedCategoryHouses is EqualUnmodifiableListView)
      return _selectedCategoryHouses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryShop> _categoryShops;
  @override
  List<CategoryShop> get categoryShops {
    if (_categoryShops is EqualUnmodifiableListView) return _categoryShops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryShops);
  }

  final List<OptionsPossibility> _possibility;
  @override
  List<OptionsPossibility> get possibility {
    if (_possibility is EqualUnmodifiableListView) return _possibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_possibility);
  }

  final List<PropertyType> _propertyType;
  @override
  List<PropertyType> get propertyType {
    if (_propertyType is EqualUnmodifiableListView) return _propertyType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_propertyType);
  }

  final List<RepairType> _repairType;
  @override
  List<RepairType> get repairType {
    if (_repairType is EqualUnmodifiableListView) return _repairType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repairType);
  }

  final List<OptionsPossibility>? _selectedPossibility;
  @override
  List<OptionsPossibility>? get selectedPossibility {
    final value = _selectedPossibility;
    if (value == null) return null;
    if (_selectedPossibility is EqualUnmodifiableListView)
      return _selectedPossibility;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PropertyType>? _selectedPropertyType;
  @override
  List<PropertyType>? get selectedPropertyType {
    final value = _selectedPropertyType;
    if (value == null) return null;
    if (_selectedPropertyType is EqualUnmodifiableListView)
      return _selectedPropertyType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RepairType>? _selectedRepairType;
  @override
  List<RepairType>? get selectedRepairType {
    final value = _selectedRepairType;
    if (value == null) return null;
    if (_selectedRepairType is EqualUnmodifiableListView)
      return _selectedRepairType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? minPrice;
  @override
  final int? maxPrice;
  @override
  final int? price;
  @override
  final int? minArea;
  @override
  final int? maxArea;
  @override
  final int? area;
  @override
  final bool? fromHolder;
  @override
  final bool? justShowWithImage;
  @override
  final bool? justShowNewAdded;
  @override
  final bool? writeComment;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? search;
  final List<HouseFloorCount>? _floorCount;
  @override
  List<HouseFloorCount>? get floorCount {
    final value = _floorCount;
    if (value == null) return null;
    if (_floorCount is EqualUnmodifiableListView) return _floorCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _roomCount;
  @override
  List<HouseFloorCount>? get roomCount {
    final value = _roomCount;
    if (value == null) return null;
    if (_roomCount is EqualUnmodifiableListView) return _roomCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _floorCountHouse;
  @override
  List<HouseFloorCount>? get floorCountHouse {
    final value = _floorCountHouse;
    if (value == null) return null;
    if (_floorCountHouse is EqualUnmodifiableListView) return _floorCountHouse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _roomCountHouse;
  @override
  List<HouseFloorCount>? get roomCountHouse {
    final value = _roomCountHouse;
    if (value == null) return null;
    if (_roomCountHouse is EqualUnmodifiableListView) return _roomCountHouse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _levelCountHouse;
  @override
  List<HouseFloorCount>? get levelCountHouse {
    final value = _levelCountHouse;
    if (value == null) return null;
    if (_levelCountHouse is EqualUnmodifiableListView) return _levelCountHouse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _selectedRoomCount;
  @override
  List<HouseFloorCount>? get selectedRoomCount {
    final value = _selectedRoomCount;
    if (value == null) return null;
    if (_selectedRoomCount is EqualUnmodifiableListView)
      return _selectedRoomCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _selectedFloorCount;
  @override
  List<HouseFloorCount>? get selectedFloorCount {
    final value = _selectedFloorCount;
    if (value == null) return null;
    if (_selectedFloorCount is EqualUnmodifiableListView)
      return _selectedFloorCount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _selectedRoomCountHouse;
  @override
  List<HouseFloorCount>? get selectedRoomCountHouse {
    final value = _selectedRoomCountHouse;
    if (value == null) return null;
    if (_selectedRoomCountHouse is EqualUnmodifiableListView)
      return _selectedRoomCountHouse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _selectedFloorCountHouse;
  @override
  List<HouseFloorCount>? get selectedFloorCountHouse {
    final value = _selectedFloorCountHouse;
    if (value == null) return null;
    if (_selectedFloorCountHouse is EqualUnmodifiableListView)
      return _selectedFloorCountHouse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HouseFloorCount>? _selectedLevelCountHouse;
  @override
  List<HouseFloorCount>? get selectedLevelCountHouse {
    final value = _selectedLevelCountHouse;
    if (value == null) return null;
    if (_selectedLevelCountHouse is EqualUnmodifiableListView)
      return _selectedLevelCountHouse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? payment;

  @override
  String toString() {
    return 'GlobalOptions(locations: $locations, categoryHouses: $categoryHouses, selectedSubLocations: $selectedSubLocations, selectedLocation: $selectedLocation, selectedCategory: $selectedCategory, selectedCategoryHouses: $selectedCategoryHouses, categoryShops: $categoryShops, possibility: $possibility, propertyType: $propertyType, repairType: $repairType, selectedPossibility: $selectedPossibility, selectedPropertyType: $selectedPropertyType, selectedRepairType: $selectedRepairType, minPrice: $minPrice, maxPrice: $maxPrice, price: $price, minArea: $minArea, maxArea: $maxArea, area: $area, fromHolder: $fromHolder, justShowWithImage: $justShowWithImage, justShowNewAdded: $justShowNewAdded, writeComment: $writeComment, name: $name, description: $description, search: $search, floorCount: $floorCount, roomCount: $roomCount, floorCountHouse: $floorCountHouse, roomCountHouse: $roomCountHouse, levelCountHouse: $levelCountHouse, selectedRoomCount: $selectedRoomCount, selectedFloorCount: $selectedFloorCount, selectedRoomCountHouse: $selectedRoomCountHouse, selectedFloorCountHouse: $selectedFloorCountHouse, selectedLevelCountHouse: $selectedLevelCountHouse, payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalOptionsImpl &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality()
                .equals(other._categoryHouses, _categoryHouses) &&
            const DeepCollectionEquality()
                .equals(other._selectedSubLocations, _selectedSubLocations) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory) &&
            const DeepCollectionEquality().equals(
                other._selectedCategoryHouses, _selectedCategoryHouses) &&
            const DeepCollectionEquality()
                .equals(other._categoryShops, _categoryShops) &&
            const DeepCollectionEquality()
                .equals(other._possibility, _possibility) &&
            const DeepCollectionEquality()
                .equals(other._propertyType, _propertyType) &&
            const DeepCollectionEquality()
                .equals(other._repairType, _repairType) &&
            const DeepCollectionEquality()
                .equals(other._selectedPossibility, _selectedPossibility) &&
            const DeepCollectionEquality()
                .equals(other._selectedPropertyType, _selectedPropertyType) &&
            const DeepCollectionEquality()
                .equals(other._selectedRepairType, _selectedRepairType) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.minArea, minArea) || other.minArea == minArea) &&
            (identical(other.maxArea, maxArea) || other.maxArea == maxArea) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.fromHolder, fromHolder) ||
                other.fromHolder == fromHolder) &&
            (identical(other.justShowWithImage, justShowWithImage) ||
                other.justShowWithImage == justShowWithImage) &&
            (identical(other.justShowNewAdded, justShowNewAdded) ||
                other.justShowNewAdded == justShowNewAdded) &&
            (identical(other.writeComment, writeComment) ||
                other.writeComment == writeComment) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.search, search) || other.search == search) &&
            const DeepCollectionEquality()
                .equals(other._floorCount, _floorCount) &&
            const DeepCollectionEquality()
                .equals(other._roomCount, _roomCount) &&
            const DeepCollectionEquality()
                .equals(other._floorCountHouse, _floorCountHouse) &&
            const DeepCollectionEquality()
                .equals(other._roomCountHouse, _roomCountHouse) &&
            const DeepCollectionEquality()
                .equals(other._levelCountHouse, _levelCountHouse) &&
            const DeepCollectionEquality()
                .equals(other._selectedRoomCount, _selectedRoomCount) &&
            const DeepCollectionEquality()
                .equals(other._selectedFloorCount, _selectedFloorCount) &&
            const DeepCollectionEquality().equals(
                other._selectedRoomCountHouse, _selectedRoomCountHouse) &&
            const DeepCollectionEquality().equals(
                other._selectedFloorCountHouse, _selectedFloorCountHouse) &&
            const DeepCollectionEquality().equals(
                other._selectedLevelCountHouse, _selectedLevelCountHouse) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_locations),
        const DeepCollectionEquality().hash(_categoryHouses),
        const DeepCollectionEquality().hash(_selectedSubLocations),
        selectedLocation,
        selectedCategory,
        const DeepCollectionEquality().hash(_selectedCategoryHouses),
        const DeepCollectionEquality().hash(_categoryShops),
        const DeepCollectionEquality().hash(_possibility),
        const DeepCollectionEquality().hash(_propertyType),
        const DeepCollectionEquality().hash(_repairType),
        const DeepCollectionEquality().hash(_selectedPossibility),
        const DeepCollectionEquality().hash(_selectedPropertyType),
        const DeepCollectionEquality().hash(_selectedRepairType),
        minPrice,
        maxPrice,
        price,
        minArea,
        maxArea,
        area,
        fromHolder,
        justShowWithImage,
        justShowNewAdded,
        writeComment,
        name,
        description,
        search,
        const DeepCollectionEquality().hash(_floorCount),
        const DeepCollectionEquality().hash(_roomCount),
        const DeepCollectionEquality().hash(_floorCountHouse),
        const DeepCollectionEquality().hash(_roomCountHouse),
        const DeepCollectionEquality().hash(_levelCountHouse),
        const DeepCollectionEquality().hash(_selectedRoomCount),
        const DeepCollectionEquality().hash(_selectedFloorCount),
        const DeepCollectionEquality().hash(_selectedRoomCountHouse),
        const DeepCollectionEquality().hash(_selectedFloorCountHouse),
        const DeepCollectionEquality().hash(_selectedLevelCountHouse),
        payment
      ]);

  /// Create a copy of GlobalOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalOptionsImplCopyWith<_$GlobalOptionsImpl> get copyWith =>
      __$$GlobalOptionsImplCopyWithImpl<_$GlobalOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GlobalOptionsImplToJson(
      this,
    );
  }
}

abstract class _GlobalOptions implements GlobalOptions {
  const factory _GlobalOptions(
      {required final List<Location> locations,
      required final List<CategoryHouse> categoryHouses,
      final List<SubLocations>? selectedSubLocations,
      final SubLocations? selectedLocation,
      final CategoryHouse? selectedCategory,
      final List<CategoryHouse>? selectedCategoryHouses,
      required final List<CategoryShop> categoryShops,
      required final List<OptionsPossibility> possibility,
      required final List<PropertyType> propertyType,
      required final List<RepairType> repairType,
      required final List<OptionsPossibility>? selectedPossibility,
      required final List<PropertyType>? selectedPropertyType,
      required final List<RepairType>? selectedRepairType,
      final int? minPrice,
      final int? maxPrice,
      final int? price,
      final int? minArea,
      final int? maxArea,
      final int? area,
      final bool? fromHolder,
      final bool? justShowWithImage,
      final bool? justShowNewAdded,
      final bool? writeComment,
      final String? name,
      final String? description,
      final String? search,
      final List<HouseFloorCount>? floorCount,
      final List<HouseFloorCount>? roomCount,
      final List<HouseFloorCount>? floorCountHouse,
      final List<HouseFloorCount>? roomCountHouse,
      final List<HouseFloorCount>? levelCountHouse,
      final List<HouseFloorCount>? selectedRoomCount,
      final List<HouseFloorCount>? selectedFloorCount,
      final List<HouseFloorCount>? selectedRoomCountHouse,
      final List<HouseFloorCount>? selectedFloorCountHouse,
      final List<HouseFloorCount>? selectedLevelCountHouse,
      final bool? payment}) = _$GlobalOptionsImpl;

  factory _GlobalOptions.fromJson(Map<String, dynamic> json) =
      _$GlobalOptionsImpl.fromJson;

  @override
  List<Location> get locations;
  @override
  List<CategoryHouse> get categoryHouses;
  @override
  List<SubLocations>? get selectedSubLocations;
  @override
  SubLocations? get selectedLocation;
  @override
  CategoryHouse? get selectedCategory;
  @override
  List<CategoryHouse>? get selectedCategoryHouses;
  @override
  List<CategoryShop> get categoryShops;
  @override
  List<OptionsPossibility> get possibility;
  @override
  List<PropertyType> get propertyType;
  @override
  List<RepairType> get repairType;
  @override
  List<OptionsPossibility>? get selectedPossibility;
  @override
  List<PropertyType>? get selectedPropertyType;
  @override
  List<RepairType>? get selectedRepairType;
  @override
  int? get minPrice;
  @override
  int? get maxPrice;
  @override
  int? get price;
  @override
  int? get minArea;
  @override
  int? get maxArea;
  @override
  int? get area;
  @override
  bool? get fromHolder;
  @override
  bool? get justShowWithImage;
  @override
  bool? get justShowNewAdded;
  @override
  bool? get writeComment;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get search;
  @override
  List<HouseFloorCount>? get floorCount;
  @override
  List<HouseFloorCount>? get roomCount;
  @override
  List<HouseFloorCount>? get floorCountHouse;
  @override
  List<HouseFloorCount>? get roomCountHouse;
  @override
  List<HouseFloorCount>? get levelCountHouse;
  @override
  List<HouseFloorCount>? get selectedRoomCount;
  @override
  List<HouseFloorCount>? get selectedFloorCount;
  @override
  List<HouseFloorCount>? get selectedRoomCountHouse;
  @override
  List<HouseFloorCount>? get selectedFloorCountHouse;
  @override
  List<HouseFloorCount>? get selectedLevelCountHouse;
  @override
  bool? get payment;

  /// Create a copy of GlobalOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalOptionsImplCopyWith<_$GlobalOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  int get id => throw _privateConstructorUsedError;
  bool get hasSelectedChild => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SubLocations> get children => throw _privateConstructorUsedError;

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
      {int id,
      bool hasSelectedChild,
      @JsonKey(name: 'parent_id') int? parentId,
      String name,
      List<SubLocations> children});
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
    Object? id = null,
    Object? hasSelectedChild = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hasSelectedChild: null == hasSelectedChild
          ? _value.hasSelectedChild
          : hasSelectedChild // ignore: cast_nullable_to_non_nullable
              as bool,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<SubLocations>,
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
      {int id,
      bool hasSelectedChild,
      @JsonKey(name: 'parent_id') int? parentId,
      String name,
      List<SubLocations> children});
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
    Object? id = null,
    Object? hasSelectedChild = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? children = null,
  }) {
    return _then(_$LocationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      hasSelectedChild: null == hasSelectedChild
          ? _value.hasSelectedChild
          : hasSelectedChild // ignore: cast_nullable_to_non_nullable
              as bool,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<SubLocations>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {required this.id,
      this.hasSelectedChild = false,
      @JsonKey(name: 'parent_id') this.parentId,
      required this.name,
      required final List<SubLocations> children})
      : _children = children;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final bool hasSelectedChild;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final String name;
  final List<SubLocations> _children;
  @override
  List<SubLocations> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'Location(id: $id, hasSelectedChild: $hasSelectedChild, parentId: $parentId, name: $name, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hasSelectedChild, hasSelectedChild) ||
                other.hasSelectedChild == hasSelectedChild) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, hasSelectedChild, parentId,
      name, const DeepCollectionEquality().hash(_children));

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
      {required final int id,
      final bool hasSelectedChild,
      @JsonKey(name: 'parent_id') final int? parentId,
      required final String name,
      required final List<SubLocations> children}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  int get id;
  @override
  bool get hasSelectedChild;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  String get name;
  @override
  List<SubLocations> get children;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HouseFloorCount _$HouseFloorCountFromJson(Map<String, dynamic> json) {
  return _HouseFloorCount.fromJson(json);
}

/// @nodoc
mixin _$HouseFloorCount {
  int get index => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Serializes this HouseFloorCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseFloorCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseFloorCountCopyWith<HouseFloorCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseFloorCountCopyWith<$Res> {
  factory $HouseFloorCountCopyWith(
          HouseFloorCount value, $Res Function(HouseFloorCount) then) =
      _$HouseFloorCountCopyWithImpl<$Res, HouseFloorCount>;
  @useResult
  $Res call({int index, String count, bool isSelected});
}

/// @nodoc
class _$HouseFloorCountCopyWithImpl<$Res, $Val extends HouseFloorCount>
    implements $HouseFloorCountCopyWith<$Res> {
  _$HouseFloorCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseFloorCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? count = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HouseFloorCountImplCopyWith<$Res>
    implements $HouseFloorCountCopyWith<$Res> {
  factory _$$HouseFloorCountImplCopyWith(_$HouseFloorCountImpl value,
          $Res Function(_$HouseFloorCountImpl) then) =
      __$$HouseFloorCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String count, bool isSelected});
}

/// @nodoc
class __$$HouseFloorCountImplCopyWithImpl<$Res>
    extends _$HouseFloorCountCopyWithImpl<$Res, _$HouseFloorCountImpl>
    implements _$$HouseFloorCountImplCopyWith<$Res> {
  __$$HouseFloorCountImplCopyWithImpl(
      _$HouseFloorCountImpl _value, $Res Function(_$HouseFloorCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of HouseFloorCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? count = null,
    Object? isSelected = null,
  }) {
    return _then(_$HouseFloorCountImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseFloorCountImpl implements _HouseFloorCount {
  const _$HouseFloorCountImpl(
      {required this.index, required this.count, this.isSelected = false});

  factory _$HouseFloorCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseFloorCountImplFromJson(json);

  @override
  final int index;
  @override
  final String count;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'HouseFloorCount(index: $index, count: $count, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseFloorCountImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, count, isSelected);

  /// Create a copy of HouseFloorCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseFloorCountImplCopyWith<_$HouseFloorCountImpl> get copyWith =>
      __$$HouseFloorCountImplCopyWithImpl<_$HouseFloorCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseFloorCountImplToJson(
      this,
    );
  }
}

abstract class _HouseFloorCount implements HouseFloorCount {
  const factory _HouseFloorCount(
      {required final int index,
      required final String count,
      final bool isSelected}) = _$HouseFloorCountImpl;

  factory _HouseFloorCount.fromJson(Map<String, dynamic> json) =
      _$HouseFloorCountImpl.fromJson;

  @override
  int get index;
  @override
  String get count;
  @override
  bool get isSelected;

  /// Create a copy of HouseFloorCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseFloorCountImplCopyWith<_$HouseFloorCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubLocations _$SubLocationsFromJson(Map<String, dynamic> json) {
  return _SubLocations.fromJson(json);
}

/// @nodoc
mixin _$SubLocations {
  int get id => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_name')
  String get parentName => throw _privateConstructorUsedError;

  /// Serializes this SubLocations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubLocations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubLocationsCopyWith<SubLocations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubLocationsCopyWith<$Res> {
  factory $SubLocationsCopyWith(
          SubLocations value, $Res Function(SubLocations) then) =
      _$SubLocationsCopyWithImpl<$Res, SubLocations>;
  @useResult
  $Res call(
      {int id,
      bool selected,
      @JsonKey(name: 'parent_id') int? parentId,
      String name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'parent_name') String parentName});
}

/// @nodoc
class _$SubLocationsCopyWithImpl<$Res, $Val extends SubLocations>
    implements $SubLocationsCopyWith<$Res> {
  _$SubLocationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubLocations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? selected = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? parentName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentName: null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubLocationsImplCopyWith<$Res>
    implements $SubLocationsCopyWith<$Res> {
  factory _$$SubLocationsImplCopyWith(
          _$SubLocationsImpl value, $Res Function(_$SubLocationsImpl) then) =
      __$$SubLocationsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      bool selected,
      @JsonKey(name: 'parent_id') int? parentId,
      String name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'parent_name') String parentName});
}

/// @nodoc
class __$$SubLocationsImplCopyWithImpl<$Res>
    extends _$SubLocationsCopyWithImpl<$Res, _$SubLocationsImpl>
    implements _$$SubLocationsImplCopyWith<$Res> {
  __$$SubLocationsImplCopyWithImpl(
      _$SubLocationsImpl _value, $Res Function(_$SubLocationsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubLocations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? selected = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? parentName = null,
  }) {
    return _then(_$SubLocationsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentName: null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubLocationsImpl implements _SubLocations {
  const _$SubLocationsImpl(
      {required this.id,
      this.selected = false,
      @JsonKey(name: 'parent_id') required this.parentId,
      required this.name,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'parent_name') required this.parentName});

  factory _$SubLocationsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubLocationsImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final bool selected;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'parent_name')
  final String parentName;

  @override
  String toString() {
    return 'SubLocations(id: $id, selected: $selected, parentId: $parentId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, parentName: $parentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubLocationsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
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
  int get hashCode => Object.hash(runtimeType, id, selected, parentId, name,
      createdAt, updatedAt, parentName);

  /// Create a copy of SubLocations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubLocationsImplCopyWith<_$SubLocationsImpl> get copyWith =>
      __$$SubLocationsImplCopyWithImpl<_$SubLocationsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubLocationsImplToJson(
      this,
    );
  }
}

abstract class _SubLocations implements SubLocations {
  const factory _SubLocations(
          {required final int id,
          final bool selected,
          @JsonKey(name: 'parent_id') required final int? parentId,
          required final String name,
          @JsonKey(name: 'created_at') required final DateTime? createdAt,
          @JsonKey(name: 'updated_at') required final DateTime? updatedAt,
          @JsonKey(name: 'parent_name') required final String parentName}) =
      _$SubLocationsImpl;

  factory _SubLocations.fromJson(Map<String, dynamic> json) =
      _$SubLocationsImpl.fromJson;

  @override
  int get id;
  @override
  bool get selected;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  String get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'parent_name')
  String get parentName;

  /// Create a copy of SubLocations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubLocationsImplCopyWith<_$SubLocationsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryHouse _$CategoryHouseFromJson(Map<String, dynamic> json) {
  return _CategoryHouse.fromJson(json);
}

/// @nodoc
mixin _$CategoryHouse {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CategoryHouse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryHouse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryHouseCopyWith<CategoryHouse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryHouseCopyWith<$Res> {
  factory $CategoryHouseCopyWith(
          CategoryHouse value, $Res Function(CategoryHouse) then) =
      _$CategoryHouseCopyWithImpl<$Res, CategoryHouse>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'parent_id') int? parentId,
      String name,
      bool selected,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$CategoryHouseCopyWithImpl<$Res, $Val extends CategoryHouse>
    implements $CategoryHouseCopyWith<$Res> {
  _$CategoryHouseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryHouse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? selected = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$CategoryHouseImplCopyWith<$Res>
    implements $CategoryHouseCopyWith<$Res> {
  factory _$$CategoryHouseImplCopyWith(
          _$CategoryHouseImpl value, $Res Function(_$CategoryHouseImpl) then) =
      __$$CategoryHouseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'parent_id') int? parentId,
      String name,
      bool selected,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$CategoryHouseImplCopyWithImpl<$Res>
    extends _$CategoryHouseCopyWithImpl<$Res, _$CategoryHouseImpl>
    implements _$$CategoryHouseImplCopyWith<$Res> {
  __$$CategoryHouseImplCopyWithImpl(
      _$CategoryHouseImpl _value, $Res Function(_$CategoryHouseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryHouse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parentId = freezed,
    Object? name = null,
    Object? selected = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CategoryHouseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$CategoryHouseImpl implements _CategoryHouse {
  const _$CategoryHouseImpl(
      {required this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      required this.name,
      this.selected = false,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$CategoryHouseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryHouseImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final String name;
  @override
  @JsonKey()
  final bool selected;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CategoryHouse(id: $id, parentId: $parentId, name: $name, selected: $selected, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryHouseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, parentId, name, selected, createdAt, updatedAt);

  /// Create a copy of CategoryHouse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryHouseImplCopyWith<_$CategoryHouseImpl> get copyWith =>
      __$$CategoryHouseImplCopyWithImpl<_$CategoryHouseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryHouseImplToJson(
      this,
    );
  }
}

abstract class _CategoryHouse implements CategoryHouse {
  const factory _CategoryHouse(
          {required final int id,
          @JsonKey(name: 'parent_id') final int? parentId,
          required final String name,
          final bool selected,
          @JsonKey(name: 'created_at') required final DateTime? createdAt,
          @JsonKey(name: 'updated_at') required final DateTime? updatedAt}) =
      _$CategoryHouseImpl;

  factory _CategoryHouse.fromJson(Map<String, dynamic> json) =
      _$CategoryHouseImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  String get name;
  @override
  bool get selected;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of CategoryHouse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryHouseImplCopyWith<_$CategoryHouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryShop _$CategoryShopFromJson(Map<String, dynamic> json) {
  return _CategoryShop.fromJson(json);
}

/// @nodoc
mixin _$CategoryShop {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get parent => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<Subcategory> get subcategories => throw _privateConstructorUsedError;

  /// Serializes this CategoryShop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryShop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryShopCopyWith<CategoryShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryShopCopyWith<$Res> {
  factory $CategoryShopCopyWith(
          CategoryShop value, $Res Function(CategoryShop) then) =
      _$CategoryShopCopyWithImpl<$Res, CategoryShop>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? image,
      String? parent,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<Subcategory> subcategories});
}

/// @nodoc
class _$CategoryShopCopyWithImpl<$Res, $Val extends CategoryShop>
    implements $CategoryShopCopyWith<$Res> {
  _$CategoryShopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryShop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subcategories = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subcategories: null == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryShopImplCopyWith<$Res>
    implements $CategoryShopCopyWith<$Res> {
  factory _$$CategoryShopImplCopyWith(
          _$CategoryShopImpl value, $Res Function(_$CategoryShopImpl) then) =
      __$$CategoryShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? image,
      String? parent,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      List<Subcategory> subcategories});
}

/// @nodoc
class __$$CategoryShopImplCopyWithImpl<$Res>
    extends _$CategoryShopCopyWithImpl<$Res, _$CategoryShopImpl>
    implements _$$CategoryShopImplCopyWith<$Res> {
  __$$CategoryShopImplCopyWithImpl(
      _$CategoryShopImpl _value, $Res Function(_$CategoryShopImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryShop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? subcategories = null,
  }) {
    return _then(_$CategoryShopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      subcategories: null == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Subcategory>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryShopImpl implements _CategoryShop {
  const _$CategoryShopImpl(
      {required this.id,
      required this.title,
      this.image,
      this.parent,
      this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required final List<Subcategory> subcategories})
      : _subcategories = subcategories;

  factory _$CategoryShopImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryShopImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? image;
  @override
  final String? parent;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  final List<Subcategory> _subcategories;
  @override
  List<Subcategory> get subcategories {
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subcategories);
  }

  @override
  String toString() {
    return 'CategoryShop(id: $id, title: $title, image: $image, parent: $parent, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, subcategories: $subcategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryShopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      image,
      parent,
      description,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_subcategories));

  /// Create a copy of CategoryShop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryShopImplCopyWith<_$CategoryShopImpl> get copyWith =>
      __$$CategoryShopImplCopyWithImpl<_$CategoryShopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryShopImplToJson(
      this,
    );
  }
}

abstract class _CategoryShop implements CategoryShop {
  const factory _CategoryShop(
      {required final int id,
      required final String title,
      final String? image,
      final String? parent,
      final String? description,
      @JsonKey(name: 'created_at') required final DateTime? createdAt,
      @JsonKey(name: 'updated_at') required final DateTime? updatedAt,
      required final List<Subcategory> subcategories}) = _$CategoryShopImpl;

  factory _CategoryShop.fromJson(Map<String, dynamic> json) =
      _$CategoryShopImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get image;
  @override
  String? get parent;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  List<Subcategory> get subcategories;

  /// Create a copy of CategoryShop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryShopImplCopyWith<_$CategoryShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) {
  return _Subcategory.fromJson(json);
}

/// @nodoc
mixin _$Subcategory {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get parent => throw _privateConstructorUsedError;
  bool? get selected => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Subcategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubcategoryCopyWith<Subcategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubcategoryCopyWith<$Res> {
  factory $SubcategoryCopyWith(
          Subcategory value, $Res Function(Subcategory) then) =
      _$SubcategoryCopyWithImpl<$Res, Subcategory>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? image,
      String? parent,
      bool? selected,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$SubcategoryCopyWithImpl<$Res, $Val extends Subcategory>
    implements $SubcategoryCopyWith<$Res> {
  _$SubcategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = freezed,
    Object? parent = freezed,
    Object? selected = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SubcategoryImplCopyWith<$Res>
    implements $SubcategoryCopyWith<$Res> {
  factory _$$SubcategoryImplCopyWith(
          _$SubcategoryImpl value, $Res Function(_$SubcategoryImpl) then) =
      __$$SubcategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? image,
      String? parent,
      bool? selected,
      String? description,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$SubcategoryImplCopyWithImpl<$Res>
    extends _$SubcategoryCopyWithImpl<$Res, _$SubcategoryImpl>
    implements _$$SubcategoryImplCopyWith<$Res> {
  __$$SubcategoryImplCopyWithImpl(
      _$SubcategoryImpl _value, $Res Function(_$SubcategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = freezed,
    Object? parent = freezed,
    Object? selected = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SubcategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
      selected: freezed == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$SubcategoryImpl implements _Subcategory {
  const _$SubcategoryImpl(
      {required this.id,
      required this.title,
      this.image,
      this.parent,
      this.selected,
      this.description,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$SubcategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubcategoryImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? image;
  @override
  final String? parent;
  @override
  final bool? selected;
  @override
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Subcategory(id: $id, title: $title, image: $image, parent: $parent, selected: $selected, description: $description, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubcategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, parent,
      selected, description, createdAt, updatedAt);

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      __$$SubcategoryImplCopyWithImpl<_$SubcategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubcategoryImplToJson(
      this,
    );
  }
}

abstract class _Subcategory implements Subcategory {
  const factory _Subcategory(
          {required final int id,
          required final String title,
          final String? image,
          final String? parent,
          final bool? selected,
          final String? description,
          @JsonKey(name: 'created_at') required final DateTime? createdAt,
          @JsonKey(name: 'updated_at') required final DateTime? updatedAt}) =
      _$SubcategoryImpl;

  factory _Subcategory.fromJson(Map<String, dynamic> json) =
      _$SubcategoryImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get image;
  @override
  String? get parent;
  @override
  bool? get selected;
  @override
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Subcategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubcategoryImplCopyWith<_$SubcategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionsPossibility _$OptionsPossibilityFromJson(Map<String, dynamic> json) {
  return _OptionsPossibility.fromJson(json);
}

/// @nodoc
mixin _$OptionsPossibility {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OptionsPossibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OptionsPossibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OptionsPossibilityCopyWith<OptionsPossibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionsPossibilityCopyWith<$Res> {
  factory $OptionsPossibilityCopyWith(
          OptionsPossibility value, $Res Function(OptionsPossibility) then) =
      _$OptionsPossibilityCopyWithImpl<$Res, OptionsPossibility>;
  @useResult
  $Res call(
      {int id,
      String name,
      bool selected,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$OptionsPossibilityCopyWithImpl<$Res, $Val extends OptionsPossibility>
    implements $OptionsPossibilityCopyWith<$Res> {
  _$OptionsPossibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OptionsPossibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? selected = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$OptionsPossibilityImplCopyWith<$Res>
    implements $OptionsPossibilityCopyWith<$Res> {
  factory _$$OptionsPossibilityImplCopyWith(_$OptionsPossibilityImpl value,
          $Res Function(_$OptionsPossibilityImpl) then) =
      __$$OptionsPossibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      bool selected,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$OptionsPossibilityImplCopyWithImpl<$Res>
    extends _$OptionsPossibilityCopyWithImpl<$Res, _$OptionsPossibilityImpl>
    implements _$$OptionsPossibilityImplCopyWith<$Res> {
  __$$OptionsPossibilityImplCopyWithImpl(_$OptionsPossibilityImpl _value,
      $Res Function(_$OptionsPossibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of OptionsPossibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? selected = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OptionsPossibilityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$OptionsPossibilityImpl implements _OptionsPossibility {
  const _$OptionsPossibilityImpl(
      {required this.id,
      required this.name,
      this.selected = false,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$OptionsPossibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$OptionsPossibilityImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool selected;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'OptionsPossibility(id: $id, name: $name, selected: $selected, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionsPossibilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, selected, createdAt, updatedAt);

  /// Create a copy of OptionsPossibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionsPossibilityImplCopyWith<_$OptionsPossibilityImpl> get copyWith =>
      __$$OptionsPossibilityImplCopyWithImpl<_$OptionsPossibilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OptionsPossibilityImplToJson(
      this,
    );
  }
}

abstract class _OptionsPossibility implements OptionsPossibility {
  const factory _OptionsPossibility(
          {required final int id,
          required final String name,
          final bool selected,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$OptionsPossibilityImpl;

  factory _OptionsPossibility.fromJson(Map<String, dynamic> json) =
      _$OptionsPossibilityImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get selected;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of OptionsPossibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OptionsPossibilityImplCopyWith<_$OptionsPossibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyType _$PropertyTypeFromJson(Map<String, dynamic> json) {
  return _PropertyType.fromJson(json);
}

/// @nodoc
mixin _$PropertyType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this PropertyType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyTypeCopyWith<PropertyType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyTypeCopyWith<$Res> {
  factory $PropertyTypeCopyWith(
          PropertyType value, $Res Function(PropertyType) then) =
      _$PropertyTypeCopyWithImpl<$Res, PropertyType>;
  @useResult
  $Res call({int id, String name, bool selected, String? icon});
}

/// @nodoc
class _$PropertyTypeCopyWithImpl<$Res, $Val extends PropertyType>
    implements $PropertyTypeCopyWith<$Res> {
  _$PropertyTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? selected = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyTypeImplCopyWith<$Res>
    implements $PropertyTypeCopyWith<$Res> {
  factory _$$PropertyTypeImplCopyWith(
          _$PropertyTypeImpl value, $Res Function(_$PropertyTypeImpl) then) =
      __$$PropertyTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, bool selected, String? icon});
}

/// @nodoc
class __$$PropertyTypeImplCopyWithImpl<$Res>
    extends _$PropertyTypeCopyWithImpl<$Res, _$PropertyTypeImpl>
    implements _$$PropertyTypeImplCopyWith<$Res> {
  __$$PropertyTypeImplCopyWithImpl(
      _$PropertyTypeImpl _value, $Res Function(_$PropertyTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? selected = null,
    Object? icon = freezed,
  }) {
    return _then(_$PropertyTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyTypeImpl implements _PropertyType {
  const _$PropertyTypeImpl(
      {required this.id, required this.name, this.selected = false, this.icon});

  factory _$PropertyTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? icon;

  @override
  String toString() {
    return 'PropertyType(id: $id, name: $name, selected: $selected, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, selected, icon);

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyTypeImplCopyWith<_$PropertyTypeImpl> get copyWith =>
      __$$PropertyTypeImplCopyWithImpl<_$PropertyTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyTypeImplToJson(
      this,
    );
  }
}

abstract class _PropertyType implements PropertyType {
  const factory _PropertyType(
      {required final int id,
      required final String name,
      final bool selected,
      final String? icon}) = _$PropertyTypeImpl;

  factory _PropertyType.fromJson(Map<String, dynamic> json) =
      _$PropertyTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get selected;
  @override
  String? get icon;

  /// Create a copy of PropertyType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyTypeImplCopyWith<_$PropertyTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RepairType _$RepairTypeFromJson(Map<String, dynamic> json) {
  return _RepairType.fromJson(json);
}

/// @nodoc
mixin _$RepairType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this RepairType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepairType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepairTypeCopyWith<RepairType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairTypeCopyWith<$Res> {
  factory $RepairTypeCopyWith(
          RepairType value, $Res Function(RepairType) then) =
      _$RepairTypeCopyWithImpl<$Res, RepairType>;
  @useResult
  $Res call({int id, String name, bool selected, String? icon});
}

/// @nodoc
class _$RepairTypeCopyWithImpl<$Res, $Val extends RepairType>
    implements $RepairTypeCopyWith<$Res> {
  _$RepairTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepairType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? selected = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepairTypeImplCopyWith<$Res>
    implements $RepairTypeCopyWith<$Res> {
  factory _$$RepairTypeImplCopyWith(
          _$RepairTypeImpl value, $Res Function(_$RepairTypeImpl) then) =
      __$$RepairTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, bool selected, String? icon});
}

/// @nodoc
class __$$RepairTypeImplCopyWithImpl<$Res>
    extends _$RepairTypeCopyWithImpl<$Res, _$RepairTypeImpl>
    implements _$$RepairTypeImplCopyWith<$Res> {
  __$$RepairTypeImplCopyWithImpl(
      _$RepairTypeImpl _value, $Res Function(_$RepairTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepairType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? selected = null,
    Object? icon = freezed,
  }) {
    return _then(_$RepairTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepairTypeImpl implements _RepairType {
  const _$RepairTypeImpl(
      {required this.id, required this.name, this.selected = false, this.icon});

  factory _$RepairTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepairTypeImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool selected;
  @override
  final String? icon;

  @override
  String toString() {
    return 'RepairType(id: $id, name: $name, selected: $selected, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepairTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, selected, icon);

  /// Create a copy of RepairType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepairTypeImplCopyWith<_$RepairTypeImpl> get copyWith =>
      __$$RepairTypeImplCopyWithImpl<_$RepairTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepairTypeImplToJson(
      this,
    );
  }
}

abstract class _RepairType implements RepairType {
  const factory _RepairType(
      {required final int id,
      required final String name,
      final bool selected,
      final String? icon}) = _$RepairTypeImpl;

  factory _RepairType.fromJson(Map<String, dynamic> json) =
      _$RepairTypeImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get selected;
  @override
  String? get icon;

  /// Create a copy of RepairType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepairTypeImplCopyWith<_$RepairTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
