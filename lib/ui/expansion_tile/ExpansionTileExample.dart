// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_playground/ui/expansion_tile/sample_data.dart';

final List<SampleData> data = <SampleData>[
  SampleData(
    "Food & Beverages",
    <SampleData>[
      SampleData(
        "Drinks",
        <SampleData>[
          SampleData("Tea"),
          SampleData("Coffee"),
          SampleData("Juices"),
        ],
      ),
      SampleData("Street food"),
    ],
  ),
  SampleData(
    "Fashion",
    <SampleData>[
      SampleData("Men's fashion"),
      SampleData("Women's fashion"),
    ],
  ),
  SampleData(
    "TVs & Appliances",
    <SampleData>[
      SampleData("Television"),
      SampleData("Washing Machine"),
      SampleData(
        "Kitchen Appliances",
        <SampleData>[
          SampleData("Microwave Ovens"),
          SampleData("Oven Toaster Grills (OTG)"),
          SampleData("Juicer/Mixer/Grinder"),
        ],
      ),
    ],
  ),
];

class ExpansionTileExample extends StatelessWidget {
  final String title;

  const ExpansionTileExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => Item(data[index]),
        itemCount: data.length,
      ),
    );
  }
}

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class Item extends StatelessWidget {
  const Item(this.sample);

  final SampleData sample;

  Widget _buildTiles(SampleData root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<SampleData>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(sample);
  }
}
