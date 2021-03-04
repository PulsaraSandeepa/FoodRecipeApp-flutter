import 'package:flutter/material.dart';
import 'package:foodrecipeapp/screens/authenticate/signup_screen.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SignUp(),
    );
  }
}
