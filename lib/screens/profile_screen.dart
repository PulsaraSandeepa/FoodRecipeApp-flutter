import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height:670,
            child: Stack(
              children: <Widget>[
                  Container(
                    height: 150,
                    color: Colors.brown,
                  ),
                Align(
                  child: Padding(
                    padding: const EdgeInsets.only( bottom: 350,),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          CircularProfileAvatar(
                              '',
                              child: FlutterLogo(),
                              borderColor: Colors.white,
                              borderWidth: 4,
                              elevation: 2,
                              radius: 50,
                            ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Pulsara Sandeepa",
                            style: GoogleFonts.lato(fontSize: 25),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  child: SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.arrow_back , color: Colors.white,),
                            onPressed: () {
                              Navigator.pushNamed(context, 'MainScreen');
                            }),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( top: 250,),
                  child: Container(
                    child: SafeArea(
                      child: Scrollbar(
                        child: SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                //cards
                              ],

                          ),

                        ),
                      ),
                    ),
                  ),
                ),
                )],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Add Recipe'),
        icon: Icon(Icons.add),
        elevation: 10,

        onPressed: (){

        },
      ),
    );
  }
}

// class MyCustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height - 150);
//     path.lineTo(0, size.height);
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }
