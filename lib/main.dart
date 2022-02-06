// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/my_app.dart';
import 'package:flutter_playground/store/theme_store.dart';
import 'package:flutter_playground/values/imports.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  return runApp(
    Provider(
      create: (_) => ThemeStore(),
      child: MyApp(),
    ),
  );
}
