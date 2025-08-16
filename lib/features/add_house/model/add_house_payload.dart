// ignore_for_file: public_member_api_docs, sort_constructors_first


class AddHousePayload {
  AddHousePayload({
    required this.name,
    required this.bronNumber,
    required this.description,
    required this.price,
    required this.location_id,
    required this.category_id,
    required this.possibilities,
    required this.who,
    required this.area,
    required this.write_comment,
    required this.exclusive,
    required this.floor_number,
    required this.room_number,
    required this.hashtag,
    required this.level_number,
    required this.property_type_id,
    required this.repair_type_id,
  });

  final String name;
  final String bronNumber;
  final String description;
  final int price;
  final int location_id;
  final int category_id;
  final List<int> possibilities;
  final bool who;
  final int? area;
  final int write_comment;
  final int exclusive;
  final int? floor_number;
  final int? room_number;
  final String? hashtag;
  final int? level_number;
  final int? property_type_id;
  final int? repair_type_id;

  Map<String, dynamic> toMap() {
    final phone = bronNumber.replaceAll(' ', '');

    final map = <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'location_id': location_id,
      'category_id': category_id,
      'possibilities': possibilities,
      'who': 'Eýesinden',
      'area': area,
      'bron_number': '+993$phone',
      'write_comment': write_comment,
      'room_number': room_number,
      'exclusive': exclusive,
    };

    if (level_number != null) {
      map['level_number'] = level_number;
    }

    if (floor_number != null) {
      map['floor_number'] = floor_number;
    };

    if (property_type_id != null) {
      map['property_type_id'] = property_type_id;
    }

    if (repair_type_id != null) {
      map['repair_type_id'] = repair_type_id;
    }

    if (hashtag != null && hashtag!.isNotEmpty) {
      map['hashtag'] = hashtag;
    }

    return map;
  }

  Map<String, dynamic> addHouse() {
    return toMap();
  }
}

enum HolderName {
  holder(title: 'Eýesinden'),
  solder(title: 'realtordan');

  const HolderName({required this.title});

  final String title;
}
