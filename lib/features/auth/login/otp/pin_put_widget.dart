import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../product/helpers/input_validators.dart';
import '../../../../utils/extensions.dart';

class PinPutWidget extends StatelessWidget {
  const PinPutWidget({
    super.key,
    this.onCompleted,
    this.onSubmitted,
    this.controller,
  });

  final TextEditingController? controller;

  final void Function(String)? onCompleted;
  final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 42,
      height: 50,
      textStyle: context.textTheme.bodyLarge?.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 85, 85, 85),
            width: 2,
          ),
        ),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: const Border(
        bottom: BorderSide(
          color: Color.fromARGB(255, 80, 80, 80),
          width: 2.5,
        ),
      ),
    );

    final submittedPinTheme = defaultPinTheme;

    final errorPinTheme = defaultPinTheme.copyDecorationWith(
      border: const Border(
        bottom: BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
    );

    final errorTextStyle = context.textTheme.bodySmall?.copyWith(
      color: Colors.red,
    );

    return Pinput(
      length: 5,
      controller: controller,
      separatorBuilder: (index) => 12.boxW,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      errorTextStyle: errorTextStyle,
      validator: validateRequiredInput,
      errorPinTheme: errorPinTheme,
      onCompleted: onCompleted,
      onSubmitted: onSubmitted,
      showCursor: true,
    );
  }
}
