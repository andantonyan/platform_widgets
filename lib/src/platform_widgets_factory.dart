import 'platform_app_bar_renderer.dart';
import 'platform_text_renderer.dart';

abstract class PlatformWidgetsFactory {
  PlatformTextRenderer createText();

  PlatformAppBarRenderer createAppBar();
}
