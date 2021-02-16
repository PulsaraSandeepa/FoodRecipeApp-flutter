import 'package:flutter/material.dart';
import 'package:foodrecipeapp/screens/main_screen.dart';
import 'package:foodrecipeapp/services/auth.dart';
import 'package:foodrecipeapp/widgets/text_field.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();

  String firstName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.blue],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
            image: DecorationImage(
                image: AssetImage('images/login_page.png'), fit: BoxFit.cover)),
        child: Center(
          child: Form(
              child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 40),
                  Text(
                    'Create an Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
              CustomTextField(
                hint: 'First Name',
                secured: false,
                inserted: firstName
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Last Name',
                secured: false,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Email',
                secured: false,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Contact No:',
                secured: false,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Password',
                secured: true,
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                hint: 'Confirm Password',
                secured: true,
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () async {
                      Navigator.pushNamed(context, 'MainScreen');
                      print(firstName);
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 22),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
