import 'package:common/common.dart';

import 'global_options.dart';

extension FilterRequest on GlobalOptions {
  String? get toFilter {
    String? possibilities;
    String? cheapPrice;
    String? expensivePrice;
    String? smallArea;
    String? bigArea;
    String? location;
    String? categories;
    String? propertyType;
    String? repairType;
    String? roomNumber;
    String? floorNumber;

    final possibility = selectedPossibility?.map((p) => p.id).toList();
    final propertyTypes = selectedPropertyType?.map((p) => p.id).toList();
    final repairTypes = selectedRepairType?.map((p) => p.id).toList();
    final roomCount = selectedRoomCount?.map((p) {
      if (p.index != 0) {
        return int.parse(p.count);
      }
      return 3;
    }).toList();
    final floorCount = selectedFloorCount?.map((p) {
      if (p.index != 0) {
        return int.parse(p.count);
      }
      return 3;
    }).toList();

    final locations = selectedSubLocations?.map((l) => l.id).toList();
    final category = selectedCategoryHouses?.map((l) => l.id).toList();

    possibilities = (possibility?.isNotEmpty ?? false)
        ? 'possibilities=$possibility'
        : null;
    propertyType = (propertyTypes?.isNotEmpty ?? false)
        ? 'property_type=$propertyTypes'
        : null;
    repairType =
        (repairTypes?.isNotEmpty ?? false) ? 'repair_type=$repairTypes' : null;
    roomNumber =
        ((roomCount?.length ?? 0) > 2) ? 'room_number=$roomCount' : null;
    floorNumber =
        ((floorCount?.length ?? 0) > 2) ? 'floor_number=$floorCount' : null;

    location = (locations?.isNotEmpty ?? false) ? 'location=$locations' : null;
    categories =
        (category?.isNotEmpty ?? false) ? 'categories=$category' : null;
    cheapPrice = minPrice != null ? 'cheap_price=$minPrice' : null;
    expensivePrice = maxPrice != null ? 'expensive_price=$maxPrice' : null;
    smallArea =
        (minArea != null && minArea != 20) ? 'small_area=$minArea' : null;
    bigArea = (maxArea != null && maxArea != 500) ? 'big_area=$maxArea' : null;

    final listed = [
      possibilities,
      cheapPrice,
      expensivePrice,
      smallArea,
      bigArea,
      location,
      categories,
      propertyType,
      repairType,
      roomNumber,
      floorNumber,
    ];

    final currentFilter =
        listed.where((filter) => filter != null).toList().join('&');
    if (currentFilter.isEmpty) {
      return null;
    }

    BaseLogger.info(currentFilter);

    return currentFilter;
  }
}
