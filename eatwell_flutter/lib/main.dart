import 'package:flutter/material.dart';
import 'screens/homescreen.dart';
import 'screens/addrecipescreen.dart';
import 'screens/savedrecipescreen.dart';
import 'screens/addedscreen.dart';
import 'screens/displayscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/homescreen': (context) => HomeScreen(),
        '/addrecipescreen': (context) => AddRecipeScreen(),
        '/savedrecipescreen': (context) => SavedRecipes(),
        '/addedrecipes': (context) => AddedRecipe(),
        '/displaysavedrecipes': (context) => DisplayRecipe(),
      },
    );
  }
}