import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class Zaid extends StatefulWidget {
  @override
  _ZaidState createState() => _ZaidState();
}

class _ZaidState extends State<Zaid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Wooble',
          style: TextStyle(color: HexColor('#f15944')),
        ),
        centerTitle: true,
        leading: BackButton(
          color: HexColor('#f15944'),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: WebView(
          initialUrl: 'https://zaidmukaddam.github.io/',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
