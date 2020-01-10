// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class SampleData {
  SampleData(this.title, [this.children = const <SampleData>[]]);

  final String title;
  final List<SampleData> children;
}
