import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  String title;
  String subtitle;
  String image;

  CardWidget(
      {@required this.title, @required this.subtitle, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(top: 10.0),
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(this.image),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(
                'The Enchanted Nightingale',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Music by Julie Gable. Lyrics by Sidney Stein.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text(
                    'BUY TICKETS',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/Main");
                  },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: Text(
                    'LISTEN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    /* ... */
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
