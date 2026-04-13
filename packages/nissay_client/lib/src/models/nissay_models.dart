import 'package:freezed_annotation/freezed_annotation.dart';

part 'nissay_models.freezed.dart';

// 共通ヘッダー
@freezed
abstract class NissayHeader with _$NissayHeader {
  const factory NissayHeader({
    // 加入者名
    required String name,
  }) = _NissayHeader;
}

// 現在の資産
@freezed
abstract class NissayCurrentAssets with _$NissayCurrentAssets {
  const factory NissayCurrentAssets({
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
    // 現在保有している商品の内訳
    required List<NissayCurrentAssetHolding> holdings,
  }) = _NissayCurrentAssets;
}

@freezed
abstract class NissayCurrentAssetHolding with _$NissayCurrentAssetHolding {
  const factory NissayCurrentAssetHolding({
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
  }) = _NissayCurrentAssetHolding;
}

// 掛金
@freezed
abstract class NissayContribution with _$NissayContribution {
  const factory NissayContribution({
    // プラン名
    required String planName,
    // 前回ログイン日時
    required DateTime lastLogin,
    // 次回拠出予定の掛金額
    required int contributionAmount,
    // 次回拠出日
    required DateTime contributionDate,
    // 照会日時
    required DateTime date,
    // 掛金の配分内訳
    required List<NissayContributionAllocation> allocations,
  }) = _NissayContribution;
}

@freezed
abstract class NissayContributionAllocation with _$NissayContributionAllocation {
  const factory NissayContributionAllocation({
    // 運用タイプ
    required String operationType,
    // 商品名
    required String productName,
    // 運用割合
    required double contributionRatio,
  }) = _NissayContributionAllocation;
}

// これまでの資産
@freezed
abstract class NissayHistoricalAssets with _$NissayHistoricalAssets {
  const factory NissayHistoricalAssets({
    // プラン名
    required String planName,
    // 前回ログイン日時
    required DateTime lastLogin,
    // 月末時点の資産推移
    required List<NissayHistoricalAssetEntry> entries,
  }) = _NissayHistoricalAssets;
}

@freezed
abstract class NissayHistoricalAssetEntry with _$NissayHistoricalAssetEntry {
  const factory NissayHistoricalAssetEntry({
    // 年月
    required DateTime date,
    // 総資産評価額
    required int totalAsset,
    // 拠出金額累計
    required int totalContribution,
    // 評価損益
    required int totalProfitLoss,
  }) = _NissayHistoricalAssetEntry;
}

enum NissayOperationType {
  deposit('預金(元本確保型)', 0xFF3c78b4),
  insurance('保険(元本確保型)', 0xFF6ee1fe),
  domesticBond('国内債券型', 0xFF6ebe5b),
  foreignBond('外国債券型', 0xFFfae647),
  domesticStock('国内株式型', 0xFFff8755),
  foreignStock('外国株式型', 0xFF82ddb4),
  balance('バランス型', 0xFFb48c4f),
  pending('処理待機資金', 0xFFebebeb)
  ;

  const NissayOperationType(this.label, this.color);

  final String label;
  final int color;
}
