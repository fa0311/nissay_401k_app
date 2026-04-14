import 'package:flutter/material.dart';
import 'package:nissay_401k/app/ui/components/app_logo.dart';
import 'package:nissay_401k/app/ui/layout/app_page_scaffold.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppPageScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppLogo(),
          AppPageLoading(
            title: 'Nissay 401kへようこそ',
            message: 'データを読み込んでいます。',
          ),
        ],
      ),
    );
  }
}
