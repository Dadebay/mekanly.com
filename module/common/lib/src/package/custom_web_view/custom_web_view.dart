// import 'dart:collection';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// ///
// /// [ App custom web view  ]
// class CustomWebView extends StatefulWidget {
//   ///
//   const CustomWebView({required this.path, super.key});

//   /// Web view path for launching
//   final String path;

//   @override
//   _CustomWebViewState createState() => _CustomWebViewState();
// }

// class _CustomWebViewState extends State<CustomWebView> {
//   final GlobalKey webViewKey = GlobalKey();

//   InAppWebViewController? webViewController;
//   InAppWebViewSettings settings = InAppWebViewSettings(
//     isInspectable: kDebugMode,
//     mediaPlaybackRequiresUserGesture: false,
//     allowsInlineMediaPlayback: true,
//     iframeAllow: 'camera; microphone',
//     iframeAllowFullscreen: true,
//   );

//   PullToRefreshController? pullToRefreshController;

//   late ContextMenu contextMenu;
//   String url = '';
//   double progress = 0;
//   final urlController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();

//     contextMenu = ContextMenu(
//       menuItems: [
//         ContextMenuItem(
//           id: 1,
//           title: 'Special',
//           action: () async {
//             print('Menu item Special clicked!');
//             print(await webViewController?.getSelectedText());
//             await webViewController?.clearFocus();
//           },
//         ),
//       ],
//       settings: ContextMenuSettings(),
//       onCreateContextMenu: (hitTestResult) async {
//         print('onCreateContextMenu');
//         print(hitTestResult.extra);
//         print(await webViewController?.getSelectedText());
//       },
//       onHideContextMenu: () {
//         print('onHideContextMenu');
//       },
//       onContextMenuActionItemClicked: (contextMenuItemClicked) async {
//         final id = contextMenuItemClicked.id;
//         print(
//           'onContextMenuActionItemClicked: $id ${contextMenuItemClicked.title}',
//         );
//       },
//     );

//     pullToRefreshController = kIsWeb ||
//             ![TargetPlatform.iOS, TargetPlatform.android]
//                 .contains(defaultTargetPlatform)
//         ? null
//         : PullToRefreshController(
//             settings: PullToRefreshSettings(
//               color: Colors.blue,
//             ),
//             onRefresh: () async {
//               if (defaultTargetPlatform == TargetPlatform.android) {
//                 await webViewController?.reload();
//               } else if (defaultTargetPlatform == TargetPlatform.iOS ||
//                   defaultTargetPlatform == TargetPlatform.macOS) {
//                 await webViewController?.loadUrl(
//                   urlRequest:
//                       URLRequest(url: await webViewController?.getUrl()),
//                 );
//               }
//             },
//           );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               child: Stack(
//                 children: [
//                   InAppWebView(
//                     key: webViewKey,
//                     initialUrlRequest: URLRequest(url: WebUri(widget.path)),
//                     // initialUrlRequest:
//                     // URLRequest(url: WebUri(Uri.base.toString().replaceFirst("/#/", "/") + 'page.html')),
//                     // initialFile: "assets/index.html",
//                     initialUserScripts: UnmodifiableListView<UserScript>([]),
//                     initialSettings: settings,
//                     contextMenu: contextMenu,
//                     pullToRefreshController: pullToRefreshController,
//                     onWebViewCreated: (controller) async {
//                       webViewController = controller;
//                     },
//                     onLoadStart: (controller, url) async {
//                       setState(() {
//                         this.url = url.toString();
//                         urlController.text = this.url;
//                       });
//                     },
//                     onPermissionRequest: (controller, request) async {
//                       return PermissionResponse(
//                         resources: request.resources,
//                         action: PermissionResponseAction.GRANT,
//                       );
//                     },
//                     shouldOverrideUrlLoading:
//                         (controller, navigationAction) async {
//                       // var uri = navigationAction.request.url!;

//                       // if (![
//                       //   "http",
//                       //   "https",
//                       //   "file",
//                       //   "chrome",
//                       //   "data",
//                       //   "javascript",
//                       //   "about"
//                       // ].contains(uri.scheme)) {
//                       //   if (await canLaunchUrl(uri)) {
//                       //     // Launch the App
//                       //     await launchUrl(
//                       //       uri,
//                       //     );
//                       //     // and cancel the request
//                       //     return NavigationActionPolicy.CANCEL;
//                       //   }
//                       // }

//                       return NavigationActionPolicy.ALLOW;
//                     },
//                     onLoadStop: (controller, url) async {
//                       await pullToRefreshController?.endRefreshing();
//                       setState(() {
//                         this.url = url.toString();
//                         urlController.text = this.url;
//                       });
//                     },
//                     onReceivedError: (controller, request, error) {
//                       pullToRefreshController?.endRefreshing();
//                     },
//                     onProgressChanged: (controller, progress) {
//                       if (progress == 100) {
//                         pullToRefreshController?.endRefreshing();
//                       }
//                       setState(() {
//                         this.progress = progress / 100;
//                         urlController.text = url;
//                       });
//                     },
//                     onUpdateVisitedHistory: (controller, url, isReload) {
//                       setState(() {
//                         this.url = url.toString();
//                         urlController.text = this.url;
//                       });
//                     },
//                     onConsoleMessage: (controller, consoleMessage) {
//                       print(consoleMessage);
//                     },
//                   ),
//                   if (progress < 1.0)
//                     LinearProgressIndicator(value: progress)
//                   else
//                     const SizedBox.shrink(),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(),
//                     child: const Icon(Icons.arrow_back),
//                     onPressed: () {
//                       webViewController?.goBack();
//                     },
//                   ),
//                   ElevatedButton(
//                     style: ElevatedButton.styleFrom(),
//                     child: const Icon(Icons.arrow_forward),
//                     onPressed: () {
//                       webViewController?.goForward();
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
