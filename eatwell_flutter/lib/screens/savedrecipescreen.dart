import 'package:eatwellflutter/components/homebutton_appbar.dart';
import 'package:flutter/material.dart';

class SavedRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Your saved recipes'),
        actions: <Widget>[
          HomeButtonAppBar(),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('DISPLAY ALL RECIPES'),
            Center(
              child: RaisedButton(
                color: Colors.red,
                child: Text('Add another recipe?'),
                onPressed: () {
                  Navigator.pushNamed(context, '/addrecipescreen');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
