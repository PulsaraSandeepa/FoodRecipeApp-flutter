import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    final _height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.black87, Colors.black54])),
                child: Container(
                  height: _height * 0.5,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Image(
                            height: _height * 0.2,
                            image: AssetImage('images/Web_Logo.png'),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "hException Technologies",
                          style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: _launchURLFacebook,
                              child: Image(
                                height: _height * 0.11,
                                image: AssetImage('images/facebook.png'),
                              ),
                            ),
                            GestureDetector(
                              onTap: _launchURLLinkedIn,
                              child: Image(
                                height: _height * 0.1,
                                image: AssetImage('images/linkedIn.png'),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                              onTap: _launchURLMedium,
                              child: Image(
                                height: _height * 0.075,
                                image: AssetImage('images/medium.png'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eu ultrices vitae auctor eu augue.',
                      style: TextStyle(
                          fontSize: 20.0, fontStyle: FontStyle.italic),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RaisedButton(
                      elevation: 10.0,
                      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                      textColor: Colors.white,
                      child: Text(
                        'Contact Us',
                        style: TextStyle(
                            fontSize: 25.0, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                      ),
                      color: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.deepOrange)),
                      onPressed: () {
                        // ignore: unnecessary_statements
                        setState(() {
                          _launchCaller();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
_launchURLLinkedIn() async {
  const url = 'https://linkedin.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLFacebook() async {
  const url = 'https://www.facebook.com/hException';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchURLMedium() async {
  const url = 'https://medium.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
_launchCaller() async {
  const url = "tel:0771234567";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
