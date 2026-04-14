import 'package:github/github.dart';
import 'package:nissay_401k/app/constants/github_links.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'github_release_provider.g.dart';

@riverpod
GitHub githubApp(Ref ref) {
  final github = GitHub();
  ref.onDispose(github.dispose);
  return github;
}

@Riverpod(keepAlive: true)
Future<Version> githubLatestVersion(Ref ref) async {
  final github = ref.watch(githubAppProvider);

  final release = await github.repositories.getLatestRelease(
    RepositorySlug(appGithubRepositoryOwner, appGithubRepositoryName),
  );
  if (release case Release(:final String tagName)) {
    return Version.parse(tagName);
  }
  throw StateError('Unexpected release data: $release');
}
