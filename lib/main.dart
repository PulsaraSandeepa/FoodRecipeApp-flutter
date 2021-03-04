import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodrecipeapp/screens/aboutus_screen.dart';
import 'package:foodrecipeapp/screens/contactus_screen.dart';
import 'file:///D:/Programs/AndroidStudioProjects/food_recipe_app/lib/screens/authenticate/login_screen.dart';
import 'package:foodrecipeapp/screens/main_screen.dart';
import 'package:foodrecipeapp/screens/profile_screen.dart';
import 'package:foodrecipeapp/screens/recipe_view_screen.dart';
import 'file:///D:/Programs/AndroidStudioProjects/food_recipe_app/lib/screens/authenticate/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      initialRoute: '/LogIn',
//      onGenerateRoute: RouteGenerator.generateRoute,
//LogIn()
        home: LogIn(),
        routes: {
          'LoginScreen': (context) => LogIn(),
          'ContactUsScreen': (context) => ContactUs(),
          'AboutUsScreen': (context) => AboutUs(),
          'MainScreen': (context) => MainScreen(),
          'ProfileScreen': (context) => Profile(),
          'SignUpScreen': (context) => SignUp(),
          'RecipeViewScreen': (context) => RecipeViewScreen(),
        }
        // home: Splash(),
        );
  }
}
