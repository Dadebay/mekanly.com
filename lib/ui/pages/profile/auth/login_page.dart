import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../logic/core/core.dart';
import '../../../../logic/cubits/navigator/nav_cubit.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';
import '../../../widgets/widgets.dart';
import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/cubits.dart';
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(20),
                  child: Mekanly(),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  onTapOutside: (v) => FocusScope.of(context).unfocus(),
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(8),
                  ],
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12, vertical: 0),
                    border: border(),
                    focusedBorder: focusedBorder(),
                    labelText: locals.yourPhone,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(AppSizes.pix10, 2, 0, 0),
                      child: Tex('+993', con: context, size: AppSizes.pix16).title,
                    ),
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix12),
                    border: border(),
                    focusedBorder: focusedBorder(),
                    labelText: locals.passCode,
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
                  ActionButton(
                    size: AppSizes.pix16,
                    radius: 0,
                    label: locals.login.toUpperCase(),
                    onTap: () async {
                      if (_validateAndSaveForm()) {
                        setState(() => _isClicked = true);

                        await context.read<AuthCubit>().login('+993${_phoneController.text}', _passwordController.text).then((v) {
                          if (v is AuthFailed) {
                            if (v.fail == ErrorType.userNotFound) {
                              errorToast(locals.userNotFound);
                              go(context, const RegisterPage());
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
                const SizedBox(height: 6),
                Tex(locals.forgottenPass, col: AppColors.linkText, con: context),
                TextButton(
                  onPressed: () => go(context, const RegisterPage()),
                  child: Tex(locals.register, col: AppColors.linkText, con: context, size: AppSizes.pix16).title,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
