import 'package:flutter/material.dart';


class CustomTab extends StatelessWidget {
  const CustomTab({super.key, this.fontSize});
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: fontSize != null ? 12 : 8,
      ),
      decoration: const BoxDecoration(
        // color: ColorName.white,
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          // color: ColorName.basePrimary,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              // color: ColorName.basePrimary.withOpacity(0.25),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        // Remove padding
        labelPadding: EdgeInsets.zero,
        padding: fontSize != null
            ? const EdgeInsets.fromLTRB(5, 0, 5, 0)
            : EdgeInsets.zero,
        // Text Styles
        // labelStyle: context.textTheme.bodyLarge?.copyWith(
        //   fontSize: fontSize ?? 18,
        //   letterSpacing: .8,
        //   fontFamily: StringConstants.poppins,
        //   fontWeight: FontWeight.w600,
        // ),
        // unselectedLabelStyle: context.textTheme.bodyLarge?.copyWith(
        //   fontSize: fontSize ?? 18,
        //   letterSpacing: .8,
        //   fontFamily: StringConstants.poppins,
        //   fontWeight: FontWeight.w600,
        // ),
        labelColor: Colors.white,
        // unselectedLabelColor: ColorName.tab,
        // Tab options
        dividerColor: Colors.transparent,
        tabs: [
          Tab(
            text: fontSize != null ? 'Активные' : 'Грузы',
          ),
          Tab(
            text: fontSize != null ? 'Завершены' : 'Машины',
          ),
        ],
      ),
    );
  }
}
