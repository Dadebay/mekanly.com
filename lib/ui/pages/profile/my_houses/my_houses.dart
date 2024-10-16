import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekanly_com/logic/cubits/region/region_cubit.dart';
import 'package:mekanly_com/ui/pages/profile/my_houses/edit_house.dart';

import '/localization/locals.dart';
import '/logic/cubits/cubits.dart';
import '/logic/cubits/house/house_cubit.dart';
import '/ui/pages/home/house_card.dart';
import '/ui/style/app_sizes.dart';
import '/ui/widgets/widgets.dart';
import '../../../../config/config.dart';
import '../../../../logic/cubits/categs/categs_cubit.dart';

class MyHouses extends StatefulWidget {
  const MyHouses({super.key});

  @override
  State<MyHouses> createState() => _MyHousesState();
}

class _MyHousesState extends State<MyHouses> {
  @override
  void didUpdateWidget(covariant MyHouses oldWidget) {
    if (oldWidget.key != widget.key) {
      context.read<HouseCubit>().getAllHouses();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    super.initState();
    context.read<HouseCubit>().getAllHouses();
    context.read<RegionsCubit>().fetchRgions();
  }

  Future<void> _onRefresh() async {
    context.read<CategsCubit>().fetchCategsorites();
    context.read<HouseCubit>().getAllHouses();
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: TopBar(title: locals.kat16),
      body: RefreshIndicator(
        onRefresh: () => _onRefresh(),
        child: BlocBuilder<HouseCubit, HouseState>(
          builder: (context, state) {
            if (state is HouseLoading) {
              return const Loading();
            } else if (state is HouseSuccess) {
              var userHouses = state.houses.houses.where((element) => element.user.id == context.read<AuthCubit>().repo.user.id).toList();
              userHouses.sort(
                (a, b) {
                  return b.createdAt.compareTo(a.createdAt);
                },
              );
              return Padding(
                padding: const EdgeInsets.all(AppSizes.pix8),
                child: userHouses.isEmpty
                    ? Center(child: EmptyWidget(locals.myPosts, icon: Icons.browser_not_supported_outlined))
                    : ListView.separated(
                        separatorBuilder: (context, index) {
                          return Container(
                            color: Colors.grey.shade100,
                            child: const Divider(
                              color: Colors.grey,
                            ),
                          );
                        },
                        itemCount: userHouses.length,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: () {
                              print("asdasdasd");
                              go(context, EditHousePage(house: userHouses[i]));
                            },
                            child: Container(
                              color: Colors.grey.shade100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IgnorePointer(
                                      child: HouseCardEDIT(
                                    house: userHouses[i],
                                    bronStatus: userHouses[i].leaveTime.isAfter(DateTime.now())
                                        ? state.houses.houses.firstWhere((element) => element.id == userHouses[i].id).bronStatus
                                            ? locals.bronnedAndDisappeared.split('.')[1]
                                            : locals.unbronnedAndAppeared.split('.')[1]
                                        : '',
                                    status: userHouses[i].leaveTime.isAfter(DateTime.now())
                                        ? userHouses[i].status == 'pending'
                                            ? locals.pending
                                            : userHouses[i].status == 'non-active'
                                                ? locals.notAccepted
                                                : locals.putted
                                        : '',
                                    leaveTime: userHouses[i].leaveTime,
                                  )),
                                ],
                              ),
                            ),
                          );
                        }),
              );
            } else {
              return Center(child: EmptyWidget(locals.checkYourInternetRetry, icon: Icons.warning_rounded));
            }
          },
        ),
      ),
    );
  }
}
