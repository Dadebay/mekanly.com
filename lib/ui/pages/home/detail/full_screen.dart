import 'dart:io';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../../../config/config.dart';
import '../../../style/style.dart';
import '/ui/style/app_sizes.dart';

class ImageShowScreen extends StatelessWidget {
  const ImageShowScreen({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            style: IconButton.styleFrom(backgroundColor: AppColors.background),
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.mainTextDark,
            )),
        forceMaterialTransparency: true,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(AppSizes.pix8, AppSizes.pix8, AppSizes.pix8, 0),
        child: SingleChildScrollView(
          child: StaggeredGrid.count(
              crossAxisCount: AppSizes.pix4.toInt(),
              mainAxisSpacing: AppSizes.pix8,
              crossAxisSpacing: AppSizes.pix8,
              children: List.generate(
                images.length,
                (index) => StaggeredGridTile.count(
                  crossAxisCellCount: isThird(index) ? 4 : 2,
                  mainAxisCellCount: 2,
                  child: Container(
                    color: AppColors.secondaryText.withOpacity(.2),
                    child: InkWell(
                      onTap: () => go(
                          context,
                          FullscreenImage(
                            imageUrls: images,
                            initialIndex: index,
                          )),
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: images[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }

  bool isThird(int i) {
    if (i == 2 || i == 5 || i == 8 || i == 11 || i == 14 || i == 17 || i == 20 || i == 23 || i == 26) {
      return true;
    } else {
      return false;
    }
  }
}

class FullscreenImage extends StatefulWidget {
  final List<String> imageUrls;
  final int initialIndex;
  final bool isNetwork;

  const FullscreenImage({
    super.key,
    required this.imageUrls,
    this.initialIndex = 0,
    this.isNetwork = true,
  });

  @override
  FullscreenImageState createState() => FullscreenImageState();
}

class FullscreenImageState extends State<FullscreenImage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.statusBar,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            style: IconButton.styleFrom(backgroundColor: AppColors.background),
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.mainTextDark,
            )),
        forceMaterialTransparency: true,
      ),
      extendBodyBehindAppBar: true,
      body: PhotoViewGallery.builder(
        pageController: _pageController,
        itemCount: widget.imageUrls.length,
        builder: (context, index) {
          if (widget.isNetwork) {
            return PhotoViewGalleryPageOptions(
              imageProvider: NetworkImage(widget.imageUrls[index]),
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.contained * 2,
            );
          } else {
            return (PhotoViewGalleryPageOptions(
              imageProvider: FileImage(File(widget.imageUrls[index])),
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.contained * 2,
            ));
          }
        },
        scrollPhysics: const BouncingScrollPhysics(),
        backgroundDecoration: const BoxDecoration(color: AppColors.statusBar),
        onPageChanged: (index) {},
      ),
    );
  }
}
