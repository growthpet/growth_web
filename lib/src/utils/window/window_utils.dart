import 'dart:async';
import 'dart:html';

import 'package:growth_web/src/utils/window/window_handler.dart';

WebWindowHandler openWebWindow(
  String url, {
  String? name,
  VoidCallback? onClose,
}) {
  final handler = WebWindowHandler(window.open(url, name ?? ''));

  if (onClose != null) {
    handler.addCloseListener(onClose);
  }

  return handler;
}

class WebWindowHandler extends WindowHandler {
  final WindowBase _window;
  final _closeListeners = <VoidCallback>{};

  Timer? _timer;

  WebWindowHandler(this._window) {
    _init();
  }

  @override
  void dispose() {
    _close();
    super.dispose();
  }

  @override
  void addCloseListener(VoidCallback onClose) {
    _closeListeners.add(onClose);
  }

  @override
  void removeCloseListener(VoidCallback onClose) {
    _closeListeners.remove(onClose);
  }

  void _init() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_window.closed == false) {
        return;
      }

      for (var element in _closeListeners) {
        element();
      }
      _close();
    });
  }

  void _close() {
    _timer?.cancel();
    _closeListeners.clear();
  }
}
