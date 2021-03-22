import 'package:flutter/material.dart';

class RecipeData with ChangeNotifier {
  final int id;
  final String title;
  final String subtitle;
  final List<String> ingredients;
  final List<String> stepName;
  final List<String> stepDescription;
  final String image;
  bool isSelected;

  RecipeData({
    @required this.id,
    @required this.title,
    @required this.subtitle,
    @required this.ingredients,
    @required this.stepDescription,
    @required this.stepName,
    @required this.image,
    this.isSelected = false,
  });

  void toggleFavoriteStatus() {
    isSelected = !isSelected;
    notifyListeners();
  }

  int ingredientsCount(){
    return ingredients.length;
  }

  int stepsCount(){
    return stepName.length;
  }

  int stepDescriptionsCount(){
    return stepDescription.length;
  }
}
