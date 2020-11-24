import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  String title;
  String subtitle;

  CardWidget({@required this.title, @required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('BUY TICKETS'),
                  onPressed: () {
                    Navigator.pushNamed(context, "/LogIn");
                  },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: Text('LISTEN'),
                  onPressed: () {
                    /* ... */
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      );
  }
}
