class HouseData {
  final int id;
  final int categoryId;
  final String categoryName;
  // final Location location;
  final String username;

  final String name;
  final String description;
  final String price;
  final String bronNumber;
  final int roomNumber;
  final int floorNumber;
  final List<ImageData> images;
  final List<Possibility> possibilities;
  final int writeComment;
  final String? who;
  final double? area;
  final int? levelNumber;
  final String? hashtag;
  final int? exclusive;

  HouseData({
    required this.id,
    required this.categoryId,
    required this.categoryName,
    // required this.location,
    required this.username,
    required this.name,
    required this.description,
    required this.price,
    required this.bronNumber,
    required this.roomNumber,
    required this.floorNumber,
    required this.images,
    required this.possibilities,
    required this.writeComment,
    this.who,
    this.area,
    this.levelNumber,
    this.hashtag,
    this.exclusive,
  });

  factory HouseData.fromJson(Map<String, dynamic> json) {
    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    double? parseDouble(dynamic value) {
      if (value == null) return null;
      if (value is double) return value;
      if (value is int) return value.toDouble();
      if (value is String) return double.tryParse(value) ?? null;
      return null;
    }

    return HouseData(
      id: parseInt(json['id']),
      categoryId: parseInt(json['category_id']),
      categoryName: json['category_name']?.toString() ?? '',
      // location: Location.fromJson(json['location']),
      username: json['username']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      description: json['description']?.toString() ?? '',
      price: json['price']?.toString() ?? '',
      bronNumber: json['bron_number']?.toString() ?? '',
      roomNumber: parseInt(json['room_number']),
      floorNumber: parseInt(json['floor_number']),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ImageData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      possibilities: (json['possibilities'] as List<dynamic>?)
              ?.map((e) => Possibility.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],

      writeComment: parseInt(json['write_comment']),
      who: json['who']?.toString(),
      area: parseDouble(json['area']),
      levelNumber:
          json['level_number'] == null ? null : parseInt(json['level_number']),
      hashtag: json['hashtag']?.toString(),
      exclusive: json['exclusive'] == null ? null : parseInt(json['exclusive']),
    );
  }
}

class Location {
  final int id;
  final String name;
  final String parentName;

  Location({
    required this.id,
    required this.name,
    required this.parentName,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    return Location(
      id: parseInt(json['id']),
      name: json['name']?.toString() ?? '',
      parentName: json['parent_name']?.toString() ?? '',
    );
  }
}

class User {
  final int id;
  final String username;

  User({
    required this.id,
    required this.username,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    return User(
      id: parseInt(json['id']),
      username: json['username']?.toString() ?? '',
    );
  }
}

class ImageData {
  final int id;
  final String url;

  ImageData({
    required this.id,
    required this.url,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) {
    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    return ImageData(
      id: parseInt(json['id']),
      url: json['url']?.toString() ?? '',
    );
  }
}

class Possibility {
  final int id;
  final String name;

  Possibility({
    required this.id,
    required this.name,
  });

  factory Possibility.fromJson(Map<String, dynamic> json) {
    int parseInt(dynamic value) {
      if (value == null) return 0;
      if (value is int) return value;
      if (value is String) return int.tryParse(value) ?? 0;
      return 0;
    }

    return Possibility(
      id: parseInt(json['id']),
      name: json['name']?.toString() ?? '',
    );
  }
}
