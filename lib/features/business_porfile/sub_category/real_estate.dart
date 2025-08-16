import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../core/components/app_text.dart';
import '../../../core/components/search_field_house.dart';
import '../../../product/constants/constants.dart';

class RealEstate extends StatelessWidget {
  const RealEstate({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4D8BBF),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Assets.icons.icBackImage.svg(package: 'gen'),
        ),
        title: AppText.s14w400BdM(
          title,
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          fontFamily: StringConstants.roboto,
          color: const Color(0xFFF8F8F8),
        ),
      ),
      body: Column(
        children: [
          SearchField(
            onSearchTap: () {},
            onClearTap: () {},
          ),
        ],
      ),
    );
  }
}
