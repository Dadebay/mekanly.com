import 'package:mekanly_com/config/config.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../style/app_sizes.dart';
import '../../widgets/top_bar.dart';
import '/localization/locals.dart';
import '/ui/style/colors.dart';
import '/ui/widgets/action_button.dart';

class ContactMe extends StatelessWidget {
  ContactMe({super.key});

  final TextEditingController _textEditingController = TextEditingController();

  void _sendEmail(String subject, String body) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'mekanly.supp@gmail.com',
      query: _encodeQueryParameters(<String, String>{
        'subject': subject,
        'body': body,
      }),
    );

    if (await launchUrl(emailUri)) {
    } else {
      throw 'Could not launch $emailUri';
    }
  }

  String _encodeQueryParameters(Map<String, String> params) {
    return params.entries.map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}').join('&');
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(title: locals.contactMe),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.pix16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 36.0),
              TextField(
                controller: _textEditingController,
                inputFormatters: [LengthLimitingTextInputFormatter(220)],
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: locals.contactAdmin,
                  hintText: locals.enterThoughts,
                  hintStyle: TextStyle(color: AppColors.secondaryText.withOpacity(.7)),
                  labelStyle: TextStyle(color: AppColors.statusBar.withOpacity(.9)),
                  floatingLabelStyle: const TextStyle(color: AppColors.buttons),
                  alignLabelWithHint: true,
                  border: border(),
                  focusedBorder: focusedBorder(),
                ),
              ),
              const SizedBox(height: 36.0),
              ActionButton(
                size: AppSizes.pix16,
                onTap: () => _sendEmail(locals.contactMe, _textEditingController.text),
                label: locals.send,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
