import 'package:chalkdart/chalk.dart';
import 'package:flutter/material.dart';
import 'package:mekanly_com/ui/style/colors.dart';

import '/ui/style/app_sizes.dart';
import '/ui/style/style.dart';
import '../localization/locals.dart';
import '../models/category/category_model.dart';
import 'responsive.dart';

final BorderRadius borderAll = BorderRadius.circular(18);
final BorderRadius borderAll10 = BorderRadius.circular(9);
final BorderRadius borderAll15 = BorderRadius.circular(13);
final BorderRadius borderAll3 = BorderRadius.circular(3);
final BorderRadius borderAll6 = BorderRadius.circular(6);
final BorderRadius borderAll8 = BorderRadius.circular(8);

const String robotoBold = 'ManropeBold';
const String robotoSemiBold = 'manropeSemiBold';
const String robotoMedium = 'ManropeMedium';
const String robotoRegular = 'ManropeRegular';

bool isTablet(BuildContext context) => Responsive.isTablet(context);
void logger(dynamic text) => debugPrint(chalk.greenBright.bgBlack(" $text"));
const appBarRadius = RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(0)));
double iconSize() => AppSizes.pix16;
const divider = Padding(
  padding: EdgeInsets.fromLTRB(AppSizes.pix10, 0, AppSizes.pix10, 0),
  child: Divider(color: Colors.black26, height: AppSizes.pix2 - 1, thickness: 1),
);

focusedBorder({BorderRadius? rad}) => OutlineInputBorder(
      borderRadius: rad ?? borderAll6,
      borderSide: const BorderSide(
        color: AppColors.buttons,
      ),
    );
border({BorderRadius? rad}) => OutlineInputBorder(
      borderRadius: rad ?? borderAll6,
      borderSide: const BorderSide(
        color: AppColors.statusBar,
      ),
    );

const List<String> svgs = [
  'all',
  'city',
  'cottage',
  'avaza',
  'room',
  'dag',
  'plan',
];
List<String> categNames(BuildContext context) {
  final local = Locals.of(context);

  return [
    local.kat1,
    local.kat3,
    local.kat2,
    local.kat4,
    local.kat5,
    local.kat6,
    local.kat7,
  ];
}

Map<String, String> feats(BuildContext context) {
  var local = Locals.of(context);

  return {
    'wifi': local.wifi,
    'kitchen': local.kitchen,
    'washer': local.washer,
    'tv': local.tv,
    'conditioner': local.conditioner,
    'wardrobe': local.ward,
    'bed': local.bed,
    'hot': local.hot,
    'fridge': local.fridge,
    'shower': local.shower,
  };
}

List<Feature> possibs(BuildContext context) {
  var local = Locals.of(context);

  return [
    Feature(name: local.wifi, id: 1),
    Feature(name: local.washer, id: 2),
    Feature(name: local.tv, id: 3),
    Feature(name: local.conditioner, id: 4),
    Feature(name: local.ward, id: 5),
    Feature(name: local.bed, id: 6),
    Feature(name: local.hot, id: 7),
    Feature(name: local.fridge, id: 8),
    Feature(name: local.shower, id: 9),
    Feature(name: local.kitchen, id: 10),
  ];
}
