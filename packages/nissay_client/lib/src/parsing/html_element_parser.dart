import 'package:html/dom.dart';
import 'package:nissay_client/src/exceptions.dart';

class HtmlElementParser {
  HtmlElementParser(this.element);

  factory HtmlElementParser.fromDocument(Document document) {
    final body = document.body;
    if (body == null) {
      throw NissayException('Document has no body');
    }
    return HtmlElementParser(body);
  }

  final Element element;

  String get text => element.text;

  HtmlElementParser querySelector(String selector) {
    final child = element.querySelector(selector);
    if (child == null) {
      throw NissayException('Element not found: $selector');
    }
    return HtmlElementParser(child);
  }

  List<HtmlElementParser> querySelectorAll(String selector, {int? length}) {
    final children = element.querySelectorAll(selector);
    if (length != null && children.length != length) {
      throw NissayException('Expected $length elements, but found ${children.length}');
    }
    return children.map(HtmlElementParser.new).toList();
  }
}

extension NissayTextParsing on String {
  int parseSignedInt() {
    if (startsWith('▲')) {
      return -int.parse(substring(1).replaceAll(',', ''));
    }
    if (startsWith('＋')) {
      return int.parse(substring(1).replaceAll(',', ''));
    }
    return int.parse(replaceAll(',', ''));
  }

  double parseSignedDouble() {
    if (startsWith('▲')) {
      return -double.parse(substring(1).replaceAll(',', ''));
    }
    if (startsWith('＋')) {
      return double.parse(substring(1).replaceAll(',', ''));
    }
    return double.parse(replaceAll(',', ''));
  }
}
