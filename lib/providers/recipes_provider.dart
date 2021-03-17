import 'package:flutter/material.dart';
import 'recipe.dart';

class Recipes with ChangeNotifier {
  List<RecipeData> _recipes = [
    RecipeData(
      id: 1,
      title: "ffeeererggfgg",
      subtitle: "gfgfggfg",
      image: 'images/fried-rice.jpg',
    ),
    RecipeData(
      id: 2,
      title: "ffreescdfdvggfgg",
      subtitle: "gfgfdddvccvcvcvcvcvcvcggfg",
      image: 'images/fried-rice.jpg',
    ),
    RecipeData(
      id: 3,
      title: "ffggfgg",
      subtitle: "gfgfggfg",
      image: 'images/fried-rice.jpg',
    ),
    RecipeData(
      id: 4,
      title: "ffggfgg",
      subtitle: "gfgfggfg",
      image: 'images/fried-rice.jpg',
    ),
    RecipeData(
      id: 5,
      title: "ffggfgg",
      subtitle: "gfgfggfg",
      image: 'images/fried-rice.jpg',
    ),
  ];

  List<RecipeData> get recipes {
    return [..._recipes];
  }

  RecipeData findById(int id){
    return _recipes.firstWhere((element) => element.id == id);
  }

  void addRecipe() {
//  _items.add(value);
    notifyListeners();
  }
}
