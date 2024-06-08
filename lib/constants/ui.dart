import 'package:flutter/material.dart';

Widget spacer({double x = 5, double y = 5}) => SizedBox(height: y, width: x);

Size screen(BuildContext context) => MediaQuery.of(context).size;

ColorScheme colors(BuildContext context) => Theme.of(context).colorScheme;

extension ExtAlign on Widget {
  Align align(Alignment value) => Align(alignment: value, child: this);
}

extension Ext1Color on Color {
  MaterialStatePropertyAll<Color> get material =>
      MaterialStatePropertyAll(this);
}
