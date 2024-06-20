import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekanly_com/config/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../localization/locals.dart';
import '../../../models/category/category_model.dart';
import '../../../models/favorite/favorite_model.dart';

class FavCubit extends Cubit<FavModel> {
  FavCubit() : super(const FavModel());

  Future<void> initFav() async {
    final prefs = await SharedPreferences.getInstance();
    final favData = prefs.getString('fav');

    if (favData != null) {
      final favModel = FavModel.fromJson(favData);
      final updatedHouses = favModel.houses.map((house) {
        return house.copyWith(quantity: house.quantity);
      }).toList();
      emit(FavModel(houses: updatedHouses));
    }
  }

  Future<void> toggleFavorite(House item, Locals locale, BuildContext context) async {
    final isFavorited = isItemFavorited(item.id);

    if (isFavorited) {
      final updatedHouses = List<House>.from(state.houses)..removeWhere((house) => house.id == item.id);
      emit(state.copyWith(houses: updatedHouses));
      successToast(locale.removedFromFav);
    } else {
      final updatedHouses = List<House>.from(state.houses)..add(item);
      emit(state.copyWith(houses: updatedHouses));
      successToast(locale.addedToFav);
    }

    await _saveCart(state);
  }

  bool isItemFavorited(int? mtrlId) {
    return state.houses.any((house) => house.id == mtrlId);
  }

  Future<void> _saveCart(FavModel fav) async {
    final prefs = await SharedPreferences.getInstance();
    final favData = fav.toJson();
    await prefs.setString('fav', favData);
  }
}
