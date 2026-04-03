import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';

part 'nissay_login_service.freezed.dart';

class NissayRepository {
  NissayRepository({required Dio dio}) : _dio = dio;

  final Dio _dio;

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
          'referer':
              '${_dio.options.baseUrl}/dmckanyusha/salsa_open/auth/extra/Login_ip.jsp',
        },
      ),
    );
    final loginUri = login.realUri.path;
    if (loginUri != '/dmckanyusha/transactions/menu_init') {
      throw Exception('Login failed');
    }

    final menuInit = await _dio.post<String>(
      '/dmckanyusha/transactions/ck1._V300100_ck100041',
      data: _buildFormBody({'NEED_SAVE': '1'}),
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'referer':
              '${_dio.options.baseUrl}/dmckanyusha/transactions/menu_init',
        },
      ),
    );
    final menuInitUri = menuInit.realUri.path;
    if (menuInitUri != '/dmckanyusha/transactions/ck1._V300100_ck100041') {
      throw Exception('Menu init failed');
    }
  }

  Future<NissayDataModel> data() async {
    final data = await _dio.post<String>(
      '/dmckanyusha/transactions/ck1._V300100_ck100020',

      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {
          'referer':
              '${_dio.options.baseUrl}/dmckanyusha/transactions/ck1._V300100_ck100041',
        },
      ),
    );
    final document = parse(data.data);
    final table = document.querySelectorAll(
      'div#presentAsset .tableWrapper tr>td>span',
    );
    return NissayDataModel(
      totalAsset: intPasrse(
        table[0].text,
      ),
      totalContribution: intPasrse(
        table[1].text,
      ),
      totalProfitLoss: intPasrse(
        table[2].text,
      ),
      roi: doubleParse(
        table[3].text,
      ),
    );
  }

  String _buildFormBody(Map<String, String> parameters) {
    return Uri(queryParameters: parameters).query;
  }
}

String elementText(Element? element, String name) {
  if (element == null) {
    throw Exception('$name not found');
  }
  return element.text;
}

int intPasrse(String s) {
  if (s[0] == '▲') {
    return -int.parse(s.substring(1).replaceAll(',', ''));
  } else {
    return int.parse(s.replaceAll(',', ''));
  }
}

double doubleParse(String s) {
  if (s[0] == '▲') {
    return -double.parse(s.substring(1).replaceAll(',', ''));
  } else {
    return double.parse(s.replaceAll(',', ''));
  }
}

@freezed
abstract class NissayDataModel with _$NissayDataModel {
  factory NissayDataModel({
    // 総資産評価額
    required int totalAsset,
    // 拠出金額累計
    required int totalContribution,
    // 評価損益
    required int totalProfitLoss,
    // 利回り
    required double roi,
  }) = _NissayDataModel;
}
