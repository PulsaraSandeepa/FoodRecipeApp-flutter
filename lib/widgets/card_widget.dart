import 'package:flutter/material.dart';
import 'package:foodrecipeapp/providers/recipes_provider.dart';
import 'package:foodrecipeapp/screens/recipe_view_screen.dart';
import 'package:provider/provider.dart';
import '../models/recipe.dart';

class CardWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    final recipe = Provider.of<RecipeData>(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: Container(
        padding: EdgeInsets.only(top: 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(recipe.image),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text(
                recipe.title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                recipe.subtitle,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    recipe.toggleFavoriteStatus();
                  },
                  icon: recipe.isSelected
                      ? Icon(
                          Icons.favorite,
                          size: 35,
                          color: Colors.lightGreen,
                        )
                      : Icon(
                          Icons.favorite_border,
                          size: 35,
                          color: Colors.lightGreen,
                        )),
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
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => RecipeViewScreen(recipe.id),
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
