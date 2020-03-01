import 'package:flutter/material.dart';

import '../platform_app_bar_renderer.dart';
import '../platform_text_theme.dart';

class MaterialAppBarRenderer implements PlatformAppBarRenderer {
  @override
  PreferredSizeWidget render({
    Key key,
    Widget leading,
    bool automaticallyImplyLeading = true,
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
    bool primary = true,
    bool centerTitle,
    double titleSpacing = NavigationToolbar.kMiddleSpacing,
    double toolbarOpacity = 1.0,
    double bottomOpacity = 1.0,
    bool automaticallyImplyMiddle,
    String previousPageTitle,
    Widget middle,
    Widget trailing,
    Border border,
    EdgeInsetsDirectional padding,
    Color actionsForegroundColor,
    bool transitionBetweenRoutes,
    Object heroTag,
  }) {
    return AppBar(
      key: key,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: title,
      actions: actions,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      shape: shape,
      backgroundColor: backgroundColor,
      brightness: brightness,
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      textTheme: textTheme != null
          ? TextTheme(
              display4: textTheme.display4,
              display3: textTheme.display3,
              display2: textTheme.display2,
              display1: textTheme.display1,
              headline: textTheme.headline,
              title: textTheme.title,
              subhead: textTheme.subhead,
              body2: textTheme.body2,
              body1: textTheme.body1,
              caption: textTheme.caption,
              button: textTheme.button,
              subtitle: textTheme.subtitle,
              overline: textTheme.overline,
            )
          : null,
      primary: primary,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
    );
  }
}
