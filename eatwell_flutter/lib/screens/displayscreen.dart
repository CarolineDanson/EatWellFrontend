import 'package:eatwellflutter/components/homebutton_appbar.dart';
import 'package:flutter/material.dart';

class DisplayRecipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Displaying recipes'),
        actions: <Widget>[
          HomeButtonAppBar(),
        ],
      ),
      body: Column(
        children: <Widget>[
          Text('INFORMATION ABOUT RECIPE, TITLE, INGREDIENTS or LINK'),
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
