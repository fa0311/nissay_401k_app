import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:nissay_401k/app/services/document.dart';

part 'nissay_login_service.freezed.dart';

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

  void _authThrowCheck(String path, Document document) {
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

  Future<void> login({required String userid, required String password}) async {
    await _dio.get<void>('/dmckanyusha/salsa_open/auth/extra/Login_ip.jsp');

    final login = await _dio.post<String>(
      '/dmckanyusha/transactions/login',
      data: _buildFormBody({
        'auth_key': '5',
        'LocalTestFlag': '',
        'AUTH_USERID': userid,
        'AUTH_PASSWORD': password,
      }),
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'referer': '${_dio.options.baseUrl}/dmckanyusha/salsa_open/auth/extra/Login_ip.jsp',
        },
      ),
    );

    final loginPath = login.realUri.path;
    _authThrowCheck(loginPath, parse(login.data));
    if (loginPath != '/dmckanyusha/transactions/menu_init') {
      throw NissayAuthException('Unexpected response URI: $loginPath');
    }

    final menuInit = await _dio.post<String>(
      '/dmckanyusha/transactions/ck1._V300100_ck100041',
      data: _buildFormBody({'NEED_SAVE': '1'}),
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'referer': '${_dio.options.baseUrl}/dmckanyusha/transactions/menu_init',
        },
      ),
    );
    final menuInitUri = menuInit.realUri.path;
    _authThrowCheck(menuInitUri, parse(menuInit.data));
    if (menuInitUri != '/dmckanyusha/transactions/ck1._V300100_ck100041') {
      throw NissayAuthException('Unexpected response URI: $menuInitUri');
    }
  }

  Future<NissayCurrentAssetsModel> fetchCurrentAsset() async {
    final data = await _dio.post<String>(
      '/dmckanyusha/transactions/ck1._V300100_ck100020',

      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'referer': '${_dio.options.baseUrl}/dmckanyusha/transactions/ck1._V300100_ck100041',
        },
      ),
    );

    final dataUri = data.realUri.path;
    final document = parse(data.data);
    _authThrowCheck(dataUri, document);
    if (dataUri != '/dmckanyusha/transactions/ck1._V300100_ck100020') {
      throw NissayException('Unexpected response URI: $dataUri');
    }
    final parser = ElementParser.parse(document);

    final table = parser.querySelectorAll(
      'div#presentAsset .tableWrapper tr>td>span',
      length: 4,
    );
    final date = parser.querySelector('div#presentAsset .lineNotes01');

    final details = parser
        .querySelectorAll('div#presentAsset .clrStyle01 .btmborderSolid')
        .map((e) => e.querySelectorAll('td'));
    final detailsBody = details.where((e) => e.length == 5).toList();
    final detailsSum = details.singleWhere((e) => e.length == 3);

    return NissayCurrentAssetsModel(
      totalAsset: table[0].text.intPasrse(),
      totalContribution: table[1].text.intPasrse(),
      totalProfitLoss: table[2].text.intPasrse(),
      roi: table[3].text.doubleParse(),
      date: date.text.substring(6).dateParse(),
      details: [
        for (final detail in detailsBody)
          NissayTotalDetailsModel(
            operationType: detail[0].text,
            productName: detail[1].text,
            totalAsset: detail[2].text.intPasrse(),
            profitLoss: detail[3].text.intPasrse(),
            assetRatio: detail[4].text.doubleParse(),
          ),
      ],
      detailsSum: NissayTotalDetailsSumModel(
        totalAsset: detailsSum[0].text.intPasrse(),
        profitLoss: detailsSum[1].text.intPasrse(),
        assetRatio: detailsSum[2].text.doubleParse(),
      ),
    );
  }

  String _buildFormBody(Map<String, String> parameters) {
    return Uri(queryParameters: parameters).query;
  }
}

@freezed
abstract class NissayCurrentAssetsModel with _$NissayCurrentAssetsModel {
  factory NissayCurrentAssetsModel({
    // 総資産評価額
    required int totalAsset,
    // 拠出金額累計
    required int totalContribution,
    // 評価損益
    required int totalProfitLoss,
    // 利回り
    required double roi,
    // 照会日時
    required DateTime date,
    // 運用商品の詳細
    required List<NissayTotalDetailsModel> details,
    // 運用商品の詳細の合計
    NissayTotalDetailsSumModel? detailsSum,
  }) = _NissayCurrentAssetsModel;
}

@freezed
abstract class NissayTotalDetailsModel with _$NissayTotalDetailsModel {
  factory NissayTotalDetailsModel({
    // 運用タイプ
    required String operationType,
    // 商品名
    required String productName,
    // 総資産評価額
    required int totalAsset,
    // 評価損益
    required int profitLoss,
    // 資産比率
    required double assetRatio,
  }) = _NissayTotalDetailsModel;
}

@freezed
abstract class NissayTotalDetailsSumModel with _$NissayTotalDetailsSumModel {
  factory NissayTotalDetailsSumModel({
    // 総資産評価額
    required int totalAsset,
    // 評価損益
    required int profitLoss,
    // 資産比率
    required double assetRatio,
  }) = _NissayTotalDetailsSumModel;
}
