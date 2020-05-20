import 'package:eatwellflutter/components/createrecipe_form.dart';
import 'package:eatwellflutter/components/homebutton_appbar.dart';
import 'package:flutter/material.dart';
import 'addrecipescreen.dart';

class AddedRecipe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Added recipe'),
        actions: <Widget>[
          HomeButtonAppBar(),
        ],
      ),
      body: Column(
        children: <Widget>[
          Text('YOU JUST ADDED THIS RECIPE:'),
          Container(),
          Center(
            child: RaisedButton(
              color: Colors.red,
              child: Text('Add another recipe?'),
              onPressed: () {
                Navigator.pushNamed(context, '/addrecipescreen');
              },
            ),
          ),
          Center(
            child: RaisedButton(
              color: Colors.red,
              child: Text('See saved recipes'),
              onPressed: () {
                Navigator.pushNamed(context, '/savedrecipescreen');
              },
            ),
          ),
        ],
      ),
    );
  }
}
