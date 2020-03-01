import 'package:flutter/cupertino.dart';
import 'package:platform_widgets/platform_widgets.dart';

const Color _kDefaultNavBarBorderColor = Color(0x4D000000);

const Border _kDefaultNavBarBorder = Border(
  bottom: BorderSide(
    color: _kDefaultNavBarBorderColor,
    width: 0.0, // One physical pixel.
    style: BorderStyle.solid,
  ),
);

class CupertinoAppBarRenderer implements PlatformAppBarRenderer {
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
    bool primary,
    bool centerTitle,
    double titleSpacing,
    double toolbarOpacity,
    double bottomOpacity,
    bool automaticallyImplyMiddle = true,
    String previousPageTitle,
    Widget middle,
    Widget trailing,
    Border border = _kDefaultNavBarBorder,
    EdgeInsetsDirectional padding,
    Color actionsForegroundColor,
    bool transitionBetweenRoutes = true,
    Object heroTag,
  }) {
    if (heroTag != null) {
      return CupertinoNavigationBar(
        key: key,
        leading: leading,
        automaticallyImplyLeading: automaticallyImplyLeading,
        automaticallyImplyMiddle: automaticallyImplyMiddle,
        backgroundColor: backgroundColor,
        previousPageTitle: previousPageTitle,
        middle: middle,
        trailing: trailing,
        border: border,
        padding: padding,
        actionsForegroundColor: actionsForegroundColor,
        transitionBetweenRoutes: transitionBetweenRoutes,
        heroTag: heroTag,
      );
    }

    return CupertinoNavigationBar(
      key: key,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      automaticallyImplyMiddle: automaticallyImplyMiddle,
      backgroundColor: backgroundColor,
      previousPageTitle: previousPageTitle,
      middle: middle,
      trailing: trailing,
      border: border,
      padding: padding,
      actionsForegroundColor: actionsForegroundColor,
      transitionBetweenRoutes: transitionBetweenRoutes,
    );
  }
}
