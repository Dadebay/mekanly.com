import 'package:mekanly_com/config/config.dart';
import 'package:mekanly_com/localization/locals.dart';
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
        itemCount: categNames(context).length - 1,
        itemBuilder: (context, index) {
          final categId = categNames(context).indexOf(categNames(context)[index + 1]);
          final category = categNames(context)[index + 1];
          return Column(
            children: [
              ListTile(
                leading: SvgAsset(svgs[index + 1], AppColors.mainTextDark),
                title: Text(category),
                onTap: () {
                  Navigator.pop(context, [category, categId]);
                  logger(categId);
                },
              ),
              Divider(color: AppColors.secondaryText.withOpacity(.4), height: 1)
            ],
          );
        },
      ),
    );
  }
}
