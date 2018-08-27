import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuth extends StatefulWidget {
  @override
  _LocalAuthState createState() => _LocalAuthState();
}

class _LocalAuthState extends State<LocalAuth> {
  String _authorized = 'Not Authorized';

  Future<Null> _authenticateWithBiometrics() async {
    final LocalAuthentication auth = new LocalAuthentication();
    bool authenticated = false;
    try {
      authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Scan your fingerprint to authenticate',
          useErrorDialogs: true,
          stickyAuth: false);
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _authorized = authenticated ? 'Authorized' : 'Not Authorized';
    });
  }

  Future<Null> _authenticate() async {
    final LocalAuthentication auth = new LocalAuthentication();
    bool authenticated = false;
    try {
      authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Scan your fingerprint to authenticate',
          useErrorDialogs: true,
          stickyAuth: false);
    } on PlatformException catch (e) {
      print(e);
    }
    if (!mounted) return;

    setState(() {
      _authorized = authenticated ? 'Authorized' : 'Not Authorized';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: const Text('Local authentication'),
      ),
      body: new ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: ListView(
          children: <Widget>[
            new RaisedButton(
              child: const Text('Authenticate'),
              onPressed: _authenticateWithBiometrics,
            ),
            new RaisedButton(
              child: const Text('Authenticate'),
              onPressed: _authenticateWithBiometrics,
            ),
          ],
        ),
      ),
    ));
  }
}
