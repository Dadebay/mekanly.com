import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gen/gen.dart';
import '../../../core/components/small_icon_wrapper.dart';
import '../../../localization/extensions.dart';
part 'global_options.freezed.dart';
part 'global_options.g.dart';

@freezed
class GlobalOptionsResponse with _$GlobalOptionsResponse {
  const factory GlobalOptionsResponse({
    required GlobalOptions data,
  }) = _GlobalOptionsResponse;

  factory GlobalOptionsResponse.fromJson(Map<String, dynamic> json) =>
      _$GlobalOptionsResponseFromJson(json);
}

@freezed
class GlobalOptions with _$GlobalOptions {
  const factory GlobalOptions({
    required List<Location> locations,
    required List<CategoryHouse> categoryHouses,
    List<SubLocations>? selectedSubLocations,
    SubLocations? selectedLocation,
    CategoryHouse? selectedCategory,
    List<CategoryHouse>? selectedCategoryHouses,
    required List<CategoryShop> categoryShops,
    required List<OptionsPossibility> possibility,
    required List<PropertyType> propertyType,
    required List<RepairType> repairType,
    required List<OptionsPossibility>? selectedPossibility,
    required List<PropertyType>? selectedPropertyType,
    required List<RepairType>? selectedRepairType,
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
    bool? payment,
  }) = _GlobalOptions;

  factory GlobalOptions.fromJson(Map<String, dynamic> json) =>
      _$GlobalOptionsFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    required int id,
    @Default(false) bool hasSelectedChild,
    @JsonKey(name: 'parent_id') int? parentId,
    required String name,
    required List<SubLocations> children,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class HouseFloorCount with _$HouseFloorCount {
  const factory HouseFloorCount({
    required int index,
    required String count,
    @Default(false) bool isSelected,
  }) = _HouseFloorCount;

  factory HouseFloorCount.fromJson(Map<String, dynamic> json) =>
      _$HouseFloorCountFromJson(json);
}

@freezed
class SubLocations with _$SubLocations {
  const factory SubLocations({
    required int id,
    @Default(false) bool selected,
    @JsonKey(name: 'parent_id') required int? parentId,
    required String name,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    @JsonKey(name: 'parent_name') required String parentName,
  }) = _SubLocations;

  factory SubLocations.fromJson(Map<String, dynamic> json) =>
      _$SubLocationsFromJson(json);
}

@freezed
class CategoryHouse with _$CategoryHouse {
  const factory CategoryHouse({
    required int id,
    @JsonKey(name: 'parent_id') int? parentId,
    required String name,
    @Default(false) bool selected,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _CategoryHouse;

  factory CategoryHouse.fromJson(Map<String, dynamic> json) =>
      _$CategoryHouseFromJson(json);
}

@freezed
class CategoryShop with _$CategoryShop {
  const factory CategoryShop({
    required int id,
    required String title,
    String? image,
    String? parent,
    String? description,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
    required List<Subcategory> subcategories,
  }) = _CategoryShop;

  factory CategoryShop.fromJson(Map<String, dynamic> json) =>
      _$CategoryShopFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory({
    required int id,
    required String title,
    String? image,
    String? parent,
    bool? selected,
    String? description,
    @JsonKey(name: 'created_at') required DateTime? createdAt,
    @JsonKey(name: 'updated_at') required DateTime? updatedAt,
  }) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}

@freezed
class OptionsPossibility with _$OptionsPossibility {
  const factory OptionsPossibility({
    required int id,
    required String name,
    @Default(false) bool selected,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _OptionsPossibility;

  factory OptionsPossibility.fromJson(Map<String, dynamic> json) =>
      _$OptionsPossibilityFromJson(json);
}

@freezed
class PropertyType with _$PropertyType {
  const factory PropertyType({
    required int id,
    required String name,
    @Default(false) bool selected,
    String? icon,
  }) = _PropertyType;

  factory PropertyType.fromJson(Map<String, dynamic> json) =>
      _$PropertyTypeFromJson(json);
}

@freezed
class RepairType with _$RepairType {
  const factory RepairType({
    required int id,
    required String name,
    @Default(false) bool selected,
    String? icon,
  }) = _RepairType;

  factory RepairType.fromJson(Map<String, dynamic> json) =>
      _$RepairTypeFromJson(json);
}

extension CategoryTypeIcon on CategoryHouse {
  Widget get buildIcon {
    return const SizedBox.shrink();
  }
}

extension GlobalOptionsExtensions on GlobalOptions {
  bool get hasActiveFilters {
    return (selectedCategoryHouses?.isNotEmpty ?? false) ||
        (selectedSubLocations?.isNotEmpty ?? false) ||
        (selectedFloorCount?.isNotEmpty ?? false) ||
        (selectedRoomCount?.isNotEmpty ?? false) ||
        (selectedPropertyType?.isNotEmpty ?? false) ||
        (selectedRepairType?.isNotEmpty ?? false) ||
        (selectedPossibility?.isNotEmpty ?? false) ||
        (minPrice != null) ||
        (maxPrice != null) ||
        (fromHolder != null && fromHolder!) ||
        (justShowNewAdded != null && justShowNewAdded!) ||
        (justShowWithImage != null && justShowWithImage!);
  }
}

extension PropertyTypesIcon on PropertyType {
  Widget get buildIcon {
    switch (id) {
      case 1:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icSimpleHouse.svg(package: 'gen'),
        );
      case 2:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icLux.svg(package: 'gen'),
        );
      case 3:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icKottezh.svg(package: 'gen'),
        );
      case 4:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icHalfLux.svg(package: 'gen'),
        );
      case 5:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icDacha.svg(package: 'gen'),
        );
      case 6:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icPlanHouse.svg(package: 'gen'),
        );
      default:
        return const Text('No))');
    }
  }
}

extension PossibilityIcon on OptionsPossibility {
  Widget get buildIcon {
    switch (id) {
      case 1:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icConnection.svg(package: 'gen'),
        );
      case 2:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icWashingMachine.svg(package: 'gen'),
        );
      case 3:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icTv.svg(package: 'gen'),
        );
      case 4:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icFreez.svg(package: 'gen'),
        );
      case 5:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icMebel.svg(package: 'gen'),
        );
      case 6:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icSpalny.svg(package: 'gen'),
        );
      case 7:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icHeating.svg(package: 'gen'),
        );
      case 8:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icRefrigerator.svg(package: 'gen'),
        );
      case 9:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icBath.svg(package: 'gen'),
        );
      case 10:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icDishes.svg(package: 'gen'),
        );
      case 11:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icBbq.svg(package: 'gen'),
        );
      case 12:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icPool.svg(package: 'gen'),
        );
      case 13:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icKitchenFurniture.svg(package: 'gen'),
        );
      case 14:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icBalcon.svg(package: 'gen'),
        );
      case 15:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icWorkingDesk.svg(package: 'gen'),
        );
      case 16:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icUpElevator.svg(package: 'gen'),
        );
      case 17:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icHeating.svg(package: 'gen'),
        );
      case 19:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icHeatWater.svg(package: 'gen'),
        );
      default:
        return const Text('No)');
    }
  }
}

extension PossibilityTitle on OptionsPossibility {
  String getTitle(BuildContext context) {
    switch (id) {
      case 1:
        return context.translation.possibility_1;
      case 2:
        return context.translation.possibility_2;
      case 3:
        return context.translation.possibility_3;
      case 4:
        return context.translation.possibility_4;
      case 5:
        return context.translation.possibility_5;
      case 6:
        return context.translation.possibility_6;
      case 7:
        return context.translation.possibility_7;
      case 8:
        return context.translation.possibility_8;
      case 9:
        return context.translation.possibility_9;
      case 10:
        return context.translation.possibility_10;
      case 11:
        return context.translation.possibility_11;
      case 12:
        return context.translation.possibility_12;
      case 13:
        return context.translation.possibility_13;
      case 14:
        return context.translation.possibility_14;
      case 15:
        return context.translation.possibility_15;
      case 16:
        return context.translation.possibility_16;
      case 17:
        return context.translation.possibility_17;
      case 19:
        return context.translation.possibility_19;
      default:
        return '';
    }
  }
}


// {
//     "data": {
        
//         "categoryHouses": [
//             {
//                 "id": 1,
//                 "parent_id": null,
//                 "name": "Satlyk jaýlar",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-09-05T03:56:03.000000Z"
//             },
//             {
//                 "id": 2,
//                 "parent_id": null,
//                 "name": "Kireýne jaýlar",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-09-05T03:58:02.000000Z"
//             },
//             {
//                 "id": 3,
//                 "parent_id": null,
//                 "name": "Kireýne otaglar",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-09-05T03:59:25.000000Z"
//             },
//             {
//                 "id": 4,
//                 "parent_id": null,
//                 "name": "Kireýne ofisler",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-09-05T04:00:28.000000Z"
//             },
//             {
//                 "id": 5,
//                 "parent_id": null,
//                 "name": "Kireýne söwda emläkler",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-09-05T04:01:36.000000Z"
//             },
//             {
//                 "id": 6,
//                 "parent_id": null,
//                 "name": "Satlyk söwda emläkler",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-09-05T04:02:40.000000Z"
//             },
//             {
//                 "id": 7,
//                 "parent_id": null,
//                 "name": "Beýleki emläkler",
//                 "created_at": "2024-06-25T10:45:53.000000Z",
//                 "updated_at": "2024-09-05T04:04:20.000000Z"
//             }
//         ],
//         "categoryShops": [
//             {
//                 "id": 10,
//                 "title": "Egin esik",
//                 "image": "images/1738481843.png",
//                 "parent": null,
//                 "description": null,
//                 "created_at": "2025-02-02T07:37:23.000000Z",
//                 "updated_at": "2025-02-02T07:37:23.000000Z"
//             },
//             {
//                 "id": 11,
//                 "title": "chagalan eshigi",
//                 "image": null,
//                 "parent": "10",
//                 "description": null,
//                 "created_at": "2025-02-02T07:37:39.000000Z",
//                 "updated_at": "2025-02-02T07:37:39.000000Z"
//             },
//             {
//                 "id": 12,
//                 "title": "ayallar eshigi",
//                 "image": null,
//                 "parent": "10",
//                 "description": null,
//                 "created_at": "2025-02-02T07:37:57.000000Z",
//                 "updated_at": "2025-02-02T07:37:57.000000Z"
//             },
//             {
//                 "id": 13,
//                 "title": "Erkekler eshigi",
//                 "image": null,
//                 "parent": "10",
//                 "description": "dsad",
//                 "created_at": "2025-02-02T07:38:14.000000Z",
//                 "updated_at": "2025-02-02T07:38:14.000000Z"
//             },
//             {
//                 "id": 14,
//                 "title": "Ulaglar",
//                 "image": null,
//                 "parent": null,
//                 "description": null,
//                 "created_at": "2025-02-02T07:38:22.000000Z",
//                 "updated_at": "2025-02-02T07:38:22.000000Z"
//             },
//             {
//                 "id": 15,
//                 "title": "Toyota",
//                 "image": null,
//                 "parent": "14",
//                 "description": null,
//                 "created_at": "2025-02-02T07:38:31.000000Z",
//                 "updated_at": "2025-02-02T07:38:31.000000Z"
//             },
//             {
//                 "id": 16,
//                 "title": "Mersedes",
//                 "image": null,
//                 "parent": "14",
//                 "description": null,
//                 "created_at": "2025-02-02T07:38:42.000000Z",
//                 "updated_at": "2025-02-02T07:38:42.000000Z"
//             },
//             {
//                 "id": 17,
//                 "title": "test",
//                 "image": null,
//                 "parent": null,
//                 "description": "asd",
//                 "created_at": "2025-02-10T11:27:26.000000Z",
//                 "updated_at": "2025-02-10T11:27:26.000000Z"
//             },
//             {
//                 "id": 18,
//                 "title": "asas",
//                 "image": null,
//                 "parent": "17",
//                 "description": "asasa",
//                 "created_at": "2025-02-10T11:27:40.000000Z",
//                 "updated_at": "2025-02-10T11:27:40.000000Z"
//             },
//             {
//                 "id": 19,
//                 "title": "Gurlushyk harytlkary",
//                 "image": null,
//                 "parent": null,
//                 "description": null,
//                 "created_at": "2025-02-19T11:53:36.000000Z",
//                 "updated_at": "2025-02-19T11:53:36.000000Z"
//             }
//         ],
//         "possibility": [
//             {
//                 "id": 1,
//                 "name": "wifi",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 2,
//                 "name": "washer",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 3,
//                 "name": "tv",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 4,
//                 "name": "conditioner",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 5,
//                 "name": "wardrobe",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 6,
//                 "name": "bed",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 7,
//                 "name": "hot",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 8,
//                 "name": "fridge",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 9,
//                 "name": "shower",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             },
//             {
//                 "id": 10,
//                 "name": "kitchen",
//                 "created_at": "2024-06-17T10:46:28.000000Z",
//                 "updated_at": "2024-06-17T10:46:28.000000Z"
//             }
//         ],
//         "propertyType": [
//             {
//                 "id": 6,
//                 "name": "Kwartira",
//                 "icon": null
//             },
//             {
//                 "id": 7,
//                 "name": "Elitka",
//                 "icon": null
//             },
//             {
//                 "id": 8,
//                 "name": "Kotej",
//                 "icon": null
//             },
//             {
//                 "id": 9,
//                 "name": "Pol-Elitka",
//                 "icon": null
//             },
//             {
//                 "id": 10,
//                 "name": "Daça",
//                 "icon": null
//             },
//             {
//                 "id": 11,
//                 "name": "Plan jaý",
//                 "icon": null
//             }
//         ],
//         "repairType": [
//             {
//                 "id": 1,
//                 "name": "Ýewro remont",
//                 "icon": null
//             },
//             {
//                 "id": 2,
//                 "name": "Dizaýnerski",
//                 "icon": null
//             },
//             {
//                 "id": 3,
//                 "name": "Kosmetiçeski",
//                 "icon": null
//             },
//             {
//                 "id": 4,
//                 "name": "Gos.remont",
//                 "icon": null
//             },
//             {
//                 "id": 5,
//                 "name": "Orta remont",
//                 "icon": null
//             },
//             {
//                 "id": 6,
//                 "name": "Remont etmeli",
//                 "icon": null
//             }
//         ]
//     }
// }