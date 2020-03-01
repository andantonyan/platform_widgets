import 'package:flutter/painting.dart';

abstract class PlatformTextTheme {
  final TextStyle display4;

  final TextStyle display3;

  final TextStyle display2;

  final TextStyle display1;

  final TextStyle headline;

  final TextStyle title;

  final TextStyle subhead;

  final TextStyle body2;

  final TextStyle body1;

  final TextStyle caption;

  final TextStyle button;

  final TextStyle subtitle;

  final TextStyle overline;

  const PlatformTextTheme({
    this.display4,
    this.display3,
    this.display2,
    this.display1,
    this.headline,
    this.title,
    this.subhead,
    this.body2,
    this.body1,
    this.caption,
    this.button,
    this.subtitle,
    this.overline,
  });
}
