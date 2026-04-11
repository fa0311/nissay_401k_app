import 'package:freezed_annotation/freezed_annotation.dart';

part 'nissay_models.freezed.dart';

@freezed
abstract class NissayCurrentAssetsModel with _$NissayCurrentAssetsModel {
  const factory NissayCurrentAssetsModel({
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
abstract class NissayTotalDetailsSumModel with _$NissayTotalDetailsSumModel {
  const factory NissayTotalDetailsSumModel({
    // 総資産評価額
    required int totalAsset,
    // 評価損益
    required int profitLoss,
    // 資産比率
    required double assetRatio,
  }) = _NissayTotalDetailsSumModel;
}
