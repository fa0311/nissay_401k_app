import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';
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
        color: AppPalette.ink,
      ),
      isLogsExpanded: false,
      theme: const TalkerScreenTheme(
        backgroundColor: AppPalette.background,
        textColor: AppPalette.ink,
        cardColor: Colors.white,
        logColors: {
          TalkerKey.info: AppPalette.sky,
          TalkerKey.warning: AppPalette.gold,
          TalkerKey.error: AppPalette.coral,
          TalkerKey.exception: AppPalette.coral,
          TalkerKey.route: AppPalette.teal,
          TalkerKey.debug: AppPalette.navy,
        },
      ),
    );
  }
}
