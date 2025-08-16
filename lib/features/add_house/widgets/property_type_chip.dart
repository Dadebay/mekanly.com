import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_text.dart';
import '../../../product/constants/constants.dart';
import '../../../remote/entities/global_options/global_options.dart';
import '../../house_detail/recoman/recomendation_biznes.dart';

class PropertyTypeChip extends StatelessWidget {
   const PropertyTypeChip({
    super.key,
    this.type,
    required this.onChanged,
  });
  final PropertyType? type;
  final ValueChanged<PropertyType> onChanged;


  @override
  Widget build(BuildContext context) {
    final isSelected = type?.selected ?? false;
    return InkWell(
      onTap: () {
        if (type == null) return;
        final updated = type!.copyWith(selected: !type!.selected);
        onChanged.call(updated);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffF2F2F2) : null,
          border: Border.all(
            color:
                isSelected ? const Color(0xff222222) : const Color(0xffDDDDDD),
            width: 1.w,
          ),
          borderRadius: BorderRadius.circular(6.w),
        ),
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 8).w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            type?.buildIcon ?? const SizedBox.shrink(),
            8.boxH,
            AppText.s12w400BdS(
              type?.name ?? '',
              fontFamily: StringConstants.roboto,
            ),
          ],
        ),
      ),
    );
  }
}
