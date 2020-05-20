import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

Future<Recipe> createRecipe (String recipeTitle, String ingredients) async {
  final http.Response response = await http.post(
    'http://localhost:8082/recipe',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'recipeTitle': recipeTitle,
      'ingredients': ingredients,
    }),
  );

  /*if (response.statusCode == 200) {
    return Recipe.fromJson(json.decode(response.body));
  }
  else {
    throw Exception('Failed to create recipe.');
  }*/
}

class Recipe {
  final int id;
  final String recipeTitle;
  final String ingredients;

  Recipe({this.id, this.recipeTitle, this.ingredients});

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      recipeTitle: json['recipeTitle'],
      ingredients: json['ingredients'],
    );
  }
}