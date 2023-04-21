# state_management

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## StatefulWidget

- メリット
  - 実装がシンプルなので、複雑な画面構成でなければ、分かりやすく実装できる。
- デメリット
  - 状態を渡すために、コンストラクタで渡す必要があり、画面が複雑だと、管理が難しくなる。

## InheritedWidget

- メリット
  - StatefulWidgetより、状態へのアクセスが簡単になる。（コンストラクタを使わないで状態を渡せる）
- デメリット
  - コード量が多くなる。
  - 状態、処理、見た目を1つのクラスに記述する必要がある。
