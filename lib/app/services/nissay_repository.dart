import 'package:dio/dio.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:nissay_401k/app/services/html_document_parser.dart';
import 'package:nissay_401k/app/services/nissay_models.dart';

class NissayException implements Exception {
  NissayException(this.message);

  final String message;

  @override
  String toString() => 'NissayException: $message';
}

class NissayAuthException extends NissayException {
  NissayAuthException(super.message);
}

class NissayRepository {
  NissayRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

  void _throwIfAuthenticationFailed(String path, Document document) {
    if (path == '/dmckanyusha/transactions/login') {
      final error = document.querySelector('div#emergencyInfo');
      if (error != null) {
        throw NissayAuthException(error.text.trim());
      }
    }

    final error = document.querySelector('#PI2G306_errmsg_TABLE');
    if (error != null) {
      throw NissayAuthException(error.text.trim());
    }
  }

  Future<void> login({
    required String userId,
    required String password,
  }) async {
    await _dio.get<void>('/dmckanyusha/salsa_open/auth/extra/Login_ip.jsp');

    final loginResponse = await _dio.post<String>(
      '/dmckanyusha/transactions/login',
      data: _buildFormBody({
        'auth_key': '5',
        'LocalTestFlag': '',
        'AUTH_USERID': userId,
        'AUTH_PASSWORD': password,
      }),
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'referer': '${_dio.options.baseUrl}/dmckanyusha/salsa_open/auth/extra/Login_ip.jsp',
        },
      ),
    );

    final loginPath = loginResponse.realUri.path;
    _throwIfAuthenticationFailed(loginPath, parse(loginResponse.data ?? ''));
    if (loginPath != '/dmckanyusha/transactions/menu_init') {
      throw NissayAuthException('Unexpected response URI: $loginPath');
    }

    final menuInitResponse = await _dio.post<String>(
      '/dmckanyusha/transactions/ck1._V300100_ck100041',
      data: _buildFormBody({'NEED_SAVE': '1'}),
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'referer': '${_dio.options.baseUrl}/dmckanyusha/transactions/menu_init',
        },
      ),
    );

    final menuInitPath = menuInitResponse.realUri.path;
    _throwIfAuthenticationFailed(menuInitPath, parse(menuInitResponse.data ?? ''));
    if (menuInitPath != '/dmckanyusha/transactions/ck1._V300100_ck100041') {
      throw NissayAuthException('Unexpected response URI: $menuInitPath');
    }
  }

  Future<NissayCurrentAssetsModel> fetchCurrentAssets() async {
    final response = await _dio.post<String>(
      '/dmckanyusha/transactions/ck1._V300100_ck100020',
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'referer': '${_dio.options.baseUrl}/dmckanyusha/transactions/ck1._V300100_ck100041',
        },
      ),
    );

    final responsePath = response.realUri.path;
    final document = parse(response.data ?? '');
    _throwIfAuthenticationFailed(responsePath, document);
    if (responsePath != '/dmckanyusha/transactions/ck1._V300100_ck100020') {
      throw NissayException('Unexpected response URI: $responsePath');
    }

    return parseCurrentAssetsPage(document);
  }

  String _buildFormBody(Map<String, String> parameters) {
    return Uri(queryParameters: parameters).query;
  }
}

NissayCurrentAssetsModel parseCurrentAssetsPage(Document document) {
  final parser = HtmlElementParser.fromDocument(document);
  final summary = parser.querySelectorAll(
    'div#presentAsset .tableWrapper tr>td>span',
    length: 4,
  );
  final capturedAt = parser.querySelector('div#presentAsset .lineNotes01');
  final capturedAtMatch = RegExp(r'\d{4}/\d{2}/\d{2}').firstMatch(capturedAt.text);
  if (capturedAtMatch == null) {
    throw HtmlDocumentParseException('Failed to parse captured date: ${capturedAt.text}');
  }

  final detailRows = parser
      .querySelectorAll('div#presentAsset .clrStyle01 .btmborderSolid')
      .map((row) => row.querySelectorAll('td'));
  final detailBodies = detailRows.where((cells) => cells.length == 5).toList();
  final detailSummary = detailRows.singleWhere((cells) => cells.length == 3);

  return NissayCurrentAssetsModel(
    totalAsset: summary[0].text.parseSignedInt(),
    totalContribution: summary[1].text.parseSignedInt(),
    totalProfitLoss: summary[2].text.parseSignedInt(),
    roi: summary[3].text.parseSignedDouble(),
    date: capturedAtMatch.group(0)!.parseSlashSeparatedDate(),
    details: [
      for (final detail in detailBodies)
        NissayTotalDetailsModel(
          operationType: detail[0].text,
          productName: detail[1].text,
          totalAsset: detail[2].text.parseSignedInt(),
          profitLoss: detail[3].text.parseSignedInt(),
          assetRatio: detail[4].text.parseSignedDouble(),
        ),
    ],
    detailsSum: NissayTotalDetailsSumModel(
      totalAsset: detailSummary[0].text.parseSignedInt(),
      profitLoss: detailSummary[1].text.parseSignedInt(),
      assetRatio: detailSummary[2].text.parseSignedDouble(),
    ),
  );
}
