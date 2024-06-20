import 'package:cached_network_image/cached_network_image.dart';
import 'package:mekanly_com/config/config.dart';
import 'package:mekanly_com/ui/style/app_sizes.dart';

class CachedNetImage extends StatelessWidget {
  const CachedNetImage({
    super.key,
    required this.img,
  });

  final String img;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: img,
      fit: BoxFit.cover,
      width: width(context),
      progressIndicatorBuilder: (context, url, downloadProgress) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: AppSizes.pix40,
            width: AppSizes.pix40,
            child: CircularProgressIndicator(value: downloadProgress.progress),
          ),
        ],
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
