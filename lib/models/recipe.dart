import 'package:flutter/material.dart';

class RecipeData {
  final int id;
  final String title;
  final String subtitle;
  final String image;
  //bool isSelected;

  RecipeData(
      {@required this.id,
      @required this.title,
      @required this.subtitle,
      @required this.image,
    //  @required this.isSelected
  });
}
