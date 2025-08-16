import 'package:flutter/services.dart';

class DateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    final newText = _formatDate(text);
    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }

  String _formatDate(String value) {
    value = value.replaceAll(RegExp(r'\D'), '');
    if (value.length > 8) value = value.substring(0, 8);
    var newText = '';
    for (var i = 0; i < value.length; i++) {
      if (i == 2 || i == 4) newText += '.';
      newText += value[i];
    }
    return newText;
  }
}
