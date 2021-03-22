import 'package:flutter/material.dart';
import 'package:foodrecipeapp/providers/recipes_provider.dart';
import 'package:provider/provider.dart';


import 'card_widget.dart';

class RecipeList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final recipeData = Provider.of<Recipes>(context);
    final recipes = recipeData.recipes;

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      // Let the ListView know how many items it needs to build.
      itemCount: recipes.length,
      // Provide a builder function. This is where the magic happens.
      // Convert each item into a widget based on the type of item it is.
      itemBuilder: (context, i) =>
          ChangeNotifierProvider(
              create: (c) => recipes[i],
              child: CardWidget(
                // recipes[i].id,
                // recipes[i].title,
                // recipes[i].subtitle,
                // recipes[i].image,
              ),
          ),
    );
  }
}