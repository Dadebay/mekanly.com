import 'package:mekanly_com/config/config.dart';
import 'package:mekanly_com/localization/locals.dart';
import 'package:mekanly_com/ui/pages/add/post_house.dart';
import 'package:mekanly_com/ui/style/style.dart';
import 'package:mekanly_com/ui/widgets/widgets.dart';

class CategorySelectionPage extends StatelessWidget {
  const CategorySelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(
        title: locals.category,
      ),
      body: ListView.builder(
        itemCount: categNames(context).length,
        itemBuilder: (context, index) {
          final categId = categNames(context).indexOf(categNames(context)[index]);
          final category = categNames(context)[index];
          return Column(
            children: [
              ListTile(
                leading: SvgAsset(svgs[index], AppColors.primary1),
                title: Text(
                  category,
                  style: const TextStyle(color: AppColors.black, fontFamily: robotoSemiBold),
                ),
                onTap: () {
                  final category2 = categNames(context)[index + 1];

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PostHousePage(category: category2, categoryID: categId + 1)),
                  );

                  logger(categId);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Divider(color: AppColors.secondaryText.withOpacity(.4), height: 1),
              )
            ],
          );
        },
      ),
    );
  }
}
