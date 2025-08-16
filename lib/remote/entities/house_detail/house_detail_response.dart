import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gen/gen.dart';
import 'package:mekanly/remote/entities/global_options/global_options.dart';

import '../../../core/components/small_icon_wrapper.dart';

part 'house_detail_response.freezed.dart';
part 'house_detail_response.g.dart';

@freezed
class HouseDetailResponse with _$HouseDetailResponse {
  const factory HouseDetailResponse({
    HouseData? data,
  }) = _HouseDetailResponse;

  factory HouseDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$HouseDetailResponseFromJson(json);
}

@freezed
class HouseData with _$HouseData {
  const factory HouseData({
    int? id,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'category_name') String? categoryName,
    Location? location,
    String? username,
    User? user,
    String? name,
    String? description,
    String? reason,
    String? price,
    @JsonKey(name: 'lower_price') String? lowerPrice, // Added
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
    bool? favorited,
  }) = _HouseData;

  factory HouseData.fromJson(Map<String, dynamic> json) =>
      _$HouseDataFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    int? id,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'parent_name') String? parentName,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? username,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class HouseImage with _$HouseImage {
  const factory HouseImage({
    String? url,
    String? original,
    String? thumbnail,
    String? watermark,
  }) = _HouseImage;

  factory HouseImage.fromJson(Map<String, dynamic> json) =>
      _$HouseImageFromJson(json);
}

@freezed
class Possibility with _$Possibility {
  const factory Possibility({
    int? id,
    String? name,
  }) = _Possibility;

  factory Possibility.fromJson(Map<String, dynamic> json) =>
      _$PossibilityFromJson(json);
}

extension PossibilityIcon on Possibility {
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
          icon: Assets.icons.mangal.svg(package: 'gen'),
        );
      case 13:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.balkon.svg(package: 'gen'),
        );

      case 14:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icWorkingDesk.svg(package: 'gen'),
        );
      case 15:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icUpElevator.svg(package: 'gen'),
        );
      case 16:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icHeatWater.svg(package: 'gen'),
        );
      case 17:
        return OptionPossibilityIconWrapper(
          icon: Assets.icons.icHeatingAirConditioning.svg(package: 'gen'),
        );
      default:
        return const Text('');
    }
  }
}

extension PossibilityTitle on Possibility {
  String get title {
    switch (id) {
      case 1:
        return 'Wi-Fi';
      case 2:
        return 'Kir maşyn';
      case 3:
        return 'Telewizor';
      case 4:
        return 'Kondisioner';
      case 5:
        return 'Mebel-şkaf';
      case 6:
        return 'Spalny';
      case 7:
        return 'Peç';
      case 8:
        return 'Sowadyjy';
      case 9:
        return 'Duş';
      case 10:
        return 'Aşhana';

      case 11:
        return 'Mangal';
      case 12:
        return 'Basseýn';
      case 13:
        return 'Balkon';
      case 14:
        return 'Iş stoly';
      case 15:
        return 'Lift';
      case 16:
        return 'Ýyly suw';
      case 17:
        return 'Ýyladyş ulgamy';

      default:
        return '';
    }
  }
}
