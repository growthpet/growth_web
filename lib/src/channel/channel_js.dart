@JS()
library channel_js;

import 'dart:convert';

import 'package:js/js.dart';
import 'package:js/js_util.dart';

@JS('invokeMethod')
external Object _invokeMethod(String method, String? data);

Future<T> invokeMethod<T>(String method, [Map<String, dynamic>? data]) =>
    promiseToFuture(
      _invokeMethod(
        method,
        data == null ? null : jsonEncode(data),
      ),
    );
