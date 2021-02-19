import 'package:flutter/material.dart';
import 'package:foodrecipeapp/services/auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey <FormState>();

  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String error ='';

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
            key:_formKey,
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
                  validator: (val) => val.isEmpty ? 'Enter first name':null,
                  onChanged: (val)=>{
                    setState(()=> firstName = val),
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: "First Name",
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
                height: 10,
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
                  validator: (val) => val.isEmpty ? 'Enter last name':null,
                  onChanged: (val)=>{
                  setState(()=> lastName = val),
                },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: "Last Name",
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
                height: 10,
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
                  validator: (val) => val.isEmpty ? 'Enter email':null,
                  onChanged: (val)=>{
                    setState(()=> email = val),
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
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
                height: 10,
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
                  validator: (val) => val.length <6 ? 'Password must me at least 6 characters long':null,
                  onChanged: (val)=>{
                    setState(()=> password = val),
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
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
                height: 10,
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
                  validator: (val) => val != password ? 'Passwords must be matched':null,
                  onChanged: (val)=>{
                    setState(()=> confirmPassword = val),
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.transparent)),
                      hintText: "Confirm Password",
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
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: ButtonTheme(
                  minWidth: MediaQuery.of(context).size.width,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () async {
                      if(_formKey.currentState.validate()){
                      dynamic result = await _auth.registerWithEmailAndPassword(email, password, firstName,lastName);
                      if(result == null){
                        setState(() => error = 'please supply a valid email');
                      }else{
                        Navigator.pushNamed(context, 'MainScreen');
                      }
                      }
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
              SizedBox(height:12.0),
              Text(
                error,
                style:TextStyle(color:Colors.red,fontSize:14.0),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
