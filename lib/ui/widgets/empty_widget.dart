import '../../config/config.dart';
import '../style/style.dart';
import '/ui/style/app_sizes.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget(
    this.reason, {
    super.key,
    required this.icon,
  });
  final String reason;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Tex(
          reason,
          con: context,
          col: AppColors.secondaryText,
          align: TextAlign.center,
        ).appBar,
        Icon(
          icon,
          size: AppSizes.pix70,
          color: AppColors.secondaryText,
        )
      ],
    );
  }
}
