import 'package:freezed_annotation/freezed_annotation.dart';

part 'nissay_dashboard_model.freezed.dart';

@freezed
abstract class NissayDashboard with _$NissayDashboard {
  const factory NissayDashboard({
    // 加入者名
    required String userName,
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
    // 内訳
    required List<NissayDashboardHolding> holdings,
    // 資産推移
    required List<NissayDashboardHistoryEntry> historyEntries,
  }) = _NissayDashboard;

  factory NissayDashboard.mock() {
    return NissayDashboard(
      userName: '田所浩二',
      planName: 'ニッセイ企業型確定拠出年金プラン',
      lastLogin: DateTime(2026, 4, 11, 22, 12),
      totalAsset: 3480000,
      totalContribution: 2900000,
      totalProfitLoss: 580000,
      roi: 20,
      date: DateTime(2026, 4, 12, 9, 30),
      contributionAmount: 23000,
      contributionDate: DateTime(2026, 5, 26),
      holdings: const [
        NissayDashboardHolding(
          operationType: '外国株式型',
          productName: 'DCニッセイ外国株式インデックス',
          totalAsset: 1620000,
          profitLoss: 412000,
          assetRatio: 46.6,
          nextContributionRatio: 45,
        ),
        NissayDashboardHolding(
          operationType: '国内株式型',
          productName: 'DCニッセイTOPIXインデックス',
          totalAsset: 960000,
          profitLoss: 128000,
          assetRatio: 27.6,
          nextContributionRatio: 25,
        ),
        NissayDashboardHolding(
          operationType: 'バランス型',
          productName: 'DCバランスセレクト50',
          totalAsset: 610000,
          profitLoss: 46000,
          assetRatio: 17.5,
          nextContributionRatio: 20,
        ),
        NissayDashboardHolding(
          operationType: '元本確保型',
          productName: 'ニッセイ利率保証年金',
          totalAsset: 290000,
          profitLoss: -6000,
          assetRatio: 8.3,
          nextContributionRatio: 10,
        ),
      ],
      historyEntries: [
        NissayDashboardHistoryEntry(
          date: DateTime(2025, 11),
          totalAsset: 3120000,
          totalContribution: 2785000,
          totalProfitLoss: 335000,
        ),
        NissayDashboardHistoryEntry(
          date: DateTime(2025, 12),
          totalAsset: 3190000,
          totalContribution: 2808000,
          totalProfitLoss: 382000,
        ),
        NissayDashboardHistoryEntry(
          date: DateTime(2026),
          totalAsset: 3260000,
          totalContribution: 2831000,
          totalProfitLoss: 429000,
        ),
        NissayDashboardHistoryEntry(
          date: DateTime(2026, 2),
          totalAsset: 3335000,
          totalContribution: 2854000,
          totalProfitLoss: 481000,
        ),
        NissayDashboardHistoryEntry(
          date: DateTime(2026, 3),
          totalAsset: 3412000,
          totalContribution: 2877000,
          totalProfitLoss: 535000,
        ),
        NissayDashboardHistoryEntry(
          date: DateTime(2026, 4),
          totalAsset: 3480000,
          totalContribution: 2900000,
          totalProfitLoss: 580000,
        ),
      ],
    );
  }
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
    // 次回掛金の運用割合
    required double? nextContributionRatio,
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
