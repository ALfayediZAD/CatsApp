import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';

class CatDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatDetailsWidget({super.key, required this.cat});

  @override
  State<CatDetailsWidget> createState() => _CatDetailsWidgetState();
}

class _CatDetailsWidgetState extends State<CatDetailsWidget> {
  bool isNamedColored = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //cat imaage
        Image.network(widget.cat.imageLink),
        //cat name
        Text(
          widget.cat.name,
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: isNamedColored ? Colors.deepPurple : Colors.black),
        ),
        //cat info
        Text('Origin: ${widget.cat.origin}'),
        Text('MaxWeight: ${widget.cat.maxWeight} '),
        Text('MinWeight: ${widget.cat.minWeight} '),
        Text('Lenght: ${widget.cat.length}'),
        Text('Intellgence: ${widget.cat.intelligence}'),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isNamedColored = !isNamedColored;
              });
            },
            child: Text('change name color')),
      ],
    );
  }
}
