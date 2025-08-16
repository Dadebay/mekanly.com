import 'package:flutter/services.dart';

class InputFormatter extends TextInputFormatter {
  InputFormatter({this.otpLength = 4});
  final int otpLength;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var newText = newValue.text.replaceAll(' ', ''); // Remove existing spaces

    if (newText.length > otpLength) {
      newText = newText.substring(0, otpLength); // Limit to OTP length
    }

    final parts = <String>[];
    for (var i = 0; i < newText.length; i++) {
      parts.add(newText[i]);
    }

    final formatted = parts.join();
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
