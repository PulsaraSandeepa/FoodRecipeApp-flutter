import 'package:flutter/material.dart';
import './screens/aboutus_screen.dart';
import 'screens/contactus_screen.dart';
import './screens/login_screen.dart';
import './screens/signup_screen.dart';
import './screens/profile_screen.dart';
import './screens/main_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/LogIn':
        return MaterialPageRoute(builder: (_) => LogIn());
      case '/SignUp':
        return MaterialPageRoute(builder: (_) => SignUp());
      case '/Main':
        return MaterialPageRoute(builder: (_) => MainScreen());
      case '/Profile':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/ContactUs':
        return MaterialPageRoute(builder: (_) => ContactUs());
      case '/AboutUs':
        return MaterialPageRoute(builder: (_) => AboutUs());
    }
  }
}



