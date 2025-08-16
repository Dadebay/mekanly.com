import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../product/helpers/helpers.dart';
import '../../../remote/entities/global_options/global_options.dart';
import 'option_locations_modal_sheet.dart';

class OptionCategoryModalBottomSheet extends StatefulWidget {
  const OptionCategoryModalBottomSheet({
    super.key,
    required this.categories,
    this.isSingle = false,
  });

  final List<CategoryHouse> categories;
  final bool isSingle;

  static Future<List<CategoryHouse>?> show(
    BuildContext context, {
    required List<CategoryHouse> categories,
    bool isSingle = false,
  }) async {
    return showModalBottomSheet<List<CategoryHouse>?>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return OptionCategoryModalBottomSheet(
          categories: categories,
          isSingle: isSingle,
        );
      },
    );
  }

  @override
  State<OptionCategoryModalBottomSheet> createState() =>
      _OptionCategoryModalBottomSheetState();
}

class _OptionCategoryModalBottomSheetState
    extends State<OptionCategoryModalBottomSheet> {
  List<CategoryHouse> _currentCategories = [];

  void _clearSelection() {
    setState(() {
      _currentCategories = _currentCategories
          .map((category) => category.copyWith(selected: false))
          .toList();
    });

    Navigator.pop(context, _currentCategories);
  }

  @override
  void initState() {
    super.initState();
    _currentCategories = List.of(widget.categories);
  }

  bool checkIfEmpty() {
    final isEmpty = _currentCategories.getAllSelected?.isEmpty;

    if (isEmpty ?? true) {
      Helpers.showToastInfo(context, context.translation.bol_say);
    }

    return isEmpty ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: const Radius.circular(12).r),
      ),
      constraints: BoxConstraints(maxHeight: 1.sh * 0.6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10).w,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.w, color: const Color(0xffDDDDDD)),
              ),
            ),
            child: SizedBox(
              height: 30.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 30.w,
                      height: 30.w,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ),
                  Center(
                    child: AppText.s14w400BdM(context.translation.section),
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: _clearSelection,
                      child: AppText.s14w400BdM(
                        context.translation.clean,
                        color: Color(0xff0D95E9),
                      ),
                    ),
                  )
                  // Align(
                  //   alignment: Alignment.centerRight,
                  //   child: SizedBox(
                  //     width: 30.w,
                  //     height: 30.w,
                  //     child: IconButton(
                  //       padding: EdgeInsets.zero,
                  //       onPressed: _closeAndSelectCtg,
                  //       icon: const Icon(Icons.check),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _currentCategories.length,
              itemBuilder: (context, index) {
                final ctg = _currentCategories[index];

                return OptionModalSheetTile(
                  title: ctg.name,
                  isSelected: ctg.selected,
                  onTap: () {
                    final updated = ctg.copyWith(selected: !ctg.selected);

                    final updatedList =
                        List<CategoryHouse>.from(_currentCategories);
                    updatedList[index] = updated;

                    if (widget.isSingle) {
                      for (var i = 0; i < updatedList.length; i++) {
                        if (i != index) {
                          updatedList[i] =
                              updatedList[i].copyWith(selected: false);
                        }
                      }
                    }

                    Navigator.pop(context, updatedList);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
