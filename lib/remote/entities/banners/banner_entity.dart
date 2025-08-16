import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_entity.freezed.dart';
part 'banner_entity.g.dart';

@freezed
class BannerEntity with _$BannerEntity {
  const factory BannerEntity({
    String? title,
    BannerType? type,
    String? image,
    String? logo,
    // BannerClickType? clickType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _BannerEntity;

  @JsonSerializable(explicitToJson: true)
  factory BannerEntity.fromJson(Map<String, dynamic> json) =>
      _$BannerEntityFromJson(json);
}

enum BannerType {
  big,
  inside,
  small;

  String toJson() => name;
  static BannerType fromJson(String json) => values.byName(json);
}

// enum BannerClickType {
//   house,
//   profile,
//   www,
//   images;

//   String toJson() => name;
//   static BannerClickType fromJson(String json) => values.byName(json);
// }
