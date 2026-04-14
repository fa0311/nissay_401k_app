import 'package:flutter/material.dart';

extension ScaffoldMessengerExtension on ScaffoldMessengerState {
  void showMessage(String message) {
    showSnackBar(SnackBar(content: Text(message)));
  }
}
