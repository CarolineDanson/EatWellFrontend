import 'package:eatwellflutter/components/createrecipe_form.dart';
import 'package:eatwellflutter/screens/addedscreen.dart';
import 'package:flutter/material.dart';
import 'package:eatwellflutter/components/homebutton_appbar.dart';

class AddRecipeScreen extends StatefulWidget {
  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  TextEditingController _title = TextEditingController();
  TextEditingController _ingredients = TextEditingController();
  Future<Recipe> _futureRecipe;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Add Recipe screen'),
        actions: <Widget>[
          HomeButtonAppBar(),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('ADD FORM - RECIPE TITLE & INGREDIENTS'),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    controller: _title,
                    decoration: InputDecoration(hintText: 'Enter Title'),
                  ),
                  TextField(
                    controller: _ingredients,
                    decoration: InputDecoration(hintText: 'Enter Ingredients'),
                  ),
                  RaisedButton(
                    color: Colors.green,
                    child: Text('Add recipe'),
                    onPressed: () {
                      setState(() {
                        _futureRecipe = createRecipe(_title.text, _ingredients.text);
                      });
                      //Navigator.pushNamed(context, '/addedrecipes');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
