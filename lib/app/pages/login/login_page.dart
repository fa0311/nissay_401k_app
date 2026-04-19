import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';
import 'package:nissay_401k/app/pages/login/widgets/login_form_card.dart';
import 'package:nissay_401k/app/providers/auth.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/ui/components/app_logo.dart';
import 'package:nissay_401k/app/ui/components/app_release_notice.dart';
import 'package:nissay_401k/app/ui/components/app_surface_card.dart';
import 'package:nissay_401k/app/ui/layout/app_page_scaffold.dart';
import 'package:nissay_401k/app/utils/scaffold_messenger.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authStorageProvider).value;
    final userIdController = useTextEditingController(text: auth?.userId ?? '');
    final passwordController = useTextEditingController(text: auth?.password ?? '');

    useEffect(
      () {
        final error = ref.read(nissaySessionCheckProvider);
        if (error case AsyncError(:final error)) {
          if (auth != null) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showMessage('セッションの確認に失敗しました: $error');
              }
            });
          }
        }
        return null;
      },
    );

    return AppPageScaffold(
      body: Column(
        children: [
          const AppLogo(),
          const AppReleaseNotice(),
          AppSurfaceCard(
            child: LoginFormCard(
              userIdController: userIdController,
              passwordController: passwordController,
              onSubmit: () async {
                try {
                  await ref
                      .read(nissaySessionProvider.notifier)
                      .save(
                        userId: userIdController.text,
                        password: passwordController.text,
                      );

                  return OnCompleted.keep;
                } on Exception catch (error) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showMessage('ログインに失敗しました: $error');
                  }
                  return OnCompleted.release;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
