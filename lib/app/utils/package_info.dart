import 'package:package_info_plus/package_info_plus.dart';

extension PackageInfoExtension on PackageInfo {
  String get versionLabel => '$version+$buildNumber';
  String get packageLine => '$appName $versionLabel';
}
