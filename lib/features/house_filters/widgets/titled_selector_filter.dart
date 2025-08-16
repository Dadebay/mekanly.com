// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/components/app_text.dart';
import '../../../product/constants/constants.dart';
import '../../../remote/entities/global_options/global_options.dart';
import '../../../utils/extensions.dart';

class TitledSelectorFilter extends StatelessWidget {
  const TitledSelectorFilter({
    super.key,
    required this.title,
    required this.list,
    required this.valueChanged,
    this.padding,
  });

  final String title;
  final List<HouseFloorCount> list;
  final ValueChanged<HouseFloorCount> valueChanged;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              padding ?? EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
          child: AppText.s14w400BdM(
            title,
            fontSize: 15.sp,
            fontFamily: StringConstants.roboto,
          ),
        ),
        8.boxH,
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 40.w),
          child: ListView.separated(
            shrinkWrap: true,
            padding: padding ?? EdgeInsets.symmetric(horizontal: 16.w),
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => 10.boxW,
            itemBuilder: (context, index) {
              final item = list[index];
              return GestureDetector(
                key: Key('titled_selector_$index'),
                onTap: () {
                  List<HouseFloorCount> newList;

                  if (index == 0) {
                    newList = list.map((e) {
                      return e.copyWith(isSelected: e == list[0]);
                    }).toList();
                  } else {
                    newList = list.map((e) {
                      if (e == list[0]) return e.copyWith(isSelected: false);
                      if (e == item) {
                        return e.copyWith(isSelected: !e.isSelected);
                      }
                      return e;
                    }).toList();

                    final anySelected =
                        newList.skip(1).any((e) => e.isSelected);
                    if (!anySelected) {
                      newList[0] = newList[0].copyWith(isSelected: true);
                    }
                  }

                  // Netijede ähli elementler üçin valueChanged çagyrylýar
                  for (final item in newList) {
                    valueChanged(item);
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 19).w,
                  decoration: BoxDecoration(
                    color: item.isSelected
                        ? const Color.fromARGB(255, 229, 246, 254)
                        : Colors.white,
                    borderRadius: BorderRadius.circular(100).r,
                    border: Border.all(
                      color: item.isSelected
                          ? const Color.fromARGB(255, 229, 246, 254)
                          : const Color.fromARGB(255, 223, 223, 223),
                    ),
                  ),
                  child: AppText.s14w400BdM(
                    color: item.isSelected
                        ? const Color.fromARGB(255, 58, 139, 207)
                        : null,
                    item.count,
                    fontFamily: StringConstants.roboto,
                    fontWeight:
                        item.isSelected ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
