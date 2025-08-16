// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:mekanly_video_player/mekanly_video_player.dart';
// import 'package:video_player/video_player.dart';

// import '../../video_player/multi_manager/mekanly_multi_manager.dart';
// import '../../video_player/player_controls/player_landscape_controls.dart';

// class MekanlyMultiPlayer extends StatefulWidget {
//   const MekanlyMultiPlayer({
//     super.key,
//     required this.url,
//     this.image,
//     required this.mekanlyMultiManager,
//     this.isPortrait = true,
//     this.setFullScreen = false,
//   });

//   final String url;
//   final String? image;
//   final MekanlyMultiManager mekanlyMultiManager;
//   final bool isPortrait;
//   final bool setFullScreen;

//   @override
//   State<MekanlyMultiPlayer> createState() => _MekanlyMultiPlayerState();
// }

// class _MekanlyMultiPlayerState extends State<MekanlyMultiPlayer> {
//   late MekanlyManager mekanlyManager;

//   @override
//   void initState() {
//     super.initState();
//     mekanlyManager = MekanlyManager(
//       videoPlayerController: VideoPlayerController.networkUrl(
//         Uri.parse(widget.url),
//       )..setLooping(true),
//       autoPlay: false,
//     );
//   }

//   @override
//   void dispose() {
//     widget.mekanlyMultiManager.remove(mekanlyManager);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MekanlyVideoPlayer(
//       mekanlyManager: mekanlyManager,
//       preferredDeviceOrientation: const [
//         DeviceOrientation.portraitUp,
//       ],
//       preferredDeviceOrientationFullscreen: const [
//         DeviceOrientation.portraitUp,
//       ],
//       mekanlyVideoWithControls: MekanlyVideoWithControls(
//         videoFit: BoxFit.contain,
//         controls: PlayerLandscapeControls(
//           mekanlyMultiManager: widget.mekanlyMultiManager,
//         ),
//       ),
//       mekanlyVideoWithControlsFullscreen: MekanlyVideoWithControls(
//         videoFit: BoxFit.contain,
//         controls: PlayerLandscapeControls(
//           mekanlyMultiManager: widget.mekanlyMultiManager,
//         ),
//       ),
//     );
//   }
// }
