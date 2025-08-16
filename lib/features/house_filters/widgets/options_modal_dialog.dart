import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/components/app_btn.dart';
import '../../../core/components/app_text.dart';
import '../../../core/components/check_box/custom_check_box.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../product/helpers/helpers.dart';
import '../../../remote/entities/global_options/global_options.dart';
import '../../../utils/extensions.dart';

enum OptionTypes {
  property,
  repair,
  possibility,
}

extension OptionTypesLocalization on OptionTypes {
  String localizedTitle(BuildContext context) {
    switch (this) {
      case OptionTypes.property:
        return context.translation.house_type;
      case OptionTypes.repair:
        return context.translation.remont_gorn;
      case OptionTypes.possibility:
        return context.translation.mumkincilikler;
    }
  }
}

class BaseOptionModel {
  BaseOptionModel({
    this.selectedPropertyTypes,
    this.selectedRepairTypes,
    this.selectedPossibilities,
    this.propertyTypes,
    required this.type,
    this.repairTypes,
    this.possibilities,
  });

  final List<PropertyType>? propertyTypes;
  final List<RepairType>? repairTypes;
  final List<OptionsPossibility>? possibilities;
  final List<PropertyType>? selectedPropertyTypes;
  final List<RepairType>? selectedRepairTypes;
  final List<OptionsPossibility>? selectedPossibilities;
  final OptionTypes type;

  BaseOptionModel copyWith({
    List<PropertyType>? propertyTypes,
    List<RepairType>? repairTypes,
    List<OptionsPossibility>? possibilities,
    List<PropertyType>? selectedPropertyTypes,
    List<RepairType>? selectedRepairTypes,
    List<OptionsPossibility>? selectedPossibilities,
    OptionTypes? type,
  }) {
    return BaseOptionModel(
      selectedPossibilities:
          selectedPossibilities ?? this.selectedPossibilities,
      selectedPropertyTypes:
          selectedPropertyTypes ?? this.selectedPropertyTypes,
      selectedRepairTypes: selectedRepairTypes ?? this.selectedRepairTypes,
      type: type ?? this.type,
      propertyTypes: propertyTypes ?? this.propertyTypes,
      repairTypes: repairTypes ?? this.repairTypes,
      possibilities: possibilities ?? this.possibilities,
    );
  }
}

Future<BaseOptionModel?> showModalOptions(
  BuildContext context, {
  required String text,
  required BaseOptionModel model,
  bool isSingle = false,
}) async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  return showDialog<BaseOptionModel?>(
    context: context,
    barrierColor: Colors.black54,
    builder: (context) {
      final currentSelections = model.selectedPossibilities ?? [];
      final allSelections = [
        ...currentSelections.whereType<OptionsPossibility>(),
      ];

      // Remove
      final uniqueSelections = <int, OptionsPossibility>{};
      for (final p in allSelections) {
        uniqueSelections[p.id] = p;
      }

      return Dialog(
        insetPadding: EdgeInsets.zero,
        backgroundColor: Colors.transparent,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: OptionModalDialogWidget(
                model: model.copyWith(
                  selectedPossibilities: uniqueSelections.values.toList(),
                ),
                isSingle: isSingle,
              ),
            );
          },
        ),
      );
    },
  );
}

Future<BaseOptionModel?> showModalOptionss(
  BuildContext context, {
  required String text,
  required BaseOptionModel model,
  List<OptionsPossibility>? initialSelections, // Correct type here
  bool isSingle = false,
}) async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  return showDialog<BaseOptionModel?>(
    context: context,
    barrierColor: Colors.black54,
    builder: (context) {
      // Merge existing selections with initial selections
      final currentSelections = model.selectedPossibilities ?? [];
      final allSelections = [
        ...currentSelections.whereType<OptionsPossibility>(),
        ...initialSelections ?? [],
      ];

      // Remove duplicates
      final uniqueSelections = <int, OptionsPossibility>{};
      for (final p in allSelections) {
        uniqueSelections[p.id] = p;
      }

      return Dialog(
        shape: const RoundedRectangleBorder(),
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
          child: OptionModalDialogWidget(
            model: model.copyWith(
              selectedPossibilities: uniqueSelections.values.toList(),
            ),
            isSingle: isSingle,
          ),
        ),
      );
    },
  );
}

class OptionModalDialogWidget extends StatefulWidget {
  const OptionModalDialogWidget({
    super.key,
    required this.model,
    this.isSingle = false,
  });
  final BaseOptionModel model;
  final bool isSingle;

  @override
  State<OptionModalDialogWidget> createState() =>
      _OptionModalDialogWidgetState();
}

class _OptionModalDialogWidgetState extends State<OptionModalDialogWidget> {
  @override
  void initState() {
    super.initState();
    initOptions();
  }

  bool selectedAll = false;

  List<PropertyType>? _currentPropertyTypes;
  List<RepairType>? _currentRepairTypes;
  List<OptionsPossibility>? _currentPossibilityTypes;

  void initOptions() {
    _currentPropertyTypes = List.of(
      widget.model.propertyTypes ?? [],
    );
    _currentRepairTypes = List.of(
      widget.model.repairTypes ?? [],
    );
    _currentPossibilityTypes = List.of(
      widget.model.possibilities ?? [],
    );
  }

  void _selectAllPropertyTypes() {
    if (selectedAll) {
      _currentPropertyTypes = _currentPropertyTypes
          ?.map((e) => e.copyWith(selected: false))
          .toList();
      selectedAll = false;
    } else {
      _currentPropertyTypes = _currentPropertyTypes
          ?.map((e) => e.copyWith(selected: true))
          .toList();
      selectedAll = true;
    }

    setState(() {});
  }

  void _selectPropertyType(PropertyType type, int index) {
    if (_currentPropertyTypes == null) return;
    _currentPropertyTypes =
        List<PropertyType>.from(_currentPropertyTypes!).update(
      index,
      type,
    );
    setState(() {});
  }

  void _selectSinglePropertyType(PropertyType type, int index) {
    if (_currentPropertyTypes == null) return;

    _currentPropertyTypes = List<PropertyType>.from(_currentPropertyTypes!)
        .map((p) => p.copyWith(selected: false))
        .toList();

    _selectPropertyType(type, index);
  }

  void _showIfEmpty(BuildContext context, String title) {
    Helpers.showToastInfo(context, title);
  }

  void _acceptClosePropertyTypes() {
    final isEmptyTypes = isEmptyPropertyTypes();
    if (isEmptyTypes) {
      return;
    }
    final selected = _currentPropertyTypes?.where((p) => p.selected).toList();
    final updated = widget.model.copyWith(
      propertyTypes: _currentPropertyTypes,
      selectedPropertyTypes: selected,
    );
    _closeModal(updated);
  }

  void _closeModal<T>(T type) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context, type);
    }
  }

  bool isEmptyPropertyTypes() {
    final isEmptyTypes =
        _currentPropertyTypes?.where((p) => p.selected).toList().isEmpty ??
            true;
    if (isEmptyTypes) {
      _showIfEmpty(context, context.translation.emlak);
      return true;
    }
    return isEmptyTypes;
  }

  bool isEmptyPossibilityTypes() {
    final isEmptyTypes =
        _currentPossibilityTypes?.where((p) => p.selected).toList().isEmpty ??
            true;
    if (isEmptyTypes) {
      _showIfEmpty(context, context.translation.mum_sayla);
      return true;
    }
    return isEmptyTypes;
  }

  void _selectPossibility(OptionsPossibility type, int index) {
    if (_currentPossibilityTypes == null) return;
    _currentPossibilityTypes =
        List<OptionsPossibility>.from(_currentPossibilityTypes!).update(
      index,
      type,
    );
    setState(() {});
  }

  void _selectAllPossibilities() {
    if (selectedAll) {
      _currentPossibilityTypes = _currentPossibilityTypes
          ?.map((e) => e.copyWith(selected: false))
          .toList();
      selectedAll = false;
    } else {
      _currentPossibilityTypes = _currentPossibilityTypes
          ?.map((e) => e.copyWith(selected: true))
          .toList();
      selectedAll = true;
    }

    setState(() {});
  }

  void _acceptClosePossibilities() {
    final isEmptyTypes = isEmptyPossibilityTypes();
    if (isEmptyTypes) {
      return;
    }
    final selected =
        _currentPossibilityTypes?.where((p) => p.selected).toList();
    final updated = widget.model.copyWith(
      possibilities: _currentPossibilityTypes,
      selectedPossibilities: selected,
    );
    _closeModal(updated);
  }

  bool isEmptyRepairTypes() {
    final isEmptyTypes =
        _currentRepairTypes?.where((p) => p.selected).toList().isEmpty ?? true;
    if (isEmptyTypes) {
      _showIfEmpty(context, context.translation.rem_sayla);
      return true;
    }
    return isEmptyTypes;
  }

  void _selectRepairType(RepairType type, int index) {
    if (_currentRepairTypes == null) return;
    _currentRepairTypes = List<RepairType>.from(_currentRepairTypes!).update(
      index,
      type,
    );
    setState(() {});
  }

  void _selectSingleRepairType(RepairType type, int index) {
    if (_currentRepairTypes == null) return;
    _currentRepairTypes = List<RepairType>.from(_currentRepairTypes!)
        .map((r) => r.copyWith(selected: false))
        .toList();

    _selectRepairType(type, index);
  }

  void _selectAllRepairTypes() {
    if (selectedAll) {
      _currentRepairTypes =
          _currentRepairTypes?.map((e) => e.copyWith(selected: false)).toList();
      selectedAll = false;
    } else {
      _currentRepairTypes =
          _currentRepairTypes?.map((e) => e.copyWith(selected: true)).toList();
      selectedAll = true;
    }

    setState(() {});
  }

  void _acceptCloseRepairTypes() {
    final isEmptyTypes = isEmptyRepairTypes();
    if (isEmptyTypes) {
      return;
    }
    final selected = _currentRepairTypes?.where((p) => p.selected).toList();
    final updated = widget.model.copyWith(
      repairTypes: _currentRepairTypes,
      selectedRepairTypes: selected,
    );
    _closeModal(updated);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8).w,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: AppText.s14w400BdM(
                widget.model.type.localizedTitle(context),
                fontFamily: StringConstants.roboto,
                fontSize: 16.sp,
              ),
            ),
            6.boxH,
            if ((widget.isSingle &&
                    widget.model.type == OptionTypes.possibility) ||
                !widget.isSingle)
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    AppText.s14w400BdM(
                      context.translation.all,
                      fontFamily: StringConstants.roboto,
                      fontSize: 12.sp,
                    ),
                    4.boxW,
                    CustomCheckBox(
                      isSelected: selectedAll,
                      onTap: () {
                        switch (widget.model.type) {
                          case OptionTypes.property:
                            _selectAllPropertyTypes();
                          case OptionTypes.repair:
                            _selectAllRepairTypes();
                          case OptionTypes.possibility:
                            _selectAllPossibilities();
                        }
                      },
                    ),
                  ],
                ),
              ),
            4.boxH,
            Padding(
              padding: const EdgeInsets.all(8).w,
              child: () {
                switch (widget.model.type) {
                  case OptionTypes.possibility:
                    return SingleChildScrollView(
                      child: Wrap(
                        spacing: 8.w,
                        runSpacing: 8.w,
                        children: List.generate(
                          _currentPossibilityTypes?.length ?? 0,
                          (index) {
                            final type = _currentPossibilityTypes?[index];
                            return _PossibilityTypeChip(
                              key: Key('possibility_option_$index'),
                              onChanged: (value) =>
                                  _selectPossibility(value, index),
                              type: type,
                              icon: type?.buildIcon,
                            );
                          },
                        ),
                      ),
                    );
                  case OptionTypes.repair:
                    return SingleChildScrollView(
                      child: Wrap(
                        spacing: 8.w,
                        runSpacing: 8.w,
                        children: List.generate(
                          _currentRepairTypes?.length ?? 0,
                          (index) {
                            final type = _currentRepairTypes?[index];
                            return _RepairTypeChip(
                              key: Key('repair_option_$index'),
                              onChanged: (value) {
                                if (widget.isSingle) {
                                  _selectSingleRepairType(value, index);
                                  return;
                                }
                                _selectRepairType(value, index);
                              },
                              type: type,
                            );
                          },
                        ),
                      ),
                    );
                  case OptionTypes.property:
                    return GridView.builder(
                      shrinkWrap: true,
                      itemCount: _currentPropertyTypes?.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 107 / 65,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        final property = _currentPropertyTypes?[index];
                        return _PropertyTypeChip(
                          key: Key('property_option_$index'),
                          type: property,
                          onChanged: (value) {
                            if (widget.isSingle) {
                              _selectSinglePropertyType(value, index);
                              return;
                            }
                            _selectPropertyType(value, index);
                          },
                        );
                      },
                    );
                  // return SingleChildScrollView(
                  //   child: Wrap(
                  //     spacing: 8.w,
                  //     runSpacing: 8.w,
                  //     children: List.generate(
                  //       _currentPropertyTypes?.length ?? 0,
                  //       (index) {
                  //         final property = _currentPropertyTypes?[index];
                  //         return _PropertyTypeChip(
                  //           key: Key('property_option_$index'),
                  //           type: property,
                  //           onChanged: (value) {
                  //             if (widget.isSingle) {
                  //               _selectSinglePropertyType(value, index);
                  //               return;
                  //             }
                  //             _selectPropertyType(value, index);
                  //           },
                  //         );
                  //       },
                  //     ),
                  //   ),
                  // );
                }
              }(),
            ),
            // 6.boxH,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextBtn(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: AppText.s12w400BdS(
                    context.translation.cancel,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                14.boxW,
                TextBtn(
                  onTap: () {
                    switch (widget.model.type) {
                      case OptionTypes.property:
                        _acceptClosePropertyTypes();
                      case OptionTypes.repair:
                        _acceptCloseRepairTypes();
                      case OptionTypes.possibility:
                        _acceptClosePossibilities();
                    }
                  },
                  child: AppText.s12w400BdS(
                    context.translation.accept,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PropertyTypeChip extends StatelessWidget {
  const _PropertyTypeChip({
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

class _RepairTypeChip extends StatelessWidget {
  const _RepairTypeChip({super.key, this.type, required this.onChanged});

  final RepairType? type;
  final ValueChanged<RepairType> onChanged;

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
          borderRadius: BorderRadius.circular(38).r,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14).w,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.s14w400BdM(
              type?.name ?? '',
              fontSize: 13.sp,
              fontFamily: StringConstants.roboto,
            ),
          ],
        ),
      ),
    );
  }
}

class OptionChipWidgett extends StatelessWidget {
  const OptionChipWidgett({
    super.key,
    required this.title,
    this.icon,
    this.selected = false,
  });
  final String title;
  final Widget? icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? Colors.blue.shade100 : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: selected ? Colors.blue : Colors.grey,
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            icon!,
            const SizedBox(width: 6),
          ],
          Text(title),
        ],
      ),
    );
  }
}

class _PossibilityTypeChip extends StatelessWidget {
  const _PossibilityTypeChip({
    super.key,
    this.icon,
    required this.onChanged,
    required this.type,
  });
  final OptionsPossibility? type;
  final Widget? icon;
  final ValueChanged<OptionsPossibility> onChanged;

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
          borderRadius: BorderRadius.circular(38).r,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14).w,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              icon!,
              10.boxW,
            ],
            AppText.s14w400BdM(
              type?.name ?? '',
              fontSize: 13.sp,
              fontFamily: StringConstants.roboto,
            ),
          ],
        ),
      ),
    );
  }
}
