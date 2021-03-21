import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Add Recipe you know';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
          backgroundColor: Colors.brown,
        ),
        body: AddRecipeForm(),
      ),
    );
  }
}

// Create a Form widget.
class AddRecipeForm extends StatefulWidget {
  @override
  AddRecipeFormState createState() {
    return AddRecipeFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class AddRecipeFormState extends State<AddRecipeForm> {
  File _image;

  final _formKey = GlobalKey<FormState>();

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
      print('_image:$_image');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.food_bank),
                hintText: 'Enter recipe title',
                labelText: 'Recipe Title',
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.description),
                hintText: 'Enter a small description',
                labelText: 'Recipe Description',
              ),
            ),
            Container(
                margin: const EdgeInsets.all(10.0),
                child: Text(
              "Add a cover image of your recipe",
              style: TextStyle(),
            )),
            GestureDetector(
              onTap: _getImage,
              child: Container(
                width: 350,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: _image == null ? Icon(Icons.add) : Image.file(_image),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.emoji_food_beverage),
                hintText: 'Add ingredients',
                labelText: 'Ingredients',
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 5,
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.kitchen),
                hintText: 'How to make',
                labelText: 'Steps',
              ),
              keyboardType: TextInputType.multiline,
              maxLines: 5,
            ),
            Container(
                padding:EdgeInsets.only(top: 40.0, bottom: 20.0),
                child: RaisedButton(
                  child: Text('ADD RECIPE'),
                  onPressed:(){

                  },
                )),
          ],
        ),
      ),
    );
  }
}
