import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

import '../../../localization/extensions.dart';

List<RootViewHandler> navigationPages(BuildContext context) => [
      RootViewHandler(
        context.translation.home,
        Assets.icons.icHomeSelected,
        Assets.icons.icHome,
        0,
      ),
      RootViewHandler(
        context.translation.searchMain,
        Assets.icons.icHousesSelected,
        Assets.icons.icHouses,
        1,
      ),
      RootViewHandler(
        context.translation.businessProfile,
        Assets.icons.icBusinessProfileSelectedNew,
        Assets.icons.icBusinessProfileNew,
        2,
      ),
      RootViewHandler(
        context.translation.favorites,
        Assets.icons.icFavoriteSelected,
        Assets.icons.icFavoriteNew,
        3,
      ),
      RootViewHandler(
        context.translation.menu,
        Assets.icons.icMenuSelected,
        Assets.icons.icMenu,
        4,
      ),
    ];

class RootViewHandler with EquatableMixin {
  const RootViewHandler(
    this.label,
    this.activeIcon,
    this.icon,
    this.index,
  );

  final String label;
  final int index;
  final SvgGenImage icon;
  final SvgGenImage activeIcon;

  String get iconPath => 'assets/images/$icon';

  @override
  List<Object?> get props => [label];
}
