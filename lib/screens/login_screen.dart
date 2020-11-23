import 'package:flutter/material.dart';
import './signup_screen.dart';

class LogIn extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to first screen when tapped.
            Navigator.pushNamed(context,"/SignUp");
          },
          child: Text('Go to signup!'),
        ),
      ),
    );
  }
}
