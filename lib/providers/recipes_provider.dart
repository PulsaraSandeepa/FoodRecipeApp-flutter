import 'package:flutter/material.dart';
import '../models/recipe.dart';

class Recipes with ChangeNotifier {
  List<RecipeData> _recipes = [
    RecipeData(
      id: 1,
      title: "Fried Rice",
      subtitle: "Fried Rice for you !",
      ingredients: ['Ingredient 11', 'Ingredient 12'],
      stepName: ['Step One of Recipe One', 'Step Two of Recipe One'],
      stepDescription: ['Step One Description of Recipe One', 'Step Two Description of Recipe One'],
      image: 'images/fried-rice.jpg',
    ),
    RecipeData(
      id: 2,
      title: "Chiken Biriyani",
      subtitle: "Chiken Biriyani for you !",
      ingredients: ['Ingredient 21', 'Ingredient 22', 'Ingredient 23'],
      stepName: ['Step One of Recipe Two', 'Step Two of Recipe Two'],
      stepDescription: ['Step One Description of Recipe Two', 'Step Two Description of Recipe Two'],
      image: 'images/ChickenBiriyani.jpg',
    ),
    RecipeData(
      id: 3,
      title: "Nasi Goreng",
      subtitle: "Nasi Goreng for you !",
      ingredients: ['Ingredient 31', 'Ingredient 32'],
      stepName: ['Step One of Recipe Three', 'Step Two of Recipe Three'],
      stepDescription: ['Step One Description of Recipe Three', 'Step Two Description of Recipe Three'],
      image: 'images/NasiGoreng.jpg',
    ),
    RecipeData(
      id: 4,
      title: "Noodles",
      subtitle: "Noodles for you !",
      ingredients: ['Ingredient 41', 'Ingredient 42','Ingredient 43', 'Ingredient 44'],
      stepName: ['Step One of Recipe Four', 'Step Two of Recipe Four'],
      stepDescription: ['Step One Description of Recipe Four', 'Step Two Description of Recipe Four'],
      image: 'images/Noodles.jpg',
    ),
    RecipeData(
      id: 5,
      title: "Pizza",
      subtitle: "Pizza for you !",
      ingredients: ['Ingredient 51', 'Ingredient 52'],
      stepName: ['Step One of Recipe Five', 'Step Two of Recipe Five'],
      stepDescription: ['Step One Description of Recipe Five', 'Step Two Description of Recipe Five'],
      image: 'images/Pizza.jpg',
    ),
  ];

  List<RecipeData> get recipes {
    return [..._recipes];
  }

  int recipeItemsLength(){
    return _recipes.length;
  }

  RecipeData findById(int id){
    return _recipes.firstWhere((element) => element.id == id);
  }

  void addRecipe() {
//  _items.add(value);
    notifyListeners();
  }
}
