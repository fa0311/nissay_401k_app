import 'package:freezed_annotation/freezed_annotation.dart';

part 'nissay_models.freezed.dart';

@freezed
abstract class NissayHeadModel with _$NissayHeadModel {
  const factory NissayHeadModel({
    // 名前
    required String name,
  }) = _NissayHeadModel;
}

@freezed
abstract class NissayCurrentAssetsModel with _$NissayCurrentAssetsModel {
  const factory NissayCurrentAssetsModel({
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
    // 運用商品の詳細
    required List<NissayTotalDetailsModel> details,
  }) = _NissayCurrentAssetsModel;
}

@freezed
abstract class NissayTotalDetailsModel with _$NissayTotalDetailsModel {
  const factory NissayTotalDetailsModel({
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
abstract class NissayCurrentPremiumModel with _$NissayCurrentPremiumModel {
  const factory NissayCurrentPremiumModel({
    // プラン名
    required String planName,
    // 最終ログイン日時
    required DateTime lastLogin,
    // 今月の掛け金
    required int totalContribution,
    // 次の拠出日
    required DateTime contributionDate,
    // 照会日時
    required DateTime date,
    // 運用商品の詳細
    required List<NissayPremiumDetailsModel> details,
  }) = _NissayCurrentPremiumModel;
}

@freezed
abstract class NissayPremiumDetailsModel with _$NissayPremiumDetailsModel {
  const factory NissayPremiumDetailsModel({
    // 運用タイプ
    required String operationType,
    // 商品名
    required String productName,
    // 運用割合
    required double contributionRatio,
  }) = _NissayPremiumDetailsModel;
}

@freezed
abstract class NissayHistoryAssetsModel with _$NissayHistoryAssetsModel {
  const factory NissayHistoryAssetsModel({
    // プラン名
    required String planName,
    // 最終ログイン日時
    required DateTime lastLogin,
    // これまでの資産の履歴
    required List<NissayHistoryAssetsDetailModel> history,
  }) = _NissayHistoryAssetsModel;
}

@freezed
abstract class NissayHistoryAssetsDetailModel with _$NissayHistoryAssetsDetailModel {
  const factory NissayHistoryAssetsDetailModel({
    // 日付
    required DateTime date,
    // 拠出金額累計
    required int totalAsset,
    // 総資産評価額
    required int totalContribution,
    // 評価損益
    required int totalProfitLoss,
  }) = _NissayHistoryAssetsDetailModel;
}
