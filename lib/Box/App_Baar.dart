import 'package:flutter/material.dart';
import 'package:flutter_tutorial1/Setup/Setup.dart';

class AppBarBox extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double height, width;

  const AppBarBox(
      {Key key, this.padding, this.height, this.width, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: COLOR_WHITE,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: COLOR_GREY.withAlpha(40), width: 2)),
      padding: padding ?? const EdgeInsets.all(8.0),
      child: Center(
        child: child,
      ),
    );
  }
}
// alpha property Null safety
// int alpha
// The alpha channel of this color in an 8 bit value.
//
// A value of 0 means this color is fully transparent. A value of 255 means this color is fully opaque.
//
// Implementation
// int get alpha => (0xff000000 & value) >> 24;
