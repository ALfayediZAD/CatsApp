import 'package:flutter/material.dart';
import 'package:my_cats/cats_home_screen.dart';
import 'package:my_cats/data/all_cats.dart';
import 'package:my_cats/model/cat.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomeScreen(),
    );
  }
}
