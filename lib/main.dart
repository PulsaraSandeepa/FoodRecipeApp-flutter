import 'package:flutter/material.dart';
import 'package:foodrecipeapp/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/LogIn',
      onGenerateRoute: RouteGenerator.generateRoute,
      // home: Splash(),
    );
  }
}
