import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../localization/locals.dart';
import '../../../../logic/cubits/cubits.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';
import '/config/config.dart';
import '/logic/cubits/categs/categs_cubit.dart';
import '/logic/cubits/house/house_cubit.dart';
import '/ui/pages/home/home.dart';
import '/ui/widgets/widgets.dart';

class MyComments extends StatefulWidget {
  const MyComments({super.key});

  @override
  State<MyComments> createState() => MyCommentsState();
}

class MyCommentsState extends State<MyComments> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    var div = const Divider(
      color: AppColors.secondaryTextDark,
      height: AppSizes.pix10,
    );
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(
        color: AppColors.mainText,
        height: 90,
        title: locals.myComments,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(2),
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: AppColors.mainText)),
            child: TabBar(
              labelColor: AppColors.mainTextDark,
              indicatorColor: AppColors.statusBar.withOpacity(.6),
              key: UniqueKey(),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              controller: _tabController,
              tabs: [
                Tab(height: 30, text: locals.writtenToThem),
                Tab(height: 30, text: locals.writtemToMe),
              ],
            ),
          ),
        ),
      ),
      body: BlocBuilder<HouseCubit, HouseState>(
        builder: (context, state) {
          if (state is HouseSuccess) {
            var userHouses = state.houses.houses.where((element) => element.user.id == context.read<AuthCubit>().repo.user.id).toList();
            var allComments = state.houses.houses.expand((element) => element.comments).toList();
            var userComments = allComments.where((element) => element.userId == context.read<AuthCubit>().repo.user.id).toList();
            var writtenToMe = allComments.where((element) => userHouses.any((house) => house.id == element.houseId)).toList();
            return TabBarView(
              key: UniqueKey(),
              controller: _tabController,
              children: [
                ListView.separated(
                  separatorBuilder: (context, index) {
                    return div;
                  },
                  padding: const EdgeInsets.all(0),
                  itemCount: userComments.length,
                  itemBuilder: ((context, index) {
                    var comment = userComments[index];
                    return CommentTile(
                      onTap: () => go(context, HouseDetailsPage(house: context.read<HouseCubit>().repo.houses.houses.firstWhere((house) => house.id == userComments[index].houseId))),
                      username: comment.username,
                      houseName: context.read<CategsCubit>().repo.houses.houses.firstWhere((house) => house.id == userComments[index].houseId).name,
                      descr: comment.description,
                      createTime: toTime(comment.createdAt),
                    );
                  }),
                ),
                ListView.separated(
                  padding: const EdgeInsets.all(0),
                  separatorBuilder: (context, index) {
                    return div;
                  },
                  itemCount: writtenToMe.length,
                  itemBuilder: (context, index) {
                    return CommentTile(
                      onTap: () => go(context, HouseDetailsPage(house: context.read<HouseCubit>().repo.houses.houses.firstWhere((h) => h.id == writtenToMe[index].houseId))),
                      createTime: toTime(writtenToMe[index].createdAt),
                      username: writtenToMe[index].username,
                      houseName: context.read<HouseCubit>().repo.houses.houses.firstWhere((h) => h.id == writtenToMe[index].houseId).name,
                      descr: writtenToMe[index].description,
                    );
                  },
                ),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}

class CommentTile extends StatelessWidget {
  const CommentTile({
    super.key,
    required this.createTime,
    required this.username,
    required this.houseName,
    required this.descr,
    required this.onTap,
  });

  final String createTime;
  final String username;
  final String houseName;
  final String descr;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      dense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Tex(createTime, con: context).subtitle,
              const Spacer(),
              Tex(username, con: context).subtitle,
              const Spacer(),
            ],
          ),
          Tex(houseName, con: context).title,
        ],
      ),
      subtitle: Tex(descr, con: context).subtitle,
    );
  }
}
