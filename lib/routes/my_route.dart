import 'package:fitnes/screens/sign/sign_in.dart';
import 'package:fitnes/screens/sign/sign_up.dart';
import 'package:fitnes/screens/welcome_screen/welcome.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const WelcomePage());
      case '/sign_in':
        return MaterialPageRoute(builder: (context) => const SignInPage());
      case '/sign_up':
        return MaterialPageRoute(builder: (context) => const SignUpPage());
    }
  }
}
