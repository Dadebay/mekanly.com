import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../product/constants/constants.dart';
import '../../../remote/entities/house_detail/house_detail_response.dart';
import '../../../utils/extensions.dart';
import '../../../utils/helpers.dart';

class RowMainInfoTile extends StatelessWidget {
  const RowMainInfoTile({super.key, this.typeOfHouseIcon, this.data});
  final Widget? typeOfHouseIcon;
  final HouseData? data;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: ConstrainedBox(
            constraints: BoxConstraints(minWidth: constraints.maxWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 14.w,
                      width: 12.92.w,
                      child: typeOfHouseIcon ??
                          Assets.icons.icCategoryDetail.svg(package: 'gen'),
                    ),
                    10.boxW,
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxWidth: constraints.maxWidth * 0.25),
                      child: Text(
                        '${data?.categoryName}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: StringConstants.roboto,
                          color: const Color.fromARGB(255, 35, 38, 43),
                        ),
                      ),
                    ),
                    5.boxW,
                    _divider(),
                    5.boxW,
                    SizedBox(
                      height: 12.37.w,
                      width: 11.75.w,
                      child: Assets.icons.icCalendar.svg(package: 'gen'),
                    ),
                    10.boxW,
                    ConstrainedBox(
                      constraints:
                          BoxConstraints(maxWidth: constraints.maxWidth * 0.25),
                      child: Text(
                        HelpersCopy.formatDate(data?.createdAt),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: StringConstants.roboto,
                          color: const Color.fromARGB(255, 35, 38, 43),
                        ),
                      ),
                    ),
                    5.boxW,
                    _divider(),
                    5.boxW,
                    SizedBox(
                      height: 13.w,
                      width: 14.56.w,
                      child: Assets.icons.icEye.svg(package: 'gen'),
                    ),
                    10.boxW,
                    Text(
                      data?.viewed.toString() ?? '0',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: StringConstants.roboto,
                        color: const Color.fromARGB(255, 35, 38, 43),
                      ),
                    ),
                  ],
                ),
                if (data?.luxeStatus == true || data?.vipStatus == true)
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: data?.luxeStatus == true
                        ? Assets.icons.luxee.svg(package: 'gen')
                        : Assets.icons.vip.svg(package: 'gen'),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }

  SizedBox _divider() {
    return SizedBox(
      height: 16.w,
      child: VerticalDivider(
        width: 5.w,
        indent: 1,
        endIndent: 1,
        color: const Color(0xffB3CFF4),
      ),
    );
  }
}
