import 'package:flutter/foundation.dart';

abstract class WindowHandler {
  void addCloseListener(VoidCallback onClose) {}

  void removeCloseListener(VoidCallback onClose) {}

  void dispose() {}
}
