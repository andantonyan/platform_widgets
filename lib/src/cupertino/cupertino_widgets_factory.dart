import 'package:platform_widgets/platform_widgets.dart';

class CupertinoWidgetsFactory implements PlatformWidgetsFactory {
  @override
  PlatformAppBarRenderer createAppBar() {
    return CupertinoAppBarRenderer();
  }

  @override
  PlatformTextRenderer createText() {
    // TODO: implement createText
    return null;
  }
}
