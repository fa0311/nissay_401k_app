import 'package:freezed_annotation/freezed_annotation.dart';

part 'nissay_dashboard_model.freezed.dart';

@freezed
abstract class NissayDashboard with _$NissayDashboard {
  const factory NissayDashboard({
    // プラン名
    required String planName,
    // 前回ログイン日時
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
    // 次回拠出予定の掛金額
    required int contributionAmount,
    // 次回拠出日
    required DateTime contributionDate,
    // 保有商品の内訳
    required List<NissayDashboardHolding> holdings,
    // 資産推移
    required List<NissayDashboardHistoryEntry> historyEntries,
  }) = _NissayDashboard;
}

@freezed
abstract class NissayDashboardHolding with _$NissayDashboardHolding {
  const factory NissayDashboardHolding({
    // 運用タイプ
    required String operationType,
    // 商品名
    required String productName,
    // 資産評価額
    required int totalAsset,
    // 評価損益
    required int profitLoss,
    // 資産比率
    required double assetRatio,
    // 掛金の運用割合
    required double operationRatio,
  }) = _NissayDashboardHolding;
}

@freezed
abstract class NissayDashboardHistoryEntry with _$NissayDashboardHistoryEntry {
  const factory NissayDashboardHistoryEntry({
    // 年月
    required DateTime date,
    // 総資産評価額
    required int totalAsset,
    // 拠出金額累計
    required int totalContribution,
    // 評価損益
    required int totalProfitLoss,
  }) = _NissayDashboardHistoryEntry;
}
