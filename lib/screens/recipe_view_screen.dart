import 'package:flutter/material.dart';
import 'package:foodrecipeapp/providers/recipes_provider.dart';
import 'package:foodrecipeapp/widgets/recipe_view_ingredients_widget.dart';
import 'package:foodrecipeapp/widgets/recipe_view_steps_widget.dart';
import 'package:provider/provider.dart';

class RecipeViewScreen extends StatelessWidget {
  final int id;

  RecipeViewScreen(this.id);

  @override
  Widget build(BuildContext context) {
    final _height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final _width = MediaQuery.of(context).size.width;

    final loadedRecipe =
        Provider.of<Recipes>(context, listen: false).findById(id);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(loadedRecipe.title), //Name of the Food or the Recipe.
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: _width,
                  height: _height * 0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(loadedRecipe.image)),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    border: Border.all(color: Colors.black54, width: 2),
                    color: Colors.redAccent,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Divider(
                  color: Colors.black,
                ),
                Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10.0,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: loadedRecipe.ingredientsCount(),
                  itemBuilder: (ctx, i) => RecipeViewIngredientsWidgets(
                    ingredient: loadedRecipe.ingredients[i],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Divider(
                  color: Colors.black,
                ),
                Text(
                  'Steps',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  color: Colors.black,
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: loadedRecipe.stepsCount(),
                  itemBuilder: (ctx, i) => RecipeViewStepsWidget(
                    stepNumber: (i + 1),
                    topic: loadedRecipe.stepName[i],
                    description: loadedRecipe.stepDescription[i],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
