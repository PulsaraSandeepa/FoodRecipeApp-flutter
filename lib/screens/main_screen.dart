import 'package:flutter/material.dart';
import 'package:foodrecipeapp/widgets/card_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainScreen'),
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.settings),
            onSelected: (newValue) { // add this property
              if (newValue == 0) {
                Navigator.pushNamed(context,'/AboutUs');
              }else if(newValue == 1){
                Navigator.pushNamed(context,'/ContactUs');
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("About Us"),
                value: 0,
              ),
              PopupMenuItem(
                child: Text("Contact Us"),
                value: 1,
              ),
            ],
          )
        ],
      ),
      body: Container(
//        decoration: BoxDecoration(
//          gradient: LinearGradient(
//              colors: [Colors.blueAccent, Colors.blue],
//              begin: Alignment.bottomCenter,
//              end: Alignment.topCenter),
//          image: DecorationImage(
//              image: AssetImage('images/login_page.png'), fit: BoxFit.cover),
//        ),
        child: SafeArea(
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(10),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CardWidget(
                        title: "ffggfgg",
                        subtitle: "gfgfggfg",
                        image: 'images/fried-rice.jpg'),
                    CardWidget(
                        title: "ffggfgg",
                        subtitle: "gfgfggfg",
                        image: 'images/fried-rice.jpg'),
                    CardWidget(
                        title: "ffggfgg",
                        subtitle: "gfgfggfg",
                        image: 'images/fried-rice.jpg'),
                    CardWidget(
                        title: "ffggfgg",
                        subtitle: "gfgfggfg",
                        image: 'images/fried-rice.jpg'),
                    CardWidget(
                        title: "ffggfgg",
                        subtitle: "gfgfggfg",
                        image: 'images/fried-rice.jpg'),
                  ],
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}