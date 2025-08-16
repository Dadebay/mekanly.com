import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';

class OptionHolderSwitcher extends StatefulWidget {
  const OptionHolderSwitcher({
    super.key,
    required this.onChanged,
    this.padding,
    this.isOwner,
  });

  final ValueChanged<bool?> onChanged;
  final EdgeInsets? padding;
  final bool? isOwner;

  @override
  State<OptionHolderSwitcher> createState() => _OptionHolderSwitcherState();
}

class _OptionHolderSwitcherState extends State<OptionHolderSwitcher> {
  bool? selected;

  @override
  void initState() {
    super.initState();
    selected = widget.isOwner;
  }

  void _onTap(bool? value) {
    setState(() {
      selected = value;
    });
    widget.onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.padding ?? EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8).r,
      ),
      child: Row(
        children: [
          _buildOption(
            context,
            label: context.translation.unselected,
            isActive: selected == null,
            onTap: () => _onTap(null),
          ),
          SizedBox(width: 5.w),
          _buildOption(
            context,
            label: context.translation.eyesi,
            // ignore: use_if_null_to_convert_nulls_to_bools
            isActive: selected == true,
            onTap: () => _onTap(true),
          ),
          SizedBox(width: 5.w),
          _buildOption(
            context,
            label: context.translation.reiltor,
            isActive: selected == false,
            onTap: () => _onTap(false),
          ),
        ],
      ),
    );
  }

  Widget _buildOption(
    BuildContext context, {
    required String label,
    required bool isActive,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isActive
                  ? const Color.fromARGB(255, 229, 246, 254)
                  : Colors.white,
              borderRadius: BorderRadius.circular(8).r,
              border: Border.all(
                color: isActive
                    ? const Color.fromARGB(255, 229, 246, 254)
                    : const Color(0xffDCDCDC),
              )),
          padding: const EdgeInsets.symmetric(vertical: 8).w,
          child: AppText.s12w400BdS(
            label,
            color: isActive ? ColorName.main : ColorName.darkGrey,
            fontFamily: StringConstants.roboto,
          ),
        ),
      ),
    );
  }
}
