import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({super.key, required this.isSelected, required this.onTap});

  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    const duration = Duration(milliseconds: 300);
    return InkWell(
      onTap: onTap,
      child: AnimatedContainer(
        key: const Key('custom_check_box'),
        duration: duration,
        height: 16,
        width: 16,
        alignment: Alignment.center,
        decoration: !isSelected
            ? ShapeDecoration(
                color: ColorName.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: ColorName.addressDate,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
              )
            : ShapeDecoration(
                color: ColorName.main,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: const BorderSide(
                    color: ColorName.main,
                  ),
                ),
              ),
        child: Container(
          alignment: Alignment.center,
          height: 12,
          width: 12,
          child: AnimatedSwitcher(
            duration: duration,
            child: isSelected
                ? const Icon(
                    Icons.check,
                    color: ColorName.white,
                    size: 12,
                  )
                : const SizedBox.shrink(),
          ),
        ),
      ),
    );
  }
}
