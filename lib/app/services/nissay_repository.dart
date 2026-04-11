import 'package:dio/dio.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
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
      data: {
        'auth_key': '5',
        'LocalTestFlag': '',
        'AUTH_USERID': userId,
        'AUTH_PASSWORD': password,
      }.toFormBody(),
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

    final h1 = parse(loginResponse.data ?? '').querySelector('h1');

    if (h1?.text == 'ユーザーID保存確認 / User ID saving check') {
      final menuInitResponse = await _dio.post<String>(
        '/dmckanyusha/transactions/ck1._V300100_ck100041',
        data: {'NEED_SAVE': '1'}.toFormBody(),
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
  }

  Future<void> logout() async {
    await _dio.get<void>('/dmckanyusha/transactions/logout');
  }

  Future<Document> fetch(String path) async {
    final response = await _dio.get<String>(
      path,
      options: Options(
        headers: {
          'referer': '${_dio.options.baseUrl}/dmckanyusha/transactions/ck1._V300100_ck100041',
        },
      ),
    );

    final responsePath = response.realUri.path;
    final document = parse(response.data ?? '');
    _throwIfAuthenticationFailed(responsePath, document);
    if (responsePath != path) {
      throw NissayException('Unexpected response URI: $responsePath');
    }

    return document;
  }

  Future<(String planName, DateTime lastLogin)> parseHead(HtmlElementParser parser) async {
    final bodyHead = parser.querySelectorAll('.bodyHead p');
    final planName = bodyHead[0].text;
    final lastLogin = DateFormat('yyyy/MM/dd\u00A0\u00A0HH:mm').parse(bodyHead[1].querySelector('.date').text);
    return (planName, lastLogin);
  }

  Future<NissayHeadModel> fetchHead() async {
    final document = await fetch('/dmckanyusha/transactions/ck1._V300100_ck100041');
    final parser = HtmlElementParser.fromDocument(document);
    final bodyHead = parser.querySelectorAll('.bodyHead p');
    return NissayHeadModel(name: bodyHead[0].text);
  }

  Future<NissayCurrentAssetsModel> fetchCurrentAssets() async {
    final document = await fetch('/dmckanyusha/transactions/ck1._V300100_ck100020');
    final parser = HtmlElementParser.fromDocument(document);
    final (String planName, DateTime lastLogin) = await parseHead(parser);

    final summary = parser.querySelectorAll('.tableWrapper tr>td', length: 4);
    final date = parser.querySelector('div#presentAsset .lineNotes01');

    final detailRows = parser.querySelectorAll('.clrStyle01 tr').map((row) => row.querySelectorAll('td')).toList();
    final detailBodies = detailRows.sublist(1, detailRows.length - 1);

    return NissayCurrentAssetsModel(
      planName: planName,
      lastLogin: lastLogin,
      totalAsset: summary[0].querySelector('span').text.parseSignedInt(),
      totalContribution: summary[1].querySelector('span').text.parseSignedInt(),
      totalProfitLoss: summary[2].querySelector('span').text.parseSignedInt(),
      roi: summary[3].querySelector('span').text.parseSignedDouble(),
      date: DateFormat('照会日時：　yyyy/MM/dd HH:mm').parse(date.text),
      details: [
        for (final detail in detailBodies)
          NissayTotalDetailsModel(
            operationType: detail[0].text,
            productName: detail[1].text.trim(),
            totalAsset: detail[2].text.parseSignedInt(),
            profitLoss: detail[3].text.parseSignedInt(),
            assetRatio: detail[4].text.parseSignedDouble(),
          ),
      ],
    );
  }

  Future<NissayCurrentPremiumModel> fetchCurrentPremium() async {
    final document = await fetch('/dmckanyusha/transactions/ck1._V300100_ck100021');
    final parser = HtmlElementParser.fromDocument(document);
    final (String planName, DateTime lastLogin) = await parseHead(parser);

    final summary = parser.querySelectorAll('.tableWrapper tr>td', length: 2);
    final date = parser.querySelector('.lineNotes01');

    final detailRows = parser.querySelectorAll('.clrStyle01 tr').map((row) => row.querySelectorAll('td')).toList();
    final detailBodies = detailRows.sublist(1, detailRows.length - 1);

    return NissayCurrentPremiumModel(
      planName: planName,
      lastLogin: lastLogin,
      totalContribution: summary[0].querySelector('span').text.parseSignedInt(),
      contributionDate: DateFormat('yyyy年MM月dd日').parse(summary[1].text),
      date: DateFormat('照会日時：　yyyy/MM/dd HH:mm').parse(date.text),
      details: [
        for (final detail in detailBodies)
          NissayPremiumDetailsModel(
            operationType: detail[0].text,
            productName: detail[1].text.trim(),
            contributionRatio: detail[4].text.parseSignedDouble(),
          ),
      ],
    );
  }

  Future<NissayHistoryAssetsModel> fetchHistoryAssets() async {
    final document = await fetch('/dmckanyusha/transactions/ck1._V300100_ck100022');
    final parser = HtmlElementParser.fromDocument(document);
    final (String planName, DateTime lastLogin) = await parseHead(parser);

    final detailRows = parser.querySelectorAll('.clrStyle01.jissekiTable tr').toList();
    final detailBodies = detailRows.sublist(1).map((row) => row.querySelectorAll('th, td'));

    return NissayHistoryAssetsModel(
      planName: planName,
      lastLogin: lastLogin,
      history: [
        for (final history in detailBodies)
          NissayHistoryAssetsDetailModel(
            date: DateFormat('yyyy年M月末').parse(history[0].text),
            totalAsset: history[1].text.parseSignedInt(),
            totalContribution: history[2].text.parseSignedInt(),
            totalProfitLoss: history[3].text.parseSignedInt(),
          ),
      ],
    );
  }
}

extension on Map<String, String> {
  String toFormBody() => Uri(queryParameters: this).query;
}
