import 'package:flutter/material.dart';
import 'package:my_cats/cats_deatails_screen.dart';
import 'package:my_cats/model/cat.dart';

class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CatDeatailsScreen(cat: cat);
          }));
        },
        child: Column(
          children: [
            //cat image
            Expanded(
              child: Image.network(
                  width: double.infinity, fit: BoxFit.cover, cat.imageLink),
            ),
            //cat name

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cat.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                    fontStyle: FontStyle.italic),
              ),
            )
          ],
        ));
  }
}
