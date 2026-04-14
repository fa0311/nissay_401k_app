import 'package:flutter/material.dart';
import 'package:nissay_401k/app/utils/scaffold_messenger.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher {
  factory UrlLauncher.of(BuildContext context) => UrlLauncher._(context);
  UrlLauncher._(this.context);
  final BuildContext context;

  Future<void> safeLaunch(Uri url) async {
    final launched = await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    );
    if (!launched && context.mounted) {
      ScaffoldMessenger.of(context).showMessage('URLを開くことができませんでした');
    }
  }
}
