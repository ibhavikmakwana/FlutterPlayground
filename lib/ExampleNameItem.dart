// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_playground/models/ExapmleNames.dart';
import 'package:meta/meta.dart';

/// A [ExampleNameItem] to display a [ExampleNames].
class ExampleNameItem extends StatelessWidget {
  final ExampleNames exampleNames;
  final ValueChanged<ExampleNames> onTap;

  const ExampleNameItem({
    Key key,
    @required this.exampleNames,
    this.onTap,
  })
      : assert(exampleNames != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: Card(
        elevation: 4.0,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 4.0,
                color: Colors.lightGreen,
              ),
            ),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/${exampleNames.title}");
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 8.0),
                    child: Text(
                      exampleNames.title,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
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

