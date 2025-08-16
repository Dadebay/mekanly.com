import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../utils/extensions.dart';
import '../app_text.dart';
import 'custom_check_box.dart';

class TitledCheckBox extends StatelessWidget {
  TitledCheckBox({
    super.key,
    required this.onSelect,
    required this.isSelected,
    required this.title,
    required this.onTitleTap,
  });
  final bool isSelected;
  final ValueChanged<bool> onSelect;
  final VoidCallback onTitleTap;
  final String title;

  final ValueNotifier<bool> isChecked = ValueNotifier<bool>(false);

  void onChange() {
    isChecked.value = !isChecked.value;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ValueListenableBuilder<bool>(
          valueListenable: isChecked,
          builder: (_, checked, __) {
            return InkWell(
              onTap: onChange,
              child: CustomCheckBox(
                isSelected: checked,
                onTap: onTitleTap,
              ),
            );
          },
        ),
        6.boxW,
        GestureDetector(
          onTap: onTitleTap,
          child: AppText.s12w400BdS(
            title,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: ColorName.addressDate,
            underlined: true,
          ),
        ),
      ],
    );
  }
}
