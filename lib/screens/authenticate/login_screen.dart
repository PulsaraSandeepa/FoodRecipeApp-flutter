import 'package:flutter/material.dart';
import 'package:foodrecipeapp/services/auth.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey <FormState>();

  String email = '';
  String password = '';

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
                image: AssetImage('images/login_page.png'), fit: BoxFit.cover),
          ),
          child: Center(
            child: Form(
              key:_formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'Sign In With Your Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 65,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      obscureText: false,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                      validator: (val) => val.isEmpty ? 'Enter email' : null,
                      onChanged: (val)=>{
                        setState(()=> email = val),
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors
                                  .transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors
                                  .transparent)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors
                                  .transparent)),
                          hintText: "Email",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1.5,
                              color: Colors.white70,
                              fontWeight: FontWeight.w700),
                          filled: true,
                          fillColor: Colors.white.withOpacity(.3),
                          focusColor: Colors.transparent),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.white,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                      validator: (val) => val.isEmpty ? 'Enter password' : null,
                      onChanged: (val)=>{
                        setState(()=> password = val),
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors
                                  .transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors
                                  .transparent)),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors
                                  .transparent)),
                          hintText: "Password",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              letterSpacing: 1.5,
                              color: Colors.white70,
                              fontWeight: FontWeight.w700),
                          filled: true,
                          fillColor: Colors.white.withOpacity(.3),
                          focusColor: Colors.transparent),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: ButtonTheme(
                      minWidth: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: 55,
                      child: RaisedButton(
                        onPressed: () async {
                          if (_formKey.currentState.validate()) {
                            Navigator.pushNamed(context, 'MainScreen');
                            print("email = " + email);
                            print("password = " + password);
                          }
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        child: Text(
                          'Log In',
                          style: TextStyle(color: Colors.blueGrey,
                              fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text(
                      'Or',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(image: AssetImage('images/facebook-logo.png')),
                        Image(image: AssetImage('images/google-logo.png')),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Don\'t Have an Account?',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'SignUpScreen');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                ],
              ),),
          ),
        ));
  }
}

