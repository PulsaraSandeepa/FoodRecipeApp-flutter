import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodrecipeapp/screens/aboutus_screen.dart';
import 'package:foodrecipeapp/screens/addrecipe_screen.dart';
import 'package:foodrecipeapp/screens/authenticate/login_screen.dart';
import 'package:foodrecipeapp/screens/authenticate/signup_screen.dart';
import 'package:foodrecipeapp/screens/contactus_screen.dart';
import 'package:foodrecipeapp/screens/main_screen.dart';
import 'package:foodrecipeapp/screens/profile_screen.dart';
import 'package:provider/provider.dart';
import './providers/recipes_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create :(ctx) => Recipes(),//intance of class
      child: MaterialApp(
        title: 'FoodRecipeApp',
            theme:ThemeData(
              primarySwatch: Colors.brown,
              accentColor: Colors.deepOrange,
              fontFamily: 'Lato',
            ),
            home: LogIn(),
            routes: {
              'LoginScreen': (context) => LogIn(),
              'ContactUsScreen': (context) => ContactUs(),
              'AboutUsScreen': (context) => AboutUs(),
              'MainScreen': (context) => MainScreen(),
              'ProfileScreen': (context) => Profile(),
              'SignUpScreen': (context) => SignUp(),
              //'RecipeViewScreen': (context) => RecipeViewScreen(),
              'AddRecipeScreen':(context) => AddRecipe(),
            }
            // home: Splash(),
            ),
    );
  }
}
