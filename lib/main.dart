// This file intentionally uses a compile-time flag to switch mock mode.
// ignore_for_file: do_not_use_environment

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/nissay_dashboard_provider.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/providers/package_info.dart';
import 'package:nissay_401k/app/router/app_router.dart';
import 'package:nissay_401k/app/ui/theme/app_theme.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:talker_flutter/talker_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const useMock = bool.fromEnvironment('USE_MOCK');
  final talker = TalkerFlutter.init(
    settings: TalkerSettings(
      maxHistoryItems: 500,
    ),
  );

  void reportError(Object error, StackTrace? stackTrace, String message) {
    if (error case final ParallelWaitError<dynamic, dynamic> parallelWaitError) {
      talker.handle(
        parallelWaitError,
        parallelWaitError.stackTrace ?? stackTrace,
        message,
      );
      talker.debug('ParallelWaitError details: ${parallelWaitError.errors}');
      return;
    }

    talker.handle(error, stackTrace, message);
  }

  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    reportError(
      details.exception,
      details.stack,
      details.context?.toDescription() ?? 'Uncaught fatal exception',
    );
  };
  PlatformDispatcher.instance.onError = (error, stackTrace) {
    reportError(error, stackTrace, 'Uncaught async exception');
    return true;
  };

  await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  final packageInfo = await PackageInfo.fromPlatform();

  runApp(
    ProviderScope(
      overrides: [
        loggerProvider.overrideWithValue(talker),
        if (useMock) ...[
          nissayDashboardProvider.overrideWith((_) => NissayDashboard.mock()),
          nissaySessionCheckProvider.overrideWithBuild((_, _) => DateTime.now()),
        ],
        packageInfoProvider.overrideWithValue(packageInfo),
      ],
      observers: [
        _AppProviderObserver(talker),
      ],
      retry: (_, _) => null,
      child: const Nissay401kApp(),
    ),
  );
}

class Nissay401kApp extends ConsumerWidget {
  const Nissay401kApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'NISSAY 401k',
      theme: buildAppTheme(),
      routerConfig: router,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],
    );
  }
}

final class _AppProviderObserver extends ProviderObserver {
  const _AppProviderObserver(this._talker);

  final Talker _talker;

  @override
  void providerDidFail(
    ProviderObserverContext context,
    Object error,
    StackTrace stackTrace,
  ) {
    _talker.error(
      'Provider failed: ${context.provider.name ?? context.provider.runtimeType}',
      error,
      stackTrace,
    );
  }
}
