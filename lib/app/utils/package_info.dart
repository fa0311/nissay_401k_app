import 'package:package_info_plus/package_info_plus.dart';
import 'package:pub_semver/pub_semver.dart';

extension PackageInfoExtension on PackageInfo {
  String get versionLabel => '$version+$buildNumber';
  String get packageLine => '$appName $versionLabel';
  Version get releaseVersion => Version.parse(versionLabel);
}
