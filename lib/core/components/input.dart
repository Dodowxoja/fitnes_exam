import 'package:flutter/material.dart';

class Input1Comp {
  static inputDecoration({required String hindText, Icon? prefixIcon}) {
    return InputDecoration(
      hintText: hindText,
      prefixIcon: prefixIcon,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
    );
  }
}

class Input2Comp {
  static inputDecoration(
      {required String hindText, IconButton? suffixIcon, Icon? prefixIcon}) {
    return InputDecoration(
      hintText: hindText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
    );
  }
}
