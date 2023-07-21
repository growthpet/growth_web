import 'dart:html';

class WebLocation {
  late final _location = window.location;

  String get origin => _location.origin;

  String get pathname => _location.pathname ?? '';

  String get url => '$origin$pathname';

  String get href => _location.href;

  String get urlHref => _location.href;

  WebLocation._();

  static final WebLocation instance = WebLocation._();

  factory WebLocation() {
    return instance;
  }
}
