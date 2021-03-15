import 'package:flutter/material.dart';
import 'package:foodrecipeapp/services/auth.dart';
import 'package:foodrecipeapp/widgets/recipe_widget.dart';


class MainScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainScreen> {
  final AuthService _auth = AuthService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        actions: <Widget>[
          FlatButton.icon(
            padding: const EdgeInsets.all(0.0),
            onPressed: () async {
              dynamic result = await _auth.logOut();
              Navigator.pushNamed(context, 'LoginScreen');
            },
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: Text(
              'logout',
              style: TextStyle(color: Colors.white),
            ),
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            onSelected: (newValue) {
              // add this property
              if (newValue == 0) {
                Navigator.pushNamed(context, 'ProfileScreen');
              } else if (newValue == 1) {
                Navigator.pushNamed(context, 'AboutUsScreen');
              } else if (newValue == 2) {
                Navigator.pushNamed(context, 'ContactUsScreen');
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("My Account"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("About Us"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Contact Us"),
                value: 2,
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            RecipeList(),
          ],
        ),
      ),
    );
  }
}


