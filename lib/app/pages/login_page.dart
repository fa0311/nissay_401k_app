import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';
import 'package:nissay_401k/app/providers/auth.dart';
import 'package:nissay_401k/app/providers/logger.dart';
import 'package:nissay_401k/app/providers/nissay_session_provider.dart';
import 'package:nissay_401k/app/ui/future_button.dart';
import 'package:nissay_client/nissay_client.dart' as api;

class LoginPage extends HookConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logger = ref.watch(loggerProvider);
    final auth = ref.watch(authStorageProvider);
    final userIdController = useTextEditingController(text: auth.value?.userId);
    final passwordController = useTextEditingController(text: auth.value?.password);

    ref.listen(nissaySessionCheckProvider, (previous, next) {
      if (next case AsyncError(:final api.NissayException error)) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Login check failed: $error')),
          );
        }
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('NISSAY 401k Login')),
      body: _Body(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: userIdController,
              decoration: const InputDecoration(labelText: 'User ID'),
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            FutureButton(
              onPressed: () async {
                try {
                  await ref
                      .read(nissaySessionProvider.notifier)
                      .login(
                        userId: userIdController.text,
                        password: passwordController.text,
                      );

                  return OnCompleted.keep;
                } on Exception catch (e, trace) {
                  logger.error('Login failed', e, trace);

                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login failed: $e')),
                    );
                  }
                  return OnCompleted.release;
                }
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 600),
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    );
  }
}
