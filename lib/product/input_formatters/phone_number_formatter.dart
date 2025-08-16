import 'package:flutter/services.dart';

String formatPhoneNumber(String phone) {
  // Replace all non-digit characters (spaces, parentheses, hyphens)
  var formattedPhone = phone.replaceAll(RegExp(r'[^\d]'), '');

  // Ensure the phone number starts with +993
  if (!formattedPhone.startsWith('993')) {
    formattedPhone = '993$formattedPhone';
  }

  return formattedPhone;
}

class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newText = newValue.text;

    // If the new text length is greater than 14 (including country code and space), return the old value.
    if (newText.length > 9) {
      return oldValue;
    }

    var text = newText;

    // If the length is less than 5 and the text doesn't start with "+993 ", add "+993 ".
    // if (text.length < 5 && !text.startsWith('+993 ')) {
    //   text = '+993 ';
    // }

    // If the length is 5 and the text doesn't start with "+993 ", add "+993 ".
    // if (text.length == 4 && !text.startsWith('+993 ')) {
    //   text = '+993 ${text.substring(4)}';
    // }

    // If the length is 6 and the character at index 4 is not a space, insert a space.
    if (text.length == 3 && text[2] != ' ') {
      text = '${text.substring(0, 2)} ${text.substring(2)}';
    }

    // If the length is 6 and the character at index 4 is a space, remove it.
    if (text.length == 6 && text[4] == ' ') {
      text = text.substring(0, 4) + text.substring(5);
    }

    // Prevent entering non-numeric characters after "+993 ".
    // if (text.startsWith('+993 ') &&
    //     text.substring(5).contains(RegExp('[^0-9]'))) {
    //   return oldValue;
    // }

    // Return the updated value.
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}

class CustomPhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // If deletion is happening, return the new value
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    // Remove any non-digit characters
    var digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');

    // Validate first two digits
    if (digitsOnly.length > 1) {
      // First digit must be 6 or 7
      if (digitsOnly[0] != '6' && digitsOnly[0] != '7') {
        return oldValue;
      }

      // If first digit is 6, second digit must be 1-5
      if (digitsOnly[0] == '6' &&
          (int.parse(digitsOnly[1]) < 1 || int.parse(digitsOnly[1]) > 5)) {
        return oldValue;
      }

      // If first digit is 7, second digit must be 1
      if (digitsOnly[0] == '7' && digitsOnly[1] != '1') {
        return oldValue;
      }
    }

    // Limit to 9 digits
    if (digitsOnly.length > 9) {
      digitsOnly = digitsOnly.substring(0, 9);
    }

    // Format the number
    final formatted = StringBuffer();
    for (var i = 0; i < digitsOnly.length; i++) {
      formatted.write(digitsOnly[i]);
    }

    return TextEditingValue(
      text: formatted.toString(),
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

class FlexiblePhoneFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // If deletion is happening, return the new value to prevent cursor jump
    if (newValue.text.length < oldValue.text.length) {
      return newValue;
    }

    // Remove all non-digit characters
    var digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');

    // Truncate to 11 digits (including country code)
    if (digitsOnly.length > 11) {
      digitsOnly = digitsOnly.substring(0, 11);
    }

    // Validate phone number structure
    if (digitsOnly.length >= 2) {
      // First two digits validation
      if (digitsOnly[0] != '6' && digitsOnly[0] != '7') {
        return oldValue;
      }

      // Additional digit validation based on first digit
      if (digitsOnly[0] == '6' &&
          (int.parse(digitsOnly[1]) < 1 || int.parse(digitsOnly[1]) > 5)) {
        return oldValue;
      }

      if (digitsOnly[0] == '7' && digitsOnly[1] != '1') {
        return oldValue;
      }
    }

    // Format the number
    var formatted = '';
    if (digitsOnly.length > 2) {
      formatted = '${digitsOnly.substring(0, 2)} ${digitsOnly.substring(2)}';
    } else {
      formatted = digitsOnly;
    }

    // Calculate new cursor position
    var newCursorPosition = newValue.selection.baseOffset;
    if (oldValue.text.length < formatted.length) {
      // If text is added, adjust cursor position
      newCursorPosition += formatted.length - oldValue.text.length;
    }

    // Ensure cursor position doesn't exceed formatted text length
    newCursorPosition = newCursorPosition > formatted.length
        ? formatted.length
        : newCursorPosition;

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: newCursorPosition),
    );
  }
}
