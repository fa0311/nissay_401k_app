import 'package:collection/collection.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/providers/nissay_client_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nissay_dashboard_provider.g.dart';

@riverpod
Future<NissayDashboard> nissayDashboard(Ref ref) async {
  final (header, currentAssets, contribution, historicalAssets) = await (
    ref.watch(nissayHeaderProvider.future),
    ref.watch(nissayCurrentAssetsProvider.future),
    ref.watch(nissayContributionProvider.future),
    ref.watch(nissayHistoricalAssetsProvider.future),
  ).wait;

  return NissayDashboard(
    userName: header.name,
    planName: currentAssets.planName,
    lastLogin: currentAssets.lastLogin,
    totalAsset: currentAssets.totalAsset,
    totalContribution: currentAssets.totalContribution,
    totalProfitLoss: currentAssets.totalProfitLoss,
    roi: currentAssets.roi,
    date: currentAssets.date,
    contributionAmount: contribution.contributionAmount,
    contributionDate: contribution.contributionDate,
    holdings: [
      for (final holding in currentAssets.holdings)
        NissayDashboardHolding(
          operationType: holding.operationType,
          productName: holding.productName,
          totalAsset: holding.totalAsset,
          profitLoss: holding.profitLoss,
          assetRatio: holding.assetRatio,
          nextContributionRatio: contribution.allocations.firstWhereOrNull((allocation) {
            return allocation.operationType == holding.operationType && allocation.productName == holding.productName;
          })?.contributionRatio,
        ),
    ],
    historyEntries: [
      for (final entry in historicalAssets.entries)
        NissayDashboardHistoryEntry(
          date: entry.date,
          totalAsset: entry.totalAsset,
          totalContribution: entry.totalContribution,
          totalProfitLoss: entry.totalProfitLoss,
        ),
    ],
  );
}
