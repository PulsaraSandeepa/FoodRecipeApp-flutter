import 'package:flutter/material.dart';
import 'package:foodrecipeapp/widgets/card_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MainScreen> {

  Choice _selectedChoice = choices[0];

  void _select(Choice choice) {
    setState(() {
      _selectedChoice = choice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainScreen'),
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.map((Choice choice) {
                return PopupMenuItem<Choice>(
                    value: choice,
                    child: Text(choice.title),
                );
              }).toList();
            },
          ),
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

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'About us', icon: Icons.directions_boat),
  const Choice(title: 'Contact us', icon: Icons.directions_bus),
];