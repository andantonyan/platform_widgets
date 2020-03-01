import 'dart:ui';

import 'package:flutter/widgets.dart';

import 'platform_text_theme.dart';

abstract class PlatformAppBarRenderer {
  PreferredSizeWidget render({
    Key key,
    Widget leading,
    bool automaticallyImplyLeading,
    Widget title,
    List<Widget> actions,
    Widget flexibleSpace,
    PreferredSizeWidget bottom,
    double elevation,
    ShapeBorder shape,
    Color backgroundColor,
    Brightness brightness,
    IconThemeData iconTheme,
    IconThemeData actionsIconTheme,
    PlatformTextTheme textTheme,
    bool primary,
    bool centerTitle,
    double titleSpacing,
    double toolbarOpacity,
    double bottomOpacity,
    bool automaticallyImplyMiddle,
    String previousPageTitle,
    Widget middle,
    Widget trailing,
    Border border,
    EdgeInsetsDirectional padding,
    Color actionsForegroundColor,
    bool transitionBetweenRoutes,
    Object heroTag,
  });
}
