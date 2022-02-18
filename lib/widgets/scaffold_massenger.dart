import 'package:flutter/material.dart';

class MyMessenger {
  static showMyMessenger(String text, BuildContext context) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text(text),
          behavior: SnackBarBehavior.floating,
        ),
      );
}
