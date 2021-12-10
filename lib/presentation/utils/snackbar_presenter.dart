import 'package:flutter/material.dart';

class SnackBarPresenter {
  void showSnackbarWithMessage(
    BuildContext context, {
    String message = '',
    Color backgroundColor = Colors.blue,
    Color textColor = Colors.white,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            color: textColor,
          ),
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }

  void showCustomSnackbar(
    BuildContext context, {
    SnackBar child = const SnackBar(
      content: SizedBox(),
    ),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(child);
  }
}
