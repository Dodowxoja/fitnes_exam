import 'dart:async';
import 'package:fitnes/core/constants/const.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign_in'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            ColorConst.kPColor1,
            ColorConst.kPColor2,
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Fitness', style: TextStyle(fontSize: 30)),
                Text('X', style: TextStyle(color: Colors.white, fontSize: 50)),
              ],
            ),
            const Text(
              'Everybody Can Train',
              style: TextStyle(
                color: Color(0xFF7B6F72),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
