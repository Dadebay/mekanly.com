import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';

import '../../../utils/extensions.dart';

class MainAppBarHeader extends StatelessWidget {
  const MainAppBarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.amber,
        padding: const EdgeInsets.only(
          left: 8,
          right: 8,
        ),
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SizedBox(
                height: 25,
                child: Assets.icons.icLogoAppbar.image(package: 'gen'),
              ).toLeft(),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 18,
                height: 18,
                child: Assets.icons.icNotif.svg(package: 'gen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
