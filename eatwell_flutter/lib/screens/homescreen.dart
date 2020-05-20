import 'package:flutter/material.dart';
import 'package:eatwellflutter/components/homebutton_appbar.dart';

//Screen 1
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Home Screen'),
          actions: <Widget>[
            HomeButtonAppBar(),
    ],
    ),

      body: Center(
        child: Column(
          children: <Widget>[
            Text('Can\'t think of what to eat? '),
            //Button to screen 2 - Add recipe screen
            RaisedButton(
              color: Colors.red,
              child: Text('Add recipe'),
              onPressed: () {
                //Navigate to Screen 2
                Navigator.pushNamed(context, '/addrecipescreen');
              },
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text('See all recipes'),
              onPressed: () {
                //Navigate to Screen 4 - Saved recipe screen
                Navigator.pushNamed(context, '/savedrecipescreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
