// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GlobalOptionsResponseImpl _$$GlobalOptionsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GlobalOptionsResponseImpl(
      data: GlobalOptions.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GlobalOptionsResponseImplToJson(
        _$GlobalOptionsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$GlobalOptionsImpl _$$GlobalOptionsImplFromJson(Map<String, dynamic> json) =>
    _$GlobalOptionsImpl(
      locations: (json['locations'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryHouses: (json['categoryHouses'] as List<dynamic>)
          .map((e) => CategoryHouse.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedSubLocations: (json['selectedSubLocations'] as List<dynamic>?)
          ?.map((e) => SubLocations.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedLocation: json['selectedLocation'] == null
          ? null
          : SubLocations.fromJson(
              json['selectedLocation'] as Map<String, dynamic>),
      selectedCategory: json['selectedCategory'] == null
          ? null
          : CategoryHouse.fromJson(
              json['selectedCategory'] as Map<String, dynamic>),
      selectedCategoryHouses: (json['selectedCategoryHouses'] as List<dynamic>?)
          ?.map((e) => CategoryHouse.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryShops: (json['categoryShops'] as List<dynamic>)
          .map((e) => CategoryShop.fromJson(e as Map<String, dynamic>))
          .toList(),
      possibility: (json['possibility'] as List<dynamic>)
          .map((e) => OptionsPossibility.fromJson(e as Map<String, dynamic>))
          .toList(),
      propertyType: (json['propertyType'] as List<dynamic>)
          .map((e) => PropertyType.fromJson(e as Map<String, dynamic>))
          .toList(),
      repairType: (json['repairType'] as List<dynamic>)
          .map((e) => RepairType.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedPossibility: (json['selectedPossibility'] as List<dynamic>?)
          ?.map((e) => OptionsPossibility.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedPropertyType: (json['selectedPropertyType'] as List<dynamic>?)
          ?.map((e) => PropertyType.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedRepairType: (json['selectedRepairType'] as List<dynamic>?)
          ?.map((e) => RepairType.fromJson(e as Map<String, dynamic>))
          .toList(),
      minPrice: (json['minPrice'] as num?)?.toInt(),
      maxPrice: (json['maxPrice'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toInt(),
      minArea: (json['minArea'] as num?)?.toInt(),
      maxArea: (json['maxArea'] as num?)?.toInt(),
      area: (json['area'] as num?)?.toInt(),
      fromHolder: json['fromHolder'] as bool?,
      justShowWithImage: json['justShowWithImage'] as bool?,
      justShowNewAdded: json['justShowNewAdded'] as bool?,
      writeComment: json['writeComment'] as bool?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      search: json['search'] as String?,
      floorCount: (json['floorCount'] as List<dynamic>?)
          ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomCount: (json['roomCount'] as List<dynamic>?)
          ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      floorCountHouse: (json['floorCountHouse'] as List<dynamic>?)
          ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      roomCountHouse: (json['roomCountHouse'] as List<dynamic>?)
          ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      levelCountHouse: (json['levelCountHouse'] as List<dynamic>?)
          ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedRoomCount: (json['selectedRoomCount'] as List<dynamic>?)
          ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedFloorCount: (json['selectedFloorCount'] as List<dynamic>?)
          ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedRoomCountHouse: (json['selectedRoomCountHouse'] as List<dynamic>?)
          ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedFloorCountHouse:
          (json['selectedFloorCountHouse'] as List<dynamic>?)
              ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
              .toList(),
      selectedLevelCountHouse:
          (json['selectedLevelCountHouse'] as List<dynamic>?)
              ?.map((e) => HouseFloorCount.fromJson(e as Map<String, dynamic>))
              .toList(),
      payment: json['payment'] as bool?,
    );

Map<String, dynamic> _$$GlobalOptionsImplToJson(_$GlobalOptionsImpl instance) =>
    <String, dynamic>{
      'locations': instance.locations,
      'categoryHouses': instance.categoryHouses,
      'selectedSubLocations': instance.selectedSubLocations,
      'selectedLocation': instance.selectedLocation,
      'selectedCategory': instance.selectedCategory,
      'selectedCategoryHouses': instance.selectedCategoryHouses,
      'categoryShops': instance.categoryShops,
      'possibility': instance.possibility,
      'propertyType': instance.propertyType,
      'repairType': instance.repairType,
      'selectedPossibility': instance.selectedPossibility,
      'selectedPropertyType': instance.selectedPropertyType,
      'selectedRepairType': instance.selectedRepairType,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'price': instance.price,
      'minArea': instance.minArea,
      'maxArea': instance.maxArea,
      'area': instance.area,
      'fromHolder': instance.fromHolder,
      'justShowWithImage': instance.justShowWithImage,
      'justShowNewAdded': instance.justShowNewAdded,
      'writeComment': instance.writeComment,
      'name': instance.name,
      'description': instance.description,
      'search': instance.search,
      'floorCount': instance.floorCount,
      'roomCount': instance.roomCount,
      'floorCountHouse': instance.floorCountHouse,
      'roomCountHouse': instance.roomCountHouse,
      'levelCountHouse': instance.levelCountHouse,
      'selectedRoomCount': instance.selectedRoomCount,
      'selectedFloorCount': instance.selectedFloorCount,
      'selectedRoomCountHouse': instance.selectedRoomCountHouse,
      'selectedFloorCountHouse': instance.selectedFloorCountHouse,
      'selectedLevelCountHouse': instance.selectedLevelCountHouse,
      'payment': instance.payment,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      id: (json['id'] as num).toInt(),
      hasSelectedChild: json['hasSelectedChild'] as bool? ?? false,
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => SubLocations.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hasSelectedChild': instance.hasSelectedChild,
      'parent_id': instance.parentId,
      'name': instance.name,
      'children': instance.children,
    };

_$HouseFloorCountImpl _$$HouseFloorCountImplFromJson(
        Map<String, dynamic> json) =>
    _$HouseFloorCountImpl(
      index: (json['index'] as num).toInt(),
      count: json['count'] as String,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$HouseFloorCountImplToJson(
        _$HouseFloorCountImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'count': instance.count,
      'isSelected': instance.isSelected,
    };

_$SubLocationsImpl _$$SubLocationsImplFromJson(Map<String, dynamic> json) =>
    _$SubLocationsImpl(
      id: (json['id'] as num).toInt(),
      selected: json['selected'] as bool? ?? false,
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      parentName: json['parent_name'] as String,
    );

Map<String, dynamic> _$$SubLocationsImplToJson(_$SubLocationsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'selected': instance.selected,
      'parent_id': instance.parentId,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'parent_name': instance.parentName,
    };

_$CategoryHouseImpl _$$CategoryHouseImplFromJson(Map<String, dynamic> json) =>
    _$CategoryHouseImpl(
      id: (json['id'] as num).toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String,
      selected: json['selected'] as bool? ?? false,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$CategoryHouseImplToJson(_$CategoryHouseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'selected': instance.selected,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$CategoryShopImpl _$$CategoryShopImplFromJson(Map<String, dynamic> json) =>
    _$CategoryShopImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String?,
      parent: json['parent'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      subcategories: (json['subcategories'] as List<dynamic>)
          .map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryShopImplToJson(_$CategoryShopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'parent': instance.parent,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'subcategories': instance.subcategories,
    };

_$SubcategoryImpl _$$SubcategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubcategoryImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      image: json['image'] as String?,
      parent: json['parent'] as String?,
      selected: json['selected'] as bool?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SubcategoryImplToJson(_$SubcategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'parent': instance.parent,
      'selected': instance.selected,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$OptionsPossibilityImpl _$$OptionsPossibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$OptionsPossibilityImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      selected: json['selected'] as bool? ?? false,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$OptionsPossibilityImplToJson(
        _$OptionsPossibilityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'selected': instance.selected,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$PropertyTypeImpl _$$PropertyTypeImplFromJson(Map<String, dynamic> json) =>
    _$PropertyTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      selected: json['selected'] as bool? ?? false,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$PropertyTypeImplToJson(_$PropertyTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'selected': instance.selected,
      'icon': instance.icon,
    };

_$RepairTypeImpl _$$RepairTypeImplFromJson(Map<String, dynamic> json) =>
    _$RepairTypeImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      selected: json['selected'] as bool? ?? false,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$RepairTypeImplToJson(_$RepairTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'selected': instance.selected,
      'icon': instance.icon,
    };
