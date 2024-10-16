import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/cubits.dart';
import '../../../../logic/core/core.dart';
import '../../../../logic/cubits/navigator/nav_cubit.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';
import '../../../widgets/widgets.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.navIndex = 0});
  final int navIndex;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  bool _validateAndSaveForm() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: false,
      appBar: TopBar(
        title: locals.login,
        color: AppColors.secondaryTextDark,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          AppSizes.pix16,
          AppSizes.pix16,
          AppSizes.pix16,
          0,
        ),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const MekanlyBLUE(),
                const SizedBox(height: 30),
                TextFormField(
                  onTapOutside: (v) => FocusScope.of(context).unfocus(),
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(8),
                  ],
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff384CFF)),
                    ),
                    hintText: " ${locals.yourPhone}",
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
                const SizedBox(height: 20),
                TextFormField(
                  onTapOutside: (v) => FocusScope.of(context).unfocus(),
                  controller: _passwordController,
                  inputFormatters: [LengthLimitingTextInputFormatter(16)],
                  decoration: InputDecoration(
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.black),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff384CFF)),
                    ),
                    hintText: locals.passCode,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                  obscureText: _obscurePassword,
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
                const SizedBox(height: AppSizes.pix24),
                if (_isClicked)
                  const CircularProgressIndicator()
                else
                  ActionButtonGradient2(
                    mini: true,
                    label: locals.login.toUpperCase(),
                    onTap: () {
                      if (_validateAndSaveForm()) {
                        setState(() => _isClicked = true);

                        context.read<AuthCubit>().login('+993${_phoneController.text}', _passwordController.text).then((v) {
                          if (v is AuthFailed) {
                            if (v.fail == ErrorType.userNotFound) {
                              errorToast(locals.userNotFound);
                              showDialogCustom(context, locals);

                              // go(context, const RegisterPage());
                            }
                          } else if (v is AuthSuccess) {
                            if (widget.navIndex == 1) {
                              return;
                            }
                            context.read<NavCubit>().navKey.currentState?.popUntil((route) => route.isFirst);
                          }
                        });
                      }
                      setState(() => _isClicked = false);
                    },
                  ),
                GestureDetector(
                  onTap: () {
                    showDialogCustom(context, locals);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      locals.forgottenPass,
                      style: const TextStyle(color: Color(0xff384CFF), fontFamily: robotoMedium, fontSize: 18),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("YA-DA"),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.transparent, shape: RoundedRectangleBorder(borderRadius: borderAll, side: const BorderSide(width: 2, color: AppColors.linkText))),
                  onPressed: () => go(context, const RegisterPage()),
                  child: FractionallySizedBox(
                      alignment: Alignment.topCenter, widthFactor: 0.5, child: Center(child: Tex(locals.register, col: AppColors.linkText, con: context, size: AppSizes.pix16).title)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> showDialogCustom(BuildContext context, Locals locals) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                locals.forgottenPass,
                style: const TextStyle(color: Colors.black, fontFamily: robotoSemiBold, fontSize: 19),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  locals.kat24,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontFamily: robotoRegular, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ActionButtonGradient2(
                mini: true,
                label: locals.bron.toUpperCase(),
                onTap: () async {
                  Uri phoneNumber = Uri.parse('tel:+99364652712');
                  await launchUrl(phoneNumber).then((isLaunch) async {
                    if (isLaunch) {
                      await Future.delayed(const Duration(seconds: 3));
                    } else {}
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
