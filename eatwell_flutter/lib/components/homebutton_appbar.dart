import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeButtonAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      icon: const Icon(Icons.home),
      tooltip: 'To home page',
      onPressed: () {
        Navigator.pushNamed(context, '/homescreen');
      },
    );
  }
}
