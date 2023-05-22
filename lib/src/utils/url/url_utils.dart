import 'dart:html' as html;

String getUrlQuery(String name) {
  var uri = Uri.tryParse(html.window.location.href);
  return (uri?.queryParameters[name] ?? '').replaceAll('/', '');
}

void setQueryParameters(Map<String, dynamic> queryParams) {
  final uri = Uri.parse(html.window.location.href);
  final newQueryParams = Map<String, dynamic>.from(uri.queryParameters)
    ..addAll(queryParams);
  final newUri = uri.replace(queryParameters: newQueryParams);
  html.window.history.pushState(null, '', newUri.toString());
}
