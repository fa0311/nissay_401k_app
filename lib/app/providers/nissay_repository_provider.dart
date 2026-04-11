import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_redirect_interceptor/dio_redirect_interceptor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nissay_401k/app/interceptors/chrome_like_headers_interceptor.dart';
import 'package:nissay_401k/app/services/nissay_models.dart';
import 'package:nissay_401k/app/services/nissay_repository.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nissay_repository_provider.freezed.dart';
part 'nissay_repository_provider.g.dart';

@riverpod
Future<CookieJar> nissayCookieJar(Ref ref) async {
  final directory = await getApplicationSupportDirectory();
  return PersistCookieJar(storage: FileStorage('${directory.path}/nissay_cookies'));
}

@riverpod
Future<NissayRepository> nissayRepository(Ref ref) async {
  final cookieJar = await ref.watch(nissayCookieJarProvider.future);
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://401k.nissay.co.jp',
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      validateStatus: (status) => status != null && status < 400,
      followRedirects: false,
    ),
  );

  dio.interceptors.add(ChromeLikeHeadersInterceptor());
  dio.interceptors.add(CookieManager(cookieJar));
  dio.interceptors.add(RedirectInterceptor(() => dio));

  return NissayRepository(dio: dio);
}

@riverpod
Future<NissayHeadModel> nissayHead(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchHead();
}

@riverpod
Future<NissayCurrentAssetsModel> nissayCurrentAssets(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchCurrentAssets();
}

@riverpod
Future<NissayCurrentPremiumModel> nissayCurrentPremium(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchCurrentPremium();
}

@riverpod
Future<NissayHistoryAssetsModel> nissayHistoryAssets(Ref ref) async {
  final repository = await ref.watch(nissayRepositoryProvider.future);
  return repository.fetchHistoryAssets();
}

@riverpod
Future<NissayModel> nissayAllAssets(Ref ref) async {
  final (head, currentAssets, currentPremium, historyAssets) = await (
    ref.watch(nissayHeadProvider.future),
    ref.watch(nissayCurrentAssetsProvider.future),
    ref.watch(nissayCurrentPremiumProvider.future),
    ref.watch(nissayHistoryAssetsProvider.future),
  ).wait;

  return NissayModel(
    planName: currentAssets.planName,
    lastLogin: currentAssets.lastLogin,
    totalAsset: currentAssets.totalAsset,
    totalContribution: currentAssets.totalContribution,
    totalProfitLoss: currentAssets.totalProfitLoss,
    roi: currentAssets.roi,
    date: currentAssets.date,
    contribution: currentPremium.totalContribution,
    contributionDate: currentPremium.contributionDate,
    details: [
      for (final detail in currentAssets.details)
        NissayDetailsModel(
          operationType: detail.operationType,
          productName: detail.productName,
          totalAsset: detail.totalAsset,
          profitLoss: detail.profitLoss,
          assetRatio: detail.assetRatio,
          operationRatio: currentPremium.details
              .firstWhere((d) => d.productName == detail.productName)
              .contributionRatio,
        ),
    ],
    history: [
      for (final history in historyAssets.history)
        NissayHistoryModel(
          date: history.date,
          totalAsset: history.totalAsset,
          totalContribution: history.totalContribution,
          totalProfitLoss: history.totalProfitLoss,
        ),
    ],
  );
}

@freezed
abstract class NissayModel with _$NissayModel {
  const factory NissayModel({
    // プラン名
    required String planName,
    // 最終ログイン日時
    required DateTime lastLogin,
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
    // 掛金額
    required int contribution,
    // 次の拠出日
    required DateTime contributionDate,
    // 運用商品の詳細
    required List<NissayDetailsModel> details,
    // これまでの資産の履歴
    required List<NissayHistoryModel> history,
  }) = _NissayModel;
}

@freezed
abstract class NissayDetailsModel with _$NissayDetailsModel {
  const factory NissayDetailsModel({
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
    // 運用比率
    required double operationRatio,
  }) = _NissayDetailsModel;
}

@freezed
abstract class NissayHistoryModel with _$NissayHistoryModel {
  const factory NissayHistoryModel({
    // 年月
    required DateTime date,
    // 総資産評価額
    required int totalAsset,
    // 拠出金額累計
    required int totalContribution,
    // 評価損益
    required int totalProfitLoss,
  }) = _NissayHistoryModel;
}
