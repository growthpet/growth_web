class WebLocation {
  WebLocation._();

  static final WebLocation instance = WebLocation._();

  String get origin => "";

  String get pathname => "";

  String get url => "";

  String get href => "";

  String get urlHref => "";

  factory WebLocation() {
    return instance;
  }
}
