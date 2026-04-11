// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nissay_dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(nissayDashboard)
final nissayDashboardProvider = NissayDashboardProvider._();

final class NissayDashboardProvider
    extends
        $FunctionalProvider<
          AsyncValue<NissayDashboard>,
          NissayDashboard,
          FutureOr<NissayDashboard>
        >
    with $FutureModifier<NissayDashboard>, $FutureProvider<NissayDashboard> {
  NissayDashboardProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'nissayDashboardProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$nissayDashboardHash();

  @$internal
  @override
  $FutureProviderElement<NissayDashboard> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NissayDashboard> create(Ref ref) {
    return nissayDashboard(ref);
  }
}

String _$nissayDashboardHash() => r'f321e63d0d061964fe914aaee7d5ad6b8fad6830';
