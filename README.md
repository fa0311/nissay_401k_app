# nissay_401k

`flutter_inappwebview` で NISSAY 401k のログイン画面を開くサンプルです。

## Setup

このプロジェクトは `mise` で Flutter を管理しています。

```bash
mise x flutter -- flutter pub get
mise x flutter -- dart run build_runner build --delete-conflicting-outputs
mise x flutter -- flutter run
```

## Riverpod / Generator

- `hooks_riverpod` と `riverpod_annotation` を使っています
- `lib/app/providers/nissay_login_provider.dart` にログインURLをハードコードしています
- `lib/app/providers/login_request_provider.dart` は `Dio` とログイン状態管理だけに絞っています
- `lib/app/interceptors/chrome_like_headers_interceptor.dart` で Chrome ライクなヘッダを `Dio` に付与しています
- `lib/app/services/nissay_login_service.dart` がそのままログイン通信を行います
- 生成ファイルは `build_runner` で更新してください
