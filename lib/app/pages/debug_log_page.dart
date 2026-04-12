import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/pages/dashboard/dashboard_style.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

class DebugLogPage extends ConsumerWidget {
  const DebugLogPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.watch(loggerProvider);

    return TalkerScreen(
      talker: logger,
      appBarTitle: 'デバッグログ',
      appBarLeading: IconButton(
        onPressed: () => Navigator.of(context).maybePop(),
        icon: const Icon(Icons.arrow_back_rounded),
        color: DashboardPalette.ink,
      ),
      isLogsExpanded: false,
      theme: const TalkerScreenTheme(
        backgroundColor: DashboardPalette.background,
        textColor: DashboardPalette.ink,
        cardColor: Colors.white,
        logColors: {
          TalkerKey.info: DashboardPalette.sky,
          TalkerKey.warning: DashboardPalette.gold,
          TalkerKey.error: DashboardPalette.coral,
          TalkerKey.exception: DashboardPalette.coral,
          TalkerKey.route: DashboardPalette.teal,
          TalkerKey.debug: DashboardPalette.navy,
        },
      ),
    );
  }
}
