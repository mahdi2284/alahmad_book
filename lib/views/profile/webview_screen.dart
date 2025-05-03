import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BlogWebViewScreen extends StatelessWidget {
  final String url = 'https://alahmad-pub.ir';

  const BlogWebViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('سایت انتشارات آل احمد'),
      ),
      body: WebViewWidget(controller: WebViewController()..loadRequest(Uri.parse(url))),
    );
  }
}
