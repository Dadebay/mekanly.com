//  {
//           "item_id": 860,
//           "type": "house",
//           "place": null,
//           "name": "Arenda JAÝ Hitrowka",
//           "location": {
//               "name": "Ählisi",
//               "parent": "Aşgabat şäheri"
//           },
//           "description": "Arenda JAÝ Hitrowka \n2/1 etaj 1* 2 edilen JAÝ Remontly\nRemontdan son hickim ýaşamadyk\nAhli şerti bar bir spalny ýok \nuly ýaşly Grajdan braga,\n Ýeke ýaşajak Uly Telekeçi Aýal Maşgala,\nEjeli ogla we Ejeli gyza, \nUly ýaşly işleýan oglana yada gyza bolýa",
//           "phone": "+99362799898",
//           "image": "https://mekanly.com.tm/storage/17388297200.jpg"
//       },

import 'package:freezed_annotation/freezed_annotation.dart';

import 'ads_location_entity.dart';

part 'top_ads_entity.freezed.dart';
part 'top_ads_entity.g.dart';

@freezed
class TopAdsEntity with _$TopAdsEntity {
  const factory TopAdsEntity({
    String? name,
    String? type,
    String? phone,
    String? image,
    String? price,
    AdsLocationEntity? location,
    String? description,
    @JsonKey(name: 'item_id') int? itemId,
  }) = _TopAdsEntity;

  @JsonSerializable(explicitToJson: true)
  factory TopAdsEntity.fromJson(Map<String, dynamic> json) =>
      _$TopAdsEntityFromJson(json);
}
