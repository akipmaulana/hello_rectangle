// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  String name;
  ColorSwatch color;
  IconData iconLocation;

//  const Category({
//    Key key,
//    @required this.name,
//    @required this.color,
//    @required this.iconLocation,
//  })  : assert(name != null),
//        assert(color != null),
//        assert(iconLocation != null),
//        super(key: key);

//  Category(Key key, String name, ColorSwatch color, IconData iconLocation) {
//    super(key: key);
//    this.name = name;
//    this.color = color;
//    this.iconLocation = iconLocation;
//  }

  Category(this.name, this.color, this.iconLocation): super();

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            print('I was Tapped!');
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  )
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline
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
