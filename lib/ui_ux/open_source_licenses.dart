import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_playground/values/imports.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OpenSource {
  String name;
  String link;

  OpenSource(this.name, this.link);
}

class OpenSourceLicenses extends StatelessWidget {
  final List<OpenSource> list = [
    OpenSource('Flutter',
        'https://raw.githubusercontent.com/flutter/flutter/master/LICENSE'),
    OpenSource('cupertino_icons',
        'https://raw.githubusercontent.com/flutter/cupertino_icons/master/LICENSE'),
    OpenSource('flare_flutter',
        'https://raw.githubusercontent.com/2d-inc/Flare-Flutter/stable/LICENSE'),
    OpenSource('quick_actions',
        'https://raw.githubusercontent.com/flutter/plugins/master/LICENSE'),
    OpenSource('google_fonts',
        'https://raw.githubusercontent.com/material-foundation/google-fonts-flutter/master/LICENSE'),
    OpenSource('mobx',
        'https://raw.githubusercontent.com/mobxjs/mobx.dart/master/LICENSE'),
    OpenSource('flutter_mobx',
        'https://raw.githubusercontent.com/mobxjs/mobx.dart/master/LICENSE'),
    OpenSource('provider',
        'https://raw.githubusercontent.com/rrousselGit/provider/master/LICENSE'),
    OpenSource('url_launcher',
        'https://raw.githubusercontent.com/flutter/plugins/master/LICENSE'),
    OpenSource('webview_flutter',
        'https://raw.githubusercontent.com/flutter/plugins/master/LICENSE'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Open source licenses')),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: list.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(list[index].name),
          onTap: () => navigateToLicence(context, list[index]),
        ),
        physics: BouncingScrollPhysics(),
      ),
    );
  }

  navigateToLicence(BuildContext context, OpenSource licence) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => LicenseDetail(licence: licence),
      ),
    );
  }
}

class LicenseDetail extends StatefulWidget {
  final OpenSource licence;

  const LicenseDetail({Key key, this.licence}) : super(key: key);

  @override
  _LicenseDetailState createState() => _LicenseDetailState();
}

class _LicenseDetailState extends State<LicenseDetail> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.licence.name),
      ),
      body: Builder(
        builder: (BuildContext context) => WebView(
          initialUrl: widget.licence.link,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
        ),
      ),
    );
  }
}
