import 'package:flutter/services.dart';

class OfferNumber extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Remove any existing dashes or extra spaces
    var newText = newValue.text.replaceAll('-', '');

    // Format the input if it has at least 5 characters (for 4 digits + dash)
    if (newText.length >= 5) {
      newText = '${newText.substring(0, 4)}-${newText.substring(4)}';
    }

    // Ensure the length is not more than 11 (for 4 digits + dash + 6 digits)
    if (newText.length > 11) {
      newText = newText.substring(0, 11);
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}
