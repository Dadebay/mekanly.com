import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gen/gen.dart';

part 'business_profile_category_entity.freezed.dart';
part 'business_profile_category_entity.g.dart';

@freezed
class BusinessProfileCategoryEntity with _$BusinessProfileCategoryEntity {
  const factory BusinessProfileCategoryEntity({
    required int id,
    String? title,
    String? image,
    @JsonKey(name: 'business_profiles') int? businessProfiles,
    List<BusinessProfileCategoryEntity>? subcategories,
  }) = _BusinessProfileCategoryEntity;

  @JsonSerializable(explicitToJson: true)
  factory BusinessProfileCategoryEntity.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileCategoryEntityFromJson(json);
}

extension BusinessProfileCategoryIcon on BusinessProfileCategoryEntity {
  Widget get buildIcon {
    switch (id) {
      case 2:
        return Assets.icons.businessProfiles.icFurniture.image(
          package: 'gen',
          height: 35.w,
          fit: BoxFit.cover,
        );
      case 11:
        return Assets.icons.businessProfiles.icHouseholdAppliancesGridView
            .image(
          package: 'gen',
          height: 45.w,
        );
      case 12:
        return Assets.icons.businessProfiles.icCarpet.image(
          package: 'gen',
          height: 45.w,
        );
      case 13:
        return Assets.icons.businessProfiles.icChandeliers.image(
          package: 'gen',
          height: 45.w,
        );
      case 14:
        return Assets.icons.businessProfiles.icConstruction.image(
          package: 'gen',
          height: 45.w,
        );
      default:
        return const SizedBox.shrink();
    }
  }
}
