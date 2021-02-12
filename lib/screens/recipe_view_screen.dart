import 'package:flutter/material.dart';
import 'package:foodrecipeapp/widgets/recipe_view_ingredients_widget.dart';
import 'package:foodrecipeapp/widgets/recipe_view_steps_widget.dart';

class RecipeViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chicken Biriyani"), //Name of the Food or the Recipe.
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
                        image: AssetImage('images/ChickenBiriyani.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    color: Colors.redAccent,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Divider(color: Colors.black,),
                Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(color: Colors.black,),
                SizedBox(
                  height: 10.0,
                ),
                RecipeViewIngredientsWidgets(ingredient: '1 cup boiled basmati rice',),
                RecipeViewIngredientsWidgets(ingredient: '1/2 teaspoon mint leaves',),
                RecipeViewIngredientsWidgets(ingredient: 'salt as required',),
                RecipeViewIngredientsWidgets(ingredient: '2 tablespoon refined oil',),
                RecipeViewIngredientsWidgets(ingredient: '600 gm chicken',),
                RecipeViewIngredientsWidgets(ingredient: '1 tablespoon garam masala powder',),
                SizedBox(
                  height: 20.0,
                ),
                Divider(color: Colors.black,),
                Text(
                  'Steps',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(color: Colors.black,),
                RecipeViewStepsWidget(stepNumber: 1, topic: 'Prepare saffron and kewra water', description: 'To make this delightful biryani, soak saffron in water to prepare saffron water. Next, mix kewra drops in water and mix well to make kewra water.',),
                RecipeViewStepsWidget(stepNumber: 2, topic: 'Saute onions and tomatoes for 2-3 minutes', description: 'In the meanwhile, heat refined oil in a deep bottomed pan. Once the oil is hot enough. Add cumin seeds, bay leaf, green cardamom, black cardamom, cloves in it, and saute for about a minute. Then, add chopped onion in it and saute until pink. Now, add chicken into it with slit green chillies, turmeric, salt to taste, ginger garlic paste, red chilli powder, and green chilli paste. Mix well all the spices and cook for 2-3 minutes. Then, add hung curd into it',),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
