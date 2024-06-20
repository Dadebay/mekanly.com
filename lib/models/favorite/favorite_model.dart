import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../category/category_model.dart';
import '/config/config.dart';

class FavModel extends Equatable {
  final List<House> houses;

  const FavModel({this.houses = const <House>[]});

  @override
  List<Object?> get props => [houses];

  FavModel copyWith({
    List<House>? houses,
  }) {
    return FavModel(
      houses: houses ?? this.houses,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'houses': houses.map((x) => x.toMap()).toList(),
    };
  }

  factory FavModel.fromMap(Map<String, dynamic> map) {
    return FavModel(
      houses: List<House>.from(
        (map['houses']).map<House>(
          (x) => House.fromMap(x),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory FavModel.fromJson(String source) => FavModel.fromMap(json.decode(source));
}
