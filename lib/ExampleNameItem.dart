// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/values/imports.dart';

/// A [ExampleNameItem] to display a [ExampleNames].
class ExampleNameItem extends StatelessWidget {
  final ExampleNames exampleNames;
  final ValueChanged<ExampleNames>? onTap;

  const ExampleNameItem({
    Key? key,
    required this.exampleNames,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Card(
        elevation: 4.0,
        shape: const RoundedRectangleBorder(),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 4.0,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/${exampleNames.title}");
              FirebaseAnalytics.instance.setCurrentScreen(screenName: exampleNames.title);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                    child: Text(
                      exampleNames.title,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.chevron_right,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
