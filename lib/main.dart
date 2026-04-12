// ignore_for_file: document_ignores, do_not_use_environment

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/models/nissay_dashboard_model.dart';
import 'package:nissay_401k/app/providers/nissay_dashboard_provider.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/router/app_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InAppWebViewController.setWebContentsDebuggingEnabled(kDebugMode);
  const mock = bool.fromEnvironment('USE_MOCK');

  runApp(
    ProviderScope(
      overrides: [
        if (mock) ...[
          nissayDashboardProvider.overrideWith((_) => NissayDashboard.mock()),
          nissaySessionCheckProvider.overrideWith((_) => null),
        ],
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
      title: 'NISSAY 401k',
      theme: ThemeData(
        useMaterial3: true,
      ),
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
