import 'package:flutter/material.dart';
import 'package:foodrecipeapp/screens/recipe_view_screen.dart';
import '../models/recipe.dart';
class CardWidget extends StatelessWidget {

  final int id;
  final String title;
  final String subtitle;
  final String image;

  CardWidget(this.id, this.title, this.subtitle, this.image);

  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0),
      child: Container(

        padding: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
                this.title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                this.subtitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing:
              IconButton(
                onPressed: (){

                },
                icon:Icon(
                        Icons.favorite,
                        size: 25,
                        color: Colors.white,
                      ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const SizedBox(width: 8),
                TextButton(
                  child: Text(
                    'View Recipe',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder:(ctx) => RecipeViewScreen(id),
                      ),
                    );
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
  // Widget _getIcon(){
  //   if(isSelected){
  //    return Icon(
  //       Icons.favorite,
  //       size: 25,
  //       color: Colors.white,
  //     );
  //   }
  //   else{
  //   return Icon(
  //       Icons.favorite_border,
  //       size: 25,
  //       color: Colors.white,
  //     );
  //   }
  // }

}

