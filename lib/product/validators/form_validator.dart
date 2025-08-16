import 'package:flutter/material.dart';

import '../../localization/extensions.dart';

String? isEmptyValidator(
  String? value,
) {
  if (value == null || value.isEmpty) {
    // If a custom error message is provided, return it
    return 'Bu hökmany'; // Default error message if none is provided
  }
  return null; // Return null if the value is not empty (no error)
}

String? phoneNumberValidator(
  String? value, {
  String? txt,
}) {
  // Check if the phone number is empty first
  if (value == null || value.isEmpty) {
    return txt ?? 'Telefon belgiňizi giriziň';
  }

  final regex = RegExp('^(61|62|63|64|65|71)');

  // Check if the phone number starts with one of the valid prefixes
  if (!regex.hasMatch(value) || value.length < 9) {
    return txt ?? 'Telefon belgiňizi dogry giriziň';
  }

  return null; // Return null if there is no validation error
}

//   if (value == null || value.isEmpty) {
//     return LocaleKeys.enterPhoneNumber.tr();
//   } else if (!regExp.hasMatch(value)) {
//     return LocaleKeys.enterValidPhoneNumber.tr();
//   }
//   return null; // Valid input
// }

String? otpValidator(
  String? value,
) {
  // Check if the phone number is empty first
  if (value == null || value.isEmpty) {
    return 'Bu hökmany';
  }

  if (value.length != 5) {
    return 'Kody dogry giriziň';
  }

  return null; // Return null if there is no validation error
}

String? validateBirthday(
  String? value,
) {
  // Regular expression for date in the format dd.MM.yyyy
  const pattern = r'^([0-2][0-9]|(3)[0-1])\.(0[1-9]|1[0-2])\.(19|20)\d{2}$';
  final regExp = RegExp(pattern);

  if (value == null || value.isEmpty) {
    return 'Doglan günüňizi giriziň'; // Error message for empty input
  } else if (!regExp.hasMatch(value)) {
    return 'Doglan günüňizi dogry giriziň'; // Error message for incorrect format
  }

  // Additional check to ensure it's a valid date (e.g., no 30th February)
  try {
    final parts = value.split('.');
    final day = int.parse(parts[0]);
    final month = int.parse(parts[1]);
    final year = int.parse(parts[2]);

    final date = DateTime(year, month, day);
    if (date.year != year || date.month != month || date.day != day) {
      return 'Doglan günüňizi dogry giriziň';
    }
    final today = DateTime.now();
    final sixteenYearsAgo = DateTime(today.year - 16, today.month, today.day);

    if (date.isAfter(sixteenYearsAgo)) {
      return 'Siz 16 ýaşdan uly bolmaly'; // Error if under 16
    }
  } catch (e) {
    return 'Doglan günüňizi dogry giriziň';
  }

  return null; // Valid input
}

String? validateGmail(
  String? value,
  BuildContext context,
) {
  // Regular expression for validating Gmail addresses
  // String pattern = r'^[a-zA-Z0-9._%+-]+@gmail\.com$';
  const pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  final regExp = RegExp(pattern);

  if (value == null || value.isEmpty) {
    return null;
  } else if (!regExp.hasMatch(value)) {
    return 'Enter a valid email address';
  }
  return null; // Valid input
}


  String? validateHashtags(String? value, BuildContext context) {
  if (value == null || value.trim().isEmpty) {
    return context.translation.help_hashtag;
  } else {
    return null;
  }

}