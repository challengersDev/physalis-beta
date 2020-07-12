import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

MaterialApp app;

void main() {
  app = MaterialApp(home: PhysalisExplorer());
  runApp(app);
}

class PhysalisExplorer extends StatefulWidget {
  @override
  _PhysalisExplorerState createState() => _PhysalisExplorerState();
}

class _PhysalisExplorerState extends State<PhysalisExplorer> {
  Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl:
          'https://physalis.online', // 'https://physalisonline.editorx.io/physalis-alpha'
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
      ),
    );
  }
}
