import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  String hint;
  bool secured;
  String inserted;
  CustomTextField({this.hint, this.secured, this.inserted});
  @override
  CustomTextFieldState createState() => CustomTextFieldState();

}

class CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        onChanged :(val){
          setState(() => widget.inserted = val);
        },
        obscureText: widget.secured,
        cursorColor: Colors.white,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
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
            hintText: widget.hint,
            hintStyle: TextStyle(
                fontSize: 18,
                letterSpacing: 1.5,
                color: Colors.white70,
                fontWeight: FontWeight.w700),
            filled: true,
            fillColor: Colors.white.withOpacity(.3),
            focusColor: Colors.transparent),
      ),
    );
  }
}
