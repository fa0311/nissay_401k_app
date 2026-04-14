import 'package:flutter/material.dart';

extension EdgeInsetsExtension on EdgeInsets {
  EdgeInsets safeArea(
    BuildContext context, {
    bool bottom = false,
    bool top = false,
    bool left = false,
    bool right = false,
  }) {
    final padding = MediaQuery.paddingOf(context);
    return EdgeInsets.fromLTRB(
      left ? padding.left + this.left : this.left,
      top ? padding.top + this.top : this.top,
      right ? padding.right + this.right : this.right,
      bottom ? padding.bottom + this.bottom : this.bottom,
    );
  }
}
