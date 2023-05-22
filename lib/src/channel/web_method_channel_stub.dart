import 'dart:async';

class WebMethodChannel {
  static final WebMethodChannel instance = WebMethodChannel._();

  WebMethodChannel._();

  factory WebMethodChannel() => instance;

  Future<T> invokeMethod<T>(String method, [Map<String, dynamic>? data]) {
    return Future.value(null);
  }
}
