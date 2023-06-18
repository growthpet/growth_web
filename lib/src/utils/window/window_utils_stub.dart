import 'package:flutter/foundation.dart';
import 'package:growth_web/src/utils/window/window_handler.dart';

WebWindowHandler openWebWindow(
  String url, {
  String? name,
  VoidCallback? onClose,
}) {
  return WebWindowHandler();
}

class WebWindowHandler extends WindowHandler {
  @override
  void dispose();

  @override
  void addCloseListener(VoidCallback onClose) {}

  @override
  void removeCloseListener(VoidCallback onClose) {}
}
