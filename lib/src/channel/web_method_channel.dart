import 'dart:async';

import 'package:growth_web/src/channel/channel_js.dart' as channel;

class WebMethodChannel {
  static final WebMethodChannel instance = WebMethodChannel._();

  WebMethodChannel._();

  factory WebMethodChannel() => instance;

  Future<T> invokeMethod<T>(String method, [Map<String, dynamic>? data]) {
    return channel.invokeMethod<T>(method, data);
  }
}
