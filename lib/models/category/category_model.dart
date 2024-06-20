import '/config/config.dart';

class Houses {
  List<House> houses;

  Houses(this.houses);

  factory Houses.fromJson(String source) => Houses.fromMap(json.decode(source));

  factory Houses.fromMap(map) {
    return Houses(
      List<House>.from(
        map["data"].map<House>(
          (x) {
            return House.fromMap(x);
          },
        ),
      ).toList(),
    );
  }
}

class AllComments {
  List<Comment> all;

  AllComments(this.all);

  factory AllComments.fromJson(String source) => AllComments.fromMap(json.decode(source));

  factory AllComments.fromMap(map) {
    return AllComments(
      List<Comment>.from(
        map["data"].map<Comment>(
          (x) {
            return Comment.fromMap(x);
          },
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(all.map((x) => x.toMap())),
      };
}

class Categories {
  List<Category> all;

  Categories(this.all);

  factory Categories.fromJson(String source) => Categories.fromMap(json.decode(source));

  factory Categories.fromMap(map) {
    return Categories(
      List<Category>.from(
        map["data"].map<Category>(
          (x) {
            return Category.fromMap(x);
          },
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());
  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(all.map((x) => x.toMap())),
      };
}

class Category {
  int id;
  String name;
  // List<House> houses;

  Category({
    required this.id,
    required this.name,
    // required this.houses,
  });

  factory Category.fromJson(String str) => Category.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Category.fromMap(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        // houses: List<House>.from(json["houses"].map((x) => House.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        // "houses": List<dynamic>.from(houses.map((x) => x.toMap())),
      };
}

class House {
  int? quantity;
  int id;
  int categoryId;
  Location location;
  String name;
  String categoryName;
  String bronNumber;
  bool luxe;
  bool bronStatus;
  String description;
  DateTime enterTime;
  DateTime leaveTime;
  DateTime createdAt;
  DateTime updatedAt;
  String? dayEnterTime;
  String? dayLeaveTime;
  String status;
  int? viewed;
  int roomNumber;
  int floorNumber;
  int guestNumber;
  int? order;
  String price;
  User user;
  List<Img> images;
  List<Feature> possibilities;
  List<Comment> comments;

/* 
Gat sany
Adam sany 
Mumkinciliklerini islegine gora saylaya
  ŞULARY BOŞ GOYUP BELLEMAN BILÝA */

  House({
    this.quantity = 0,
    required this.id,
    required this.categoryId,
    required this.location,
    required this.name,
    required this.categoryName,
    required this.bronNumber,
    required this.luxe,
    required this.bronStatus,
    required this.description,
    required this.enterTime,
    required this.leaveTime,
    required this.createdAt,
    required this.updatedAt,
    this.dayEnterTime,
    this.dayLeaveTime,
    required this.status,
    this.viewed,
    required this.roomNumber,
    required this.floorNumber,
    required this.guestNumber,
    this.order,
    required this.price,
    required this.user,
    required this.images,
    required this.possibilities,
    required this.comments,
  });

  factory House.fromJson(String str) => House.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory House.fromMap(Map<String, dynamic> json) {
    return House(
      id: json["id"],
      categoryId: json["category_id"],
      categoryName: json["category_name"],
      location: Location.fromMap(json["location"]),
      name: json["name"],
      description: json["description"],
      enterTime: DateTime.parse(json["enter_time"] as String),
      leaveTime: DateTime.parse(json["leave_time"] as String),
      viewed: json["viewed"] ?? 1,
      roomNumber: json["room_number"],
      floorNumber: json["floor_number"],
      guestNumber: json["guest_number"],
      order: json["order"],
      price: double.parse(json["price"]).toStringAsFixed(0),
      dayLeaveTime: json["day_leave_time"],
      dayEnterTime: json["day_enter_time"],
      status: json["status"],
      luxe: json["luxe"] == 1 ? true : false,
      bronNumber: json["bron_number"],
      bronStatus: json["bron_status"] == 1 ? true : false,
      user: User.fromMap(json["user"]),
      images: List<Img>.from(json["images"].map((x) => Img.fromMap(x))),
      possibilities: List<Feature>.from(json["possibilities"].map((x) => Feature.fromMap(x))),
      comments: List<Comment>.from(json["comments"].map((x) => Comment.fromMap(x))),
      createdAt: DateTime.parse(json["created_at"] as String),
      updatedAt: DateTime.parse(json["updated_at"] as String),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "category_id": categoryId,
      "name": name,
      "category_name": categoryName,
      "bron_number": bronNumber,
      "luxe": luxe,
      "bron_status": bronStatus,
      "location": location.toMap(),
      "description": description,
      "enter_time": enterTime.toString(),
      "leave_time": leaveTime.toString(),
      "created_at": createdAt.toString(),
      "updated_at": updatedAt.toString(),
      "day_enter_time": dayEnterTime,
      "day_leave_time": dayLeaveTime,
      "status": status,
      "viewed": viewed,
      "room_number": roomNumber,
      "floor_number": floorNumber,
      "guest_number": guestNumber,
      "order": order,
      "price": price,
      "user": user.toMap(),
      "images": List<dynamic>.from(images.map((x) => x.toMap())),
      "possibilities": List<dynamic>.from(possibilities.map((x) => x.toMap())),
      "comments": List<dynamic>.from(comments.map((x) => x.toMap())),
    };
  }

  House copyWith({
    int? quantity,
  }) =>
      House(
          id: id,
          categoryId: categoryId,
          categoryName: categoryName,
          location: location,
          name: name,
          luxe: luxe,
          bronNumber: bronNumber,
          bronStatus: bronStatus,
          description: description,
          enterTime: enterTime,
          dayEnterTime: dayEnterTime,
          leaveTime: leaveTime,
          createdAt: createdAt,
          updatedAt: updatedAt,
          dayLeaveTime: dayLeaveTime,
          status: status,
          viewed: viewed,
          roomNumber: roomNumber,
          floorNumber: floorNumber,
          guestNumber: guestNumber,
          order: order,
          price: price,
          user: user,
          images: images,
          possibilities: possibilities,
          comments: comments);
}

class Comment {
  int id;
  int houseId;
  int? replyId;
  int userId;
  String? star;

  String username;
  String description;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  Comment({
    required this.id,
    required this.houseId,
    this.replyId,
    required this.userId,
    required this.username,
    this.star,
    required this.description,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Comment.fromJson(String str) => Comment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Comment.fromMap(Map<String, dynamic> json) => Comment(
        id: json["id"],
        replyId: json["reply_id"],
        houseId: json["house_id"],
        userId: json["user_id"],
        star: json["star"],
        username: json["username"],
        description: json["description"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "house_id": houseId,
        "reply_id": replyId,
        "user_id": userId,
        "star": star,
        "username": username,
        "description": description,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Img {
  int id;
  String url;

  Img({
    required this.id,
    required this.url,
  });

  factory Img.fromJson(String str) => Img.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Img.fromMap(Map<String, dynamic> json) => Img(
        id: json["id"],
        url: json["url"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "url": url,
      };
}

class Location {
  int id;
  int parentId;
  String name;
  String parentName;
  DateTime createdAt;
  DateTime updatedAt;

  Location({
    required this.id,
    required this.parentId,
    required this.name,
    required this.parentName,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Location.fromJson(String str) => Location.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Location.fromMap(Map<String, dynamic> json) => Location(
        id: json["id"],
        parentId: json["parent_id"],
        name: json["name"],
        parentName: json["parent_name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "parent_id": parentId,
        "name": name,
        "parent_name": parentName,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

class Feature {
  int id;
  String name;
  // bool selected;

  Feature({
    required this.id,
    required this.name,
    // this.selected = false,
  });

  factory Feature.fromJson(String str) => Feature.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Feature.fromMap(Map<String, dynamic> json) => Feature(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };
}

class User {
  int id;
  String username;
  dynamic email;
  String phone;
  dynamic emailVerifiedAt;
  dynamic phoneVerifiedAt;
  String role;
  String status;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.phone,
    required this.emailVerifiedAt,
    required this.phoneVerifiedAt,
    required this.role,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        emailVerifiedAt: json["email_verified_at"],
        phoneVerifiedAt: json["phone_verified_at"],
        role: json["role"],
        status: json["status"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "username": username,
        "email": email,
        "phone": phone,
        "email_verified_at": emailVerifiedAt,
        "phone_verified_at": phoneVerifiedAt,
        "role": role,
        "status": status,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
