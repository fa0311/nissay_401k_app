import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nissay_401k/app/hooks/single_action_guard.dart';
import 'package:nissay_401k/app/pages/login/widgets/login_submit_button.dart';
import 'package:nissay_401k/app/ui/theme/app_palette.dart';

class LoginFormCard extends HookWidget {
  const LoginFormCard({
    required this.userIdController,
    required this.passwordController,
    required this.onSubmit,
    super.key,
  });

  final TextEditingController userIdController;
  final TextEditingController passwordController;
  final Future<OnCompleted> Function() onSubmit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final obscure = useState(true);

    return AutofillGroup(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'サインイン',
            style: theme.textTheme.titleLarge?.copyWith(
              color: AppPalette.ink,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: userIdController,
            decoration: const InputDecoration(
              labelText: 'User ID',
              prefixIcon: Icon(Icons.badge_outlined),
            ),
            textInputAction: TextInputAction.next,
            autofillHints: const [AutofillHints.username],
          ),
          const SizedBox(height: 14),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              prefixIcon: const Icon(Icons.lock_outline_rounded),
              suffixIcon: IconButton(
                icon: Icon(obscure.value ? Icons.visibility_outlined : Icons.visibility_off_outlined),
                onPressed: () => obscure.value = !obscure.value,
              ),
            ),
            obscureText: obscure.value,
            textInputAction: TextInputAction.done,
            autofillHints: const [AutofillHints.password],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: LoginSubmitButton(
              label: 'ログイン',
              onPressed: onSubmit,
            ),
          ),
        ],
      ),
    );
  }
}
