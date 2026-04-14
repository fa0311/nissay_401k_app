import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nissay_401k/app/pages/user/widgets/user_account_card.dart';
import 'package:nissay_401k/app/pages/user/widgets/user_info_action_card.dart';
import 'package:nissay_401k/app/pages/user/widgets/user_session_card.dart';
import 'package:nissay_401k/app/providers/nissay_dashboard_provider.dart';
import 'package:nissay_401k/app/ui/components/app_section_header.dart';
import 'package:nissay_401k/app/ui/components/app_status_card.dart';
import 'package:nissay_401k/app/ui/layout/app_page_scaffold.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(nissayDashboardProvider);

    return AppPageScaffold(
      appBar: const AppPageAppBar(title: 'User'),
      body: Column(
        children: [
          const AppSectionHeader(
            eyebrow: 'ACCOUNT',
            title: 'アカウント',
          ),
          const SizedBox(height: 14),
          switch (dashboard) {
            AsyncData(:final value) => UserAccountCard(data: value),
            AsyncError() => const AppStatusCard(
              title: 'ユーザー情報の取得に失敗しました',
              message: '少し時間をおいてから再読み込みしてください。',
            ),
            AsyncLoading() => const AppPageLoading(
              title: 'ユーザー情報を読み込んでいます',
              message: 'アカウント情報を取得しています。',
            ),
          },
          const SizedBox(height: 32),
          const AppSectionHeader(
            eyebrow: 'SESSION',
            title: 'セッション',
          ),
          const SizedBox(height: 14),
          const UserSessionCard(),
          const SizedBox(height: 32),
          const AppSectionHeader(
            eyebrow: 'APP',
            title: '情報',
          ),
          const SizedBox(height: 14),
          const UserInfoActionCard(),
        ],
      ),
    );
  }
}
