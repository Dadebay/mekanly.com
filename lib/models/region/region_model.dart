import 'dart:convert';

class Regions {
  List<RegionData> data;

  Regions(
    this.data,
  );

  factory Regions.fromJson(String str) => Regions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Regions.fromMap(Map<String, dynamic> json) => Regions(
        List<RegionData>.from(json["data"].map((x) => RegionData.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class RegionData {
  int id;
  dynamic parentId;
  String name;
  List<Cities> children;

  RegionData({
    required this.id,
    required this.parentId,
    required this.name,
    required this.children,
  });

  factory RegionData.fromJson(String str) => RegionData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RegionData.fromMap(Map<String, dynamic> json) => RegionData(
        id: json["id"],
        parentId: json["parent_id"],
        name: json["name"],
        children: List<Cities>.from(json["children"].map((x) => Cities.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "parent_id": parentId,
        "name": name,
        "children": List<dynamic>.from(children.map((x) => x.toMap())),
      };
}

class Cities {
  int id;
  int parentId;
  String name;
  DateTime createdAt;
  DateTime updatedAt;

  Cities({
    required this.id,
    required this.parentId,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Cities.fromJson(String str) => Cities.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cities.fromMap(Map<String, dynamic> json) => Cities(
        id: json["id"],
        parentId: json["parent_id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "parent_id": parentId,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
