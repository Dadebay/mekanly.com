import 'package:flutter/services.dart';

class PassportFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    var text = newValue.text
        .replaceAll(RegExp('[^0-9]'), ''); // Remove non-numeric characters

    // Handle backspace or clearing
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    // Add dashes after the day and month if necessary
    if (text.length >= 2) {
      text = '${text.substring(0, 2)}-${text.substring(2)}';
    }
    if (text.length >= 5) {
      text = '${text.substring(0, 5)}-${text.substring(5)}';
    }

    // Restrict the text length to 10 characters (dd-MM-yyyy)
    if (text.length > 10) {
      text = text.substring(0, 10);
    }

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(
        offset: text.length,
      ), // Keep the cursor at the end
    );
  }
}
