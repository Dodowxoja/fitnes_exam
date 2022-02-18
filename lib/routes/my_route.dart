import 'package:fitnes/screens/home/details_page.dart';
import 'package:fitnes/screens/home/my_home_page.dart';
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
      case '/home':
        return MaterialPageRoute(builder: (context) => const MyHomePage());
      case '/details':
        return MaterialPageRoute(builder: (context) => const DetailsPage());
    }
  }
}
