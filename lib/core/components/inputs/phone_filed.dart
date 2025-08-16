import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product/input_formatters/phone_number_formatter.dart';
import '../../../product/validators/form_validator.dart';
import '../app_text.dart';
import 'app_input.dart';

class PhoneFiled extends StatelessWidget {
  const PhoneFiled({super.key, required this.controller, this.onTapOutside});
  final VoidCallback? onTapOutside;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return AppInput(
      onTapOutside: onTapOutside,
      controller: controller,
      prefixIcon: AppText.s14w400BdM(
        '+993 ',
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
      ),
      hintText: 'xx xxxxxx',
      type: TextInputType.phone,
      validator: phoneNumberValidator,
      inputFormatters: [
        FlexiblePhoneFormatter(),
        LengthLimitingTextInputFormatter(9),
      ],
    );
  }
}
