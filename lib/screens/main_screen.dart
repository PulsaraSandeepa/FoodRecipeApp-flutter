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
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CardWidget(title: "ffggfgg", subtitle: "gfgfggfg"),
                CardWidget(title: "ffggfgg", subtitle: "ffggfgg"),
                CardWidget(title: "ffggfgg", subtitle: "ffggfgg"),
                CardWidget(title: "ffggfgg", subtitle: "ffggfgg"),
                CardWidget(title: "ffggfgg", subtitle: "ffggfgg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
