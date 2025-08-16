import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import '../../../core/components/loading_indicator.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../product/helpers/helpers.dart';
import '../../../utils/api_provider.dart';

enum ShareOption { link, image }

class ShareBottomSheet {
  static Future<void> show(BuildContext context, List<String> imageUrls) {
    // Ensure image URLs are not null/empty before showing the sheet
    final validImageUrls = imageUrls.where((url) => url.isNotEmpty).toList();

    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: const Color.fromARGB(255, 245, 240, 234),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => _ShareBottomSheetContent(imageUrls: validImageUrls),
    );
  }
}

class _ShareBottomSheetContent extends StatefulWidget {
  const _ShareBottomSheetContent({required this.imageUrls});

  final List<String> imageUrls;

  @override
  State<_ShareBottomSheetContent> createState() =>
      _ShareBottomSheetContentState();
}

class _ShareBottomSheetContentState extends State<_ShareBottomSheetContent> {
  bool _shareLink = true;
  bool _shareImage = false;
  bool _isLoading = false;

  Future<void> _shareContent() async {
    setState(() {
      _isLoading = true;
    });

    try {
      if (_shareLink) {
        final link = widget.imageUrls.join('\n');
        await Share.share(link);
      } else if (_shareImage) {
        await _shareImagesWithDio(widget.imageUrls);
      }
      if (mounted) {
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        Helpers.showToastError(context, 'Amala ashyrylmady');
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _shareImagesWithDio(List<String> imageUrls) async {
    final tempDir = await getTemporaryDirectory();
    final files = <XFile>[];

    for (var i = 0; i < imageUrls.length; i++) {
      final imageUrl = imageUrls[i];
      final filePath = '${tempDir.path}/shared_image_$i.jpg';
      final dio = Dio();
      await dio.download(imageUrl, filePath);
      files.add(XFile(filePath));
    }

    if (files.isNotEmpty) {
      await Share.shareXFiles(files);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Assets.icons.close.svg(package: 'gen'),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(height: 15),
              _AnimatedImageStack(imageUrls: widget.imageUrls),
              Text(
                context.translation.share_with_friends,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 34, 34, 34),
                  fontFamily: StringConstants.roboto,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Checkbox(
                    value: _shareLink,
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    onChanged: (value) {
                      if (value == true) {
                        setState(() {
                          _shareLink = true;
                          _shareImage = false;
                        });
                      }
                    },
                  ),
                  Text(
                    context.translation.share_link,
                    style: const TextStyle(
                      fontFamily: StringConstants.roboto,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 34, 34, 34),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _shareImage,
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    onChanged: (value) {
                      // ignore: use_if_null_to_convert_nulls_to_bools
                      if (value == true) {
                        setState(() {
                          _shareImage = true;
                          _shareLink = false;
                        });
                      }
                    },
                  ),
                  Text(
                    context.translation.share_photo,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: StringConstants.roboto,
                      color: Color.fromARGB(255, 34, 34, 34),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 34, 34, 34),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: _isLoading ? null : _shareContent,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.share, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(
                        context.translation.share,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          fontFamily: StringConstants.roboto,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_isLoading)
          ColoredBox(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: LoadingIndicator.circle(),
            ),
          ),
      ],
    );
  }
}

class _AnimatedImageStack extends StatefulWidget {
  const _AnimatedImageStack({required this.imageUrls});
  final List<String> imageUrls;

  @override
  State<_AnimatedImageStack> createState() => _AnimatedImageStackState();
}

class _AnimatedImageStackState extends State<_AnimatedImageStack>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotateLeft;
  late final Animation<double> _rotateRight;
  late final Animation<double> _translateY;
  late final Animation<double> _translateX1;
  late final Animation<double> _translateX2;

  final double imageSize = 130;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _rotateLeft = Tween<double>(
      begin: 0,
      end: -pi / 18,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _rotateRight = Tween<double>(
      begin: 0,
      end: pi / 18,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _translateY = Tween<double>(
      begin: 0,
      end: -40,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _translateX1 = Tween<double>(
      begin: 0,
      end: -20,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _translateX2 = Tween<double>(
      begin: 0,
      end: 20,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildImage(String url) {
    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 4),
        boxShadow: const [
          BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(2, 2)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          ApiProvider().baseUrl + url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final count = widget.imageUrls.length.clamp(0, 3);
    if (count == 0) {
      return const SizedBox.shrink();
    }

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        if (count == 1) {
          return Center(child: _buildImage(widget.imageUrls[0]));
        } else if (count == 2) {
          return Center(
            child: SizedBox(
              width: imageSize + 60,
              height: imageSize + 40,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(_translateX1.value, 0),
                    child: Transform.rotate(
                      angle: _rotateLeft.value,
                      alignment: Alignment.bottomLeft,
                      child: _buildImage(widget.imageUrls[1]),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(_translateX2.value, 0),
                    child: Transform.rotate(
                      angle: _rotateRight.value,
                      alignment: Alignment.bottomRight,
                      child: _buildImage(widget.imageUrls[0]),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return Center(
            child: SizedBox(
              width: imageSize + 60,
              height: imageSize + 60,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(0, _translateY.value),
                    child: _buildImage(widget.imageUrls[2]),
                  ),
                  Transform.translate(
                    offset: Offset(_translateX1.value, 0),
                    child: Transform.rotate(
                      angle: _rotateLeft.value,
                      alignment: Alignment.bottomLeft,
                      child: _buildImage(widget.imageUrls[1]),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(_translateX2.value, 0),
                    child: Transform.rotate(
                      angle: _rotateRight.value,
                      alignment: Alignment.bottomRight,
                      child: _buildImage(widget.imageUrls[0]),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
