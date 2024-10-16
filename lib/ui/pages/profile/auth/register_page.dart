import 'package:mekanly_com/ui/pages/profile/terms_and_conditions.dart';

import '/config/config.dart';
import '/ui/pages/profile/auth/send_sms_page.dart';
import '/ui/widgets/widgets.dart';
import '../../../../localization/locals.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with SingleTickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool obscureText1 = true;

  bool _acceptTerms = false;

  void _register() {
    if (_validateAndSaveForm()) {
      go(context, SendSMSPage(usernameController: _usernameController, phoneController: _phoneController, passwordController: _passwordController));
    } else {
      errorToast(Locals.of(context).fillAllBlanks);
    }
  }

  bool _validateAndSaveForm() {
    final form = _formKey.currentState;
    if (form!.validate() && _acceptTerms) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(
        color: AppColors.secondaryText,
        title: locals.register,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSizes.pix16,
          AppSizes.pix16,
          AppSizes.pix16,
          0,
        ),
        child: Form(key: _formKey, child: SingleChildScrollView(child: buildPhoneRegistrationForm())),
      ),
    );
  }

  Widget buildPhoneRegistrationForm() {
    var locals = Locals.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(AppSizes.pix12),
          child: MekanlyBLUE(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.pix12, horizontal: AppSizes.pix8),
          child: TextFormField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            controller: _usernameController,
            inputFormatters: [LengthLimitingTextInputFormatter(20)],
            decoration: InputDecoration(
              // contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff384CFF)),
              ),
              hintText: locals.username,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return locals.insertUsername;
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.pix12, horizontal: AppSizes.pix8),
          child: TextFormField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            controller: _phoneController,
            keyboardType: TextInputType.phone,
            inputFormatters: [LengthLimitingTextInputFormatter(8)],
            decoration: InputDecoration(
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff384CFF)),
              ),
              hintText: locals.phone,
              prefixIcon: Tex('+993', con: context, size: AppSizes.pix16).title,
              prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return locals.inserPhoneWarning;
              } else if (value.length != 8) {
                return locals.mustbe8Digit;
              }
              if (!isValidPhone(value)) {
                return locals.startWith6;
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.pix12, horizontal: AppSizes.pix8),
          child: TextFormField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            controller: _passwordController,
            inputFormatters: [LengthLimitingTextInputFormatter(16)],
            decoration: InputDecoration(
              // contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff384CFF)),
              ),
              hintText: locals.passCode,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText1 = !obscureText1;
                  });
                },
                icon: Icon(
                  obscureText1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                ),
              ),
            ),
            obscureText: obscureText1,
            validator: (value) {
              if (value!.isEmpty) {
                return locals.insertPass;
              }
              if (value.length < 8) {
                return locals.mustbe8Digit;
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.pix12, horizontal: AppSizes.pix8),
          child: TextFormField(
            inputFormatters: [LengthLimitingTextInputFormatter(16)],
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              hintText: locals.reTypePass,
              // contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
              border: const UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff384CFF)),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText1 = !obscureText1;
                  });
                },
                icon: Icon(
                  obscureText1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                ),
              ),
            ),
            obscureText: obscureText1,
            validator: (value) {
              if (value!.isEmpty) {
                return locals.reInsertPass;
              } else if (value != _passwordController.text) {
                return locals.notMatch;
              }
              if (value.length < 8) {
                return locals.mustbe8Digit;
              }
              return null;
            },
          ),
        ),
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              child: InkWell(
                onTap: () {
                  setState(() {
                    _acceptTerms = !_acceptTerms;
                  });
                },
                child: Icon(_acceptTerms ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: InkWell(
                  onTap: () => go(context, const TermsAndConditions()),
                  child: Tex(locals.readAndAccept, con: context).linkedText,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        ActionButtonGradient2(
          mini: true,
          onTap: _register,
          label: locals.register.toUpperCase(),
        ),
      ],
    );
  }

  Widget buildEmailRegistrationForm() {
    var locals = Locals.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(AppSizes.pix12),
          child: Mekanly(),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSizes.pix8),
          child: TextFormField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            controller: _usernameController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
              border: border(),
              focusedBorder: focusedBorder(),
              hintText: locals.username,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return locals.insertUsername;
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSizes.pix8),
          child: TextFormField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
              border: border(),
              focusedBorder: focusedBorder(),
              hintText: locals.email,
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return locals.insertEmail;
              } else if (!value.contains('@')) {
                return locals.wrongEmail;
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSizes.pix8),
          child: TextFormField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            controller: _passwordController,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
              border: border(),
              focusedBorder: focusedBorder(),
              hintText: locals.passCode,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText1 = !obscureText1;
                  });
                },
                icon: Icon(
                  obscureText1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                ),
              ),
            ),
            obscureText: obscureText1,
            validator: (value) {
              if (value!.isEmpty) {
                return locals.insertPass;
              }
              return null;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(AppSizes.pix8),
          child: TextFormField(
            onTapOutside: (v) => FocusScope.of(context).unfocus(),
            decoration: InputDecoration(
              hintText: locals.reTypePass,
              contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
              border: border(),
              focusedBorder: focusedBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText1 = !obscureText1;
                  });
                },
                icon: Icon(
                  obscureText1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                ),
              ),
            ),
            obscureText: obscureText1,
            validator: (value) {
              if (value!.isEmpty) {
                return locals.reInsertPass;
              } else if (value != _passwordController.text) {
                return locals.notMatch;
              }
              return null;
            },
          ),
        ),
        Row(
          children: <Widget>[
            Checkbox(
              value: _acceptTerms,
              onChanged: (value) {
                setState(() {
                  _acceptTerms = value!;
                });
              },
            ),
            Tex(locals.readAndAccept, con: context),
          ],
        ),
        const SizedBox(height: 15),
        ActionButton(
          radius: 0,
          size: AppSizes.pix16,
          onTap: _register,
          label: locals.register.toUpperCase(),
        ),
      ],
    );
  }
}
