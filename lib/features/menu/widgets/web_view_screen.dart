import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:gen/gen.dart';
import '../../../core/components/loading_indicator.dart';
import '../../../product/constants/constants.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({
    super.key,
    required this.url,
    required this.title,
  });

  final String url;
  final String title;

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  bool _isLoading = true;
  bool _hasError = false;

  @override
  Widget build(BuildContext context) {
    Widget webViewWidget = InAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(widget.url)),
      initialOptions: InAppWebViewGroupOptions(
        crossPlatform: InAppWebViewOptions(
          useShouldOverrideUrlLoading: true,
          javaScriptEnabled: true,
          mediaPlaybackRequiresUserGesture: false,
          supportZoom: true,
          clearCache: true,
        ),
        android: AndroidInAppWebViewOptions(
          useHybridComposition: true,
        ),
        ios: IOSInAppWebViewOptions(
          allowsInlineMediaPlayback: true,
        ),
      ),
      onLoadStart: (controller, url) {
        setState(() {
          _isLoading = true;
          _hasError = false;
        });
      },
      onLoadStop: (controller, url) {
        setState(() {
          _isLoading = false;
        });
      },
      onLoadError: (controller, url, code, message) {
        setState(() {
          _hasError = true;
          _isLoading = false;
        });
      },
      onLoadHttpError: (controller, url, statusCode, description) {
        setState(() {
          _hasError = true;
          _isLoading = false;
        });
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.main,
        elevation: 4,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: StringConstants.roboto,
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 0.5,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          if (!_hasError) Positioned.fill(child: webViewWidget),
          if (_isLoading)
            LoadingIndicator.circle(
              size: const Size(32, 32),
            ),
          if (_hasError)
            const ColoredBox(
              color: Colors.white,
              child: Center(
                child: Text(
                  'Web sahypasyna girilende ýalňyşlyk ýüze çykdy.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
