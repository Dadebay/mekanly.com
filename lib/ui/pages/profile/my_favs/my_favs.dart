import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../style/style.dart';
import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/models/favorite/favorite_model.dart';
import '/ui/pages/home/house_card.dart';
import '/ui/style/app_sizes.dart';
import '/ui/widgets/widgets.dart';

class MyFavs extends StatelessWidget {
  const MyFavs({super.key});

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(title: locals.myFavs),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.pix4),
          child: BlocBuilder<FavCubit, FavModel>(
            builder: (context, state) {
              return Column(
                mainAxisSize: state.houses.isEmpty ? MainAxisSize.max : MainAxisSize.min,
                children: [
                  if (state.houses.isEmpty)
                    Center(
                      child: EmptyWidget(locals.myFavs, icon: Icons.browser_not_supported_outlined),
                    )
                  else
                    ListView.builder(
                      itemCount: state.houses.length,
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return HouseCard(house: state.houses[index]);
                      },
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
