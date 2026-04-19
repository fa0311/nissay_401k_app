import 'dart:convert';
import 'dart:io';

import 'package:charset/charset.dart';
import 'package:html/dom.dart';

Document safeParseDocument(List<int>? bytes, Map<String, List<String>>? headers) {
  final contentTypeHeaders = headers?['content-type'];
  final charsetName = _getCharsetName(contentTypeHeaders);

  final encoding = () {
    final encoding = _encoding(charsetName);
    if (encoding case final Encoding encoding) {
      return encoding;
    } else {
      final rawHtml = latin1.decode(bytes ?? [], allowInvalid: true);
      final rawDocument = Document.html(rawHtml);
      return _contentTypeEncoding(rawDocument) ??
          _charsetEncoding(rawDocument) ??
          const Utf8Codec(allowMalformed: true);
    }
  }();

  final text = encoding.decode(bytes ?? []);
  return Document.html(text);
}

Encoding? _encoding(String? charsetName) {
  if (charsetName != null) {
    return Charset.getByName(charsetName);
  }
  return null;
}

Encoding? _contentTypeEncoding(Document document) {
  final contentType = document.head?.querySelector('meta[http-equiv="Content-Type"]');
  final content = contentType?.attributes['content'];
  if (content case final String content) {
    final charsetName = ContentType.parse(content).parameters['charset'];
    return _encoding(charsetName);
  }
  return null;
}

Encoding? _charsetEncoding(Document document) {
  final charsetFromMeta = document.head?.querySelector('meta[charset]');
  final charset = charsetFromMeta?.attributes['charset'];
  return _encoding(charset);
}

String? _getCharsetName(List<String>? contentTypeHeaders) {
  if (contentTypeHeaders == null) {
    return null;
  }
  for (final header in contentTypeHeaders) {
    final contentType = ContentType.parse(header);
    final charsetName = contentType.parameters['charset'];
    if (charsetName != null) {
      return charsetName;
    }
  }
  return null;
}
