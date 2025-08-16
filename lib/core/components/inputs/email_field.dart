import 'package:flutter/material.dart';

import '../../../product/helpers/input_validators.dart';
import 'app_input.dart';

class EmailFiled extends StatelessWidget {
  const EmailFiled({super.key, required this.controller, this.onTapOutside});
  final VoidCallback? onTapOutside;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return AppInput(
      onTapOutside: onTapOutside,
      controller: controller,
      hintText: 'Elektron poçtaňyz',
      type: TextInputType.emailAddress,
      validator: emailValidator,
    );
  }
}
