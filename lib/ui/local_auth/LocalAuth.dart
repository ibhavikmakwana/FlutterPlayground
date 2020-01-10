//// Copyright 2020 The Chromium Authors. All rights reserved.
//// Use of this source code is governed by a BSD-style license that can be
//// found in the LICENSE file.
//
//import 'dart:async';
//
//import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
//import 'package:local_auth/local_auth.dart';
//
//class LocalAuthExample extends StatefulWidget {
//  final String title;
//
//  LocalAuthExample({Key key, this.title}) : super(key: key);
//
//  @override
//  _LocalAuthState createState() => _LocalAuthState();
//}
//
//class _LocalAuthState extends State<LocalAuthExample> {
//  String _authorized = 'Not Authorized';
//
//  Future<Null> _authenticate() async {
//    final LocalAuthentication auth = LocalAuthentication();
//    bool authenticated = false;
//    try {
//      authenticated = await auth.authenticateWithBiometrics(
//          localizedReason: 'Scan your fingerprint to authenticate',
//          useErrorDialogs: true,
//          stickyAuth: false);
//    } on PlatformException catch (e) {
//      print(e);
//    }
//    if (!mounted) return;
//
//    setState(() {
//      _authorized = authenticated ? 'Authorized' : 'Not Authorized';
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),
//      ),
//      body: ConstrainedBox(
//        constraints: const BoxConstraints.expand(),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          children: <Widget>[
//            Text('Current State: $_authorized\n'),
//            RaisedButton(
//              child: const Text('Authenticate'),
//              onPressed: _authenticate,
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
