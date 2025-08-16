import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import '../../../features/root/view/root_view_handler.dart';
import '../../../product/constants/constants.dart';
import '../../../utils/extensions.dart';
import '../app_text.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    this.appBarHeight = 0,
    required this.onTapChanged,
    required this.indexNotifier,
  });
  final double appBarHeight;
  final ValueChanged<int> onTapChanged;
  final ValueNotifier<int> indexNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (_, currentIndex, __) {
        final isExpanded = currentIndex == 0;
        return Container(
          decoration: BoxDecoration(
            color: ColorName.main,
            boxShadow: currentIndex == 1
                ? [
                    BoxShadow(
                      color: const Color(0xff4040402b).withValues(alpha: .15),
                      blurRadius: 6.6,
                      offset: const Offset(0, 3),
                    ),
                  ]
                : null,
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: const SizedBox.shrink(),
            leadingWidth: 0,
            flexibleSpace: SafeArea(
              child: AnimatedContainer(
                key: const Key('animated_app_bar'),
                height: isExpanded ? 76.w : 0,
                duration: const Duration(
                  milliseconds: 300,
                ),
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 30).w,
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 20.w,
                        child: Assets.icons.icLogoAppbar.image(package: 'gen'),
                      ).toLeft(),
                    ),
                    Assets.icons.icNotif.svg(package: 'gen'),
                  ],
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight.w),
              child: SizedBox(
                height: kToolbarHeight.w,
                child: Row(
                  children: navigationPages(context).map((e) {
                    return Expanded(
                      child: InkWell(
                        onTap: () => onTapChanged.call(e.index),
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 8).w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                width: 24.w,
                                height: 24.w,
                                child: currentIndex == e.index
                                    ? e.activeIcon.svg(package: 'gen')
                                    : e.icon.svg(package: 'gen'),
                              ),
                              4.boxH,
                              AppText.s12w400BdS(
                                e.label,
                                fontSize: 9.sp,
                                textAlign: TextAlign.center,
                                color: e.index == currentIndex
                                    ? ColorName.white
                                    : ColorName.cardShadow,
                                fontWeight: e.index == currentIndex
                                    ? FontWeight.bold
                                    : FontWeight.w500,
                                fontFamily: StringConstants.roboto,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // AnimatedContainer(
  //     duration = const Duration(milliseconds: 300),
  //     color = ColorName.main,
  //     decoration = currentIndex == 1
  //         ? BoxDecoration(
  //             color: ColorName.main,
  //             boxShadow: [
  //               BoxShadow(
  //                 color: const Color(0xff4040402b).withValues(alpha: .15),
  //                 blurRadius: 6.6,
  //                 offset: const Offset(0, 3),
  //               ),
  //             ],
  //           )
  //         : null,
  //     child = Row(
  //       children: navigationPages(context).map((e) {
  //         return Expanded(
  //           child: InkWell(
  //             onTap: () => onTapChanged.call(e.index),
  //             child: Container(
  //               padding: const EdgeInsets.only(bottom: 8).w,
  //               child: Column(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   AnimatedContainer(
  //                     width: 24.w,
  //                     height: 24.w,
  //                     child: currentIndex == e.index
  //                         ? e.activeIcon.svg(package: package: 'gen')
  //                         : e.icon.svg(package: package: 'gen'),
  //                   ),
  //                   4.boxH,
  //                   AppText.s12w400BdS(
  //                     e.label,
  //                     fontSize: 9.sp,
  //                     textAlign: TextAlign.center,
  //                     color: e.index == currentIndex
  //                         ? ColorName.white
  //                         : ColorName.cardShadow,
  //                     fontWeight: e.index == currentIndex
  //                         ? FontWeight.bold
  //                         : FontWeight.w500,
  //                     fontFamily: StringConstants.roboto,
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         );
  //       }).toList(),
  //     ),
  //   );
}
