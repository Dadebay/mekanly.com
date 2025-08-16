import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
// import 'package:mekanly_video_player/mekanly_video_player.dart';
import 'package:video_player/video_player.dart';

// import '../../video_player/multi_manager/mekanly_multi_manager.dart';

// class HeaderVideoPlayer extends StatefulWidget {
//   const HeaderVideoPlayer({
//     super.key,
//     required this.videoUrl,
//   });
//   final String videoUrl;

//   @override
//   State<HeaderVideoPlayer> createState() => _HeaderVideoPlayerState();
// }

// class _HeaderVideoPlayerState extends State<HeaderVideoPlayer> {
//   late MekanlyMultiManager mekanlyMultiManager;

//   @override
//   void initState() {
//     mekanlyMultiManager = MekanlyMultiManager();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MekanlyMultiPlayer(
//       url: widget.videoUrl,
//       mekanlyMultiManager: mekanlyMultiManager,
//       image: '',
//     );
//   }
// }

class HeaderVideoPlayer extends StatefulWidget {
  const HeaderVideoPlayer({
    super.key,
    required this.videoUrl,
  });
  final String videoUrl;

  @override
  State<HeaderVideoPlayer> createState() => _HeaderVideoPlayerState();
}

class _HeaderVideoPlayerState extends State<HeaderVideoPlayer> {
  late VideoPlayerController _controller;
  bool _isInited = false;

  @override
  void initState() {
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));

    _controller.initialize().then((v) {
      setState(() {
        _isInited = !_isInited;
      });
    }).catchError((e) {
      setState(() {
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final aspect = !_controller.value.isInitialized
        ? 16 / 9
        : _controller.value.aspectRatio;
    if (!_isInited) {
      return AspectRatio(
        aspectRatio: aspect,
        child: const Center(
          child: CircularProgressIndicator(
            color: ColorName.main,
          ),
        ),
      );
    }
    return AspectRatio(
      aspectRatio: aspect,
      child: VideoPlayer(_controller),
    );
  }
}
