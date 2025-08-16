import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../product/validators/form_validator.dart';
import 'app_input.dart';

class OtpFiled extends StatelessWidget {
  const OtpFiled({super.key, required this.controller, this.onTapOutside});
  final VoidCallback? onTapOutside;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return AppInput(
      onTapOutside: onTapOutside,
      controller: controller,
      hintText: 'Kody giriziň',
      type: TextInputType.number,
      validator: otpValidator,
      inputFormatters: [
        LengthLimitingTextInputFormatter(5),
      ],
    );
  }
}
