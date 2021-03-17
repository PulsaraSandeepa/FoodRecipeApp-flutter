import 'package:flutter/material.dart';

class RecipeData with ChangeNotifier {
  final int id;
  final String title;
  final String subtitle;
  final String image;
  bool isSelected;

  RecipeData({@required this.id,
    @required this.title,
    @required this.subtitle,
    @required this.image,
    this.isSelected = false,
  });


  void toggleFavoriteStatus() {
    isSelected = !isSelected;
    notifyListeners();
  }
}