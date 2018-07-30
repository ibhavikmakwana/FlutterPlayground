import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSpanExample extends StatefulWidget {
  final String title;

  TextSpanExample({Key key, this.title}) : super(key: key);

  @override
  _TextSpanState createState() => _TextSpanState();
}

class _TextSpanState extends State<TextSpanExample> {
  final recognizer = new TapGestureRecognizer()
    ..onTap = () {
      print("You have tapped Bhavik");
    };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: textSpanPage());
  }

  Widget textSpanPage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        textSpan(),
        textUnderLine(),
      ],
    );
  }

  textSpan() {
    return Row(
      children: <Widget>[
        new RichText(
          text: new TextSpan(
            children: <TextSpan>[
              new TextSpan(
                text: 'Hello, ',
                style: new TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 24.0,
                  color: Colors.blue.shade500,
                ),
              ),
              new TextSpan(
                recognizer: recognizer,
                text: 'Bhavik',
                style: new TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24.0,
                  color: Colors.blue.shade900,
                ),
              ),
              new TextSpan(
                text: 'Makwana',
                style: new TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24.0,
                  color: Colors.blue.shade700,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }

  textUnderLine() {
    return Text(
      "Bhavik",
      style: TextStyle(
          fontSize: 24.0,
          decoration: TextDecoration.underline,
          decorationStyle: TextDecorationStyle.solid),
    );
  }
}
