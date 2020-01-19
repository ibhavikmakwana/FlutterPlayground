// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_playground/store/theme_store.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';
import 'values/imports.dart';

void main() {
  return runApp(
    Provider(
      create: (_) => ThemeStore(),
      child: MyApp(),
    ),
  );
}
