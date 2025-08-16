import 'package:flutter/services.dart';

String? validateRequiredInput(String? value, {int? maxChar, int? min}) {
  if (value == null || value.trim().isEmpty) {
    return 'Required';
  }

  if (min != null && value.length < min) {
    return 'At least $min characters';
  }

  if (maxChar != null && value.length > maxChar) {
    return 'Max $maxChar characters';
  }

  return null;
}

String? emailValidator(String? email) {
  if (email == null || email.isEmpty) {
    return 'Required';
  }

  final emailValid = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  ).hasMatch(email);

  if (!emailValid) {
    return 'Enter valid email';
  }

  return null;
}

final class AppInputFormatters {
  AppInputFormatters._();

  static FilteringTextInputFormatter onlyDouble =
      FilteringTextInputFormatter.allow(
    RegExp(r'^\d*\.?\d*$'),
  );
}
