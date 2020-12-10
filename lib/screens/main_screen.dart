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
