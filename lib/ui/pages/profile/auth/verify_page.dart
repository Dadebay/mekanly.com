import '../../../../config/config.dart';
import '../../../style/app_sizes.dart';
import '../../../widgets/widgets.dart';
import '/localization/locals.dart';
import '/ui/style/style.dart';

class VerificationPage extends StatelessWidget {
  final String content;

  const VerificationPage({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(title: locals.verify, color: AppColors.secondaryTextDark),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.pix16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20),
              child: Mekanly(),
            ),
            Tex(content, con: context),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
                border: border(),
                hintText: locals.arrivalOtp,
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return locals.checkYourInternetRetry;
                }
                return null;
              },
            ),
            const SizedBox(height: AppSizes.pix16),
            ActionButton(
              radius: 0,
              onTap: () {},
              label: locals.verify.toUpperCase(),
            ),
          ],
        ),
      ),
    );
  }
}
