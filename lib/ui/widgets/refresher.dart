import '../../config/config.dart';
import '../style/colors.dart';
import '/ui/style/app_sizes.dart';

class Refresher extends StatelessWidget {
  final Widget child;
  final Future<void> Function() onRefresh;
  const Refresher({super.key, required this.child, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: AppColors.primary,
      displacement: AppSizes.pix48,
      backgroundColor: AppColors.mainText,
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      edgeOffset: AppSizes.pix20,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
