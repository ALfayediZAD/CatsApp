import 'package:flutter/material.dart';
import 'package:my_cats/Widgets/Cat_Details.dart';
import 'package:my_cats/model/cat.dart';

class CatDeatailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDeatailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            cat.name,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: CatDetailsWidget(cat: cat),
    );
  }
}
