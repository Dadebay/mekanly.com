import 'dart:math' show pi;

import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gallery_saver_plus/gallery_saver.dart';
import 'package:gen/gen.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../core/components/app_text.dart';
import '../../product/constants/constants.dart';
import '../../remote/repositories/favorite/favorite_repository.dart';
import '../../utils/extensions.dart';
import '../../utils/api_provider.dart';
import './widgets/share_bottom_sheet.dart';

class HouseImages extends StatefulWidget {
  const HouseImages({
    super.key,
    required this.houseImagesUrl,
    required this.houseId,
    required this.houseType,
    required this.houseFavorite,
  });
  final List<String?>? houseImagesUrl;
  final int houseId;
  final String houseType;
  final bool houseFavorite;

  @override
  State<HouseImages> createState() => _HouseImagesState();
}

class _HouseImagesState extends State<HouseImages> {
  final FavoriteService favoriteService = FavoriteService();

  late bool isFavorite;
  @override
  void initState() {
    super.initState();
    isFavorite = widget.houseFavorite;
  }

  Future<void> toggleFavoriteItem(BuildContext context) async {
    try {
      await favoriteService.toggleFavorite(
        context: context,
        favoritableId: widget.houseId,
        favoritableType: getFavoritableType(widget.houseType),
      );

      setState(() {
        isFavorite = !isFavorite;
      });
      // ignore: empty_catches
    } catch (e) {}
  }

  String getFavoritableType(String? type) {
    if (type == null) return '';
    switch (type.toLowerCase()) {
      case 'house':
        return 'House';
      case 'product':
        return 'Product';
      case 'shop':
        return 'Shop';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Assets.icons.icBack.svg(package: 'gen'),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  final imageUrls =
                      widget.houseImagesUrl?.whereType<String>().toList() ?? [];
                  ShareBottomSheet.show(context, imageUrls);
                },
                icon: Assets.icons.sharer.svg(package: 'gen', height: 23),
              ),
              6.boxW,
              IconButton(
                onPressed: () => toggleFavoriteItem(context),
                icon: isFavorite
                    ? Assets.icons.tazefav.svg(
                        package: 'gen',
                        width: 25,
                        height: 25,
                      )
                    : Assets.icons.icHeart.svg(
                        package: 'gen',
                      ),
              ),
            ],
          ),
        ],
      ),
      body: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 6,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
          pattern: [
            const QuiltedGridTile(4, 6),
            const QuiltedGridTile(2, 3),
            const QuiltedGridTile(2, 3),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) {
            final imageUrl = widget.houseImagesUrl?[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  // ignore: inference_failure_on_instance_creation
                  MaterialPageRoute(
                    builder: (BuildContext context) => ImageScreen(
                      imagesUrl: widget.houseImagesUrl,
                      initialIndex: index + 1,
                    ),
                  ),
                );
              },
              child: LayoutBuilder(
                builder: (context, constraints) =>
                    (imageUrl != null && imageUrl.isNotEmpty)
                        ? CustomNetworkImage(
                            imageUrl: ApiProvider().baseUrl + imageUrl,
                            memCache: CustomMemCache(
                              // height: constraints.maxHeight.toInt(),
                              width: constraints.maxWidth.toInt(),
                            ),
                          )
                        : Center(
                            child: Assets.icons.jayyok.svg(
                              package:
                                  'gen', // Assuming it's from the 'gen' package
                            ),
                          ),
              ),
            );
          },
          childCount: widget.houseImagesUrl?.length,
        ),
      ),
    );
  }
}

class ImageScreen extends StatefulWidget {
  const ImageScreen({
    super.key,
    required this.imagesUrl,
    required this.initialIndex,
  });
  final List<String?>? imagesUrl;
  final int initialIndex;

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  late List<double> _rotationAngles;
  late PageController _pageController;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex - 1;
    _pageController = PageController(initialPage: widget.initialIndex - 1);
    _rotationAngles = List.generate(widget.imagesUrl?.length ?? 0, (_) => 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _rotateImage() {
    setState(() {
      _rotationAngles[_currentIndex] += pi / 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.6;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: const Color(0xFF000000),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Assets.icons.icBackImage.svg(package: 'gen'),
        ),
        title: AppText.s14w400BdM(
          '${_currentIndex + 1}/${widget.imagesUrl?.length}',
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          fontFamily: StringConstants.roboto,
          color: const Color(0xFFFFFFFF),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _rotateImage,
            icon: Assets.icons.icRotateImage.svg(package: 'gen'),
          ),
        ],
      ),
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemCount: widget.imagesUrl?.length,
        itemBuilder: (context, index) {
          return InteractiveViewer(
            minScale: 0.2,
            maxScale: 3,
            child: Center(
              child: Transform.rotate(
                angle: _rotationAngles[index],
                child: Image.network(
                  ApiProvider().baseUrl + (widget.imagesUrl?[index] ?? ''),
                  height: height,
                  cacheWidth: width.toInt().withDevicePixel(context),
                  cacheHeight: height.toInt().withDevicePixel(context),
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                (loadingProgress.expectedTotalBytes ?? 1)
                            : null,
                        color: Colors.white,
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return const Center(
                      child: Icon(
                        Icons.error_outline,
                        color: Colors.white,
                        size: 48,
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF000000),
        onPressed: () async {
          final url = widget.imagesUrl?[_currentIndex];

          if (url == null || url.isEmpty) return;
          final status = await Permission.photos.request();
          final storageStatus = await Permission.storage.request();

          if (status.isGranted || storageStatus.isGranted) {
            final success = await GallerySaver.saveImage(url);

            if (success == true) {
            } else {}
          } else {}
        },
        child: Assets.icons.icDownloadImage.svg(package: 'gen'),
      ),
    );
  }
}
