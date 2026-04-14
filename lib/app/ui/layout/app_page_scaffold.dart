import 'package:flutter/material.dart';
import 'package:nissay_401k/app/ui/components/app_surface_card.dart';
import 'package:nissay_401k/app/ui/theme/app_gradients.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';
import 'package:nissay_401k/app/utils/edge_insets.dart';

export 'app_page_error.dart';

class AppPageScaffold extends StatelessWidget {
  const AppPageScaffold({
    required this.body,
    this.scrollable = true,
    this.appBar,
    super.key,
  });

  final Widget body;
  final bool scrollable;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: AppGradients.pageBackground,
      ),
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: AppPalette.background,
          appBar: appBar,
          body: switch (scrollable) {
            true => SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(24).safeArea(
                    context,
                    bottom: true,
                    top: appBar == null,
                    left: true,
                    right: true,
                  ),
                  child: body,
                ),
              ),
            ),
            false => body,
          },
        ),
      ),
    );
  }
}

class AppPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppPageAppBar({
    required this.title,
    super.key,
    this.actions,
    this.leading,
  });

  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AppBar(
      title: Text(
        title,
        style: theme.appBarTheme.titleTextStyle,
      ),
      actions: actions,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AppPageLoading extends StatelessWidget {
  const AppPageLoading({
    required this.title,
    this.message,
    super.key,
  });

  final String title;
  final String? message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppSurfaceCard(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            width: 32,
            height: 32,
            child: CircularProgressIndicator.adaptive(strokeWidth: 2.8),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: theme.textTheme.titleMedium?.copyWith(
              color: AppPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
          if (message case final message?) ...[
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppPalette.ink.withValues(alpha: 0.72),
                height: 1.5,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
