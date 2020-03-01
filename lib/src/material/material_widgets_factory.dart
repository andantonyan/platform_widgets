import '../platform_app_bar_renderer.dart';
import '../platform_text_renderer.dart';
import '../platform_widgets_factory.dart';
import 'material_app_bar_renderer.dart';

class MaterialWidgetsFactory implements PlatformWidgetsFactory {
  @override
  PlatformAppBarRenderer createAppBar() {
    return MaterialAppBarRenderer();
  }

  @override
  PlatformTextRenderer createText() {
    // TODO: implement createText
    return null;
  }
}
