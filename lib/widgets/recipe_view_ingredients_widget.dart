import 'package:flutter/material.dart';

class RecipeViewIngredientsWidgets extends StatelessWidget {
  final String ingredient;

  const RecipeViewIngredientsWidgets({Key key, this.ingredient}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        ' - ' + ingredient,
        style: TextStyle(
            fontSize: 14.0, color: Colors.black87, height: 2.0,),
        textAlign: TextAlign.center,
      ),
    );
  }
}
