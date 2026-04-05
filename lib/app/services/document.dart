import 'package:html/dom.dart';

class DocumentParseException implements Exception {
  DocumentParseException(this.message);

  final String message;

  @override
  String toString() => 'DocumentParseException: $message';
}

class ElementParser {
  ElementParser(this.element);

  factory ElementParser.parse(Document document) {
    final body = document.body;
    if (body == null) {
      throw DocumentParseException('Document has no body');
    }
    return ElementParser(body);
  }

  final Element element;

  String get text => element.text;

  ElementParser querySelector(String selector) {
    final element = this.element.querySelector(selector);
    if (element == null) {
      throw DocumentParseException('Element not found: $selector');
    }
    return ElementParser(element);
  }

  List<ElementParser> querySelectorAll(String selector, {int? length}) {
    final elements = element.querySelectorAll(selector);
    if (length != null && elements.length != length) {
      throw DocumentParseException(
        'Expected $length elements, but found ${elements.length}',
      );
    }
    return elements.map(ElementParser.new).toList();
  }
}

extension TextParser on String {
  int intPasrse() {
    if (this[0] == '▲') {
      return -int.parse(substring(1).replaceAll(',', ''));
    } else {
      return int.parse(replaceAll(',', ''));
    }
  }

  double doubleParse() {
    if (this[0] == '▲') {
      return -double.parse(substring(1).replaceAll(',', ''));
    } else {
      return double.parse(replaceAll(',', ''));
    }
  }

  DateTime dateParse() {
    return DateTime.parse(replaceAll('/', '-'));
  }
}
