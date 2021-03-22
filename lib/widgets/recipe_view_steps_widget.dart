import 'package:flutter/material.dart';

class RecipeViewStepsWidget extends StatelessWidget {

  final String topic;
  final String description;
  final int stepNumber;

  const RecipeViewStepsWidget({Key key, this.topic, this.description, this.stepNumber}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Step : ' + stepNumber.toString() + '  ->  ' + topic,
            style: TextStyle(
                fontSize: 14.0,
                color: Colors.black87,
                height: 3.0,
                fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.black87,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
