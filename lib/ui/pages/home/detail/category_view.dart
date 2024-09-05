import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:mekanly_com/localization/locals.dart';
import 'package:mekanly_com/logic/core/errors/types.dart';
import 'package:mekanly_com/logic/cubits/fav/fav_cubit.dart';
import 'package:mekanly_com/logic/cubits/house/house_cubit.dart';
import 'package:mekanly_com/models/category/category_model.dart';
import 'package:mekanly_com/models/favorite/favorite_model.dart';
import 'package:mekanly_com/packages.dart';
import 'package:mekanly_com/ui/pages/home/house_card.dart';
import 'package:mekanly_com/ui/style/app_sizes.dart';
import 'package:mekanly_com/ui/style/colors.dart';
import 'package:mekanly_com/ui/style/text_styles.dart';
import 'package:mekanly_com/ui/widgets/loading.dart';
import 'package:mekanly_com/ui/widgets/top_bar.dart';

import '../../../widgets/empty_widget.dart';

class CategoryViewPage extends StatelessWidget {
  const CategoryViewPage({super.key, required this.categoryID, required this.pageName});
  final int categoryID;
  final String pageName;
  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(
        title: pageName,
      ),
      body: BlocBuilder<FavCubit, FavModel>(
        builder: (context, state) {
          return BlocBuilder<HouseCubit, HouseState>(
            builder: (context, state) {
              List<House> houses = [];
              if (state is HouseLoading) {
                return const Loading();
              } else if (state is HouseSuccess) {
                houses = state.houses.houses.where((element) => element.leaveTime.isAfter(DateTime.now())).toList();
                if (categoryID != 0) {
                  houses = state.houses.houses
                      .where((element) => element.categoryId == categoryID)
                      .where((element) => (element.status == 'active' && !element.bronStatus && element.leaveTime.isAfter(DateTime.now())))
                      .toList();
                } else {
                  houses = state.houses.houses.where((element) => (element.status == 'active' && !element.bronStatus && element.leaveTime.isAfter(DateTime.now()))).toList();
                }

                houses.sort(
                  (a, b) => b.createdAt.compareTo(a.createdAt),
                );
                print(houses.length);
                if (houses.isEmpty) {
                  return InkWell(
                    onTap: () {},
                    child: EmptyWidget(locals.notFoundInfo, icon: IconlyLight.info_square),
                  );
                }
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(height: AppSizes.pix16);
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: houses.length,
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return HouseCard(house: houses[index]);
                  },
                );
              } else if (state is HouseError) {
                if (state.errorType == ErrorType.houseEmpty) {
                  return InkWell(
                    onTap: () {},
                    child: EmptyWidget(locals.notFoundInfo, icon: IconlyLight.info_square),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: EmptyWidget(locals.checkYourInternetRetry, icon: Icons.error_outline_rounded),
                  );
                }
              } else {
                return Tex('${locals.checkYourInternetRetry}\n', con: context);
              }
            },
          );
        },
      ),
    );
  }
}
