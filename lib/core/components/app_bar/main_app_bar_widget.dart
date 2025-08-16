part of 'app_bar.dart';

class _MainAppBarWidget extends StatelessWidget {
  const _MainAppBarWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: ColorName.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1), // X: 0, Y: 1
            blurRadius: 3, // Blur: 3
            color: Colors.black.withOpacity(0.05), // #000000 with 5% opacity
          ),
        ],
      ),
      padding: const EdgeInsets.all(18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox.shrink(),
          AppText.s16w400BdL(
            'Yoll Tm',
            fontSize: 18,
            fontWeight: FontWeight.bold,
            // color: ColorName.basePrimary,
          ),
          // GestureDetector(
          //   onTap: () {},
          //   child: Assets.icons.icNotif.svg(
          //     package: package: 'gen',
          //     height: 24,
          //     width: 24,
          //   ),
          // ),
        ],
      ),
    );
  }
}
