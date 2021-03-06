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

class MyText {
  static text(String type, {Color? color, double? size, FontWeight? fWeight}) {
    return Text(
      type,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fWeight,
      ),
    );
  }
}

class MyHomeAva {
  static CircleAvatar ava(String avaName) {
    return CircleAvatar(
      radius: 50,
      child: Image(
        image: AssetImage(avaName),
        fit: BoxFit.contain,
      ),
    );
  }
}
