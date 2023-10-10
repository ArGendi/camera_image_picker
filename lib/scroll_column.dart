import 'package:flutter/material.dart';

class ScrollColumn extends StatefulWidget {
  const ScrollColumn({super.key});

  @override
  State<ScrollColumn> createState() => _ScrollColumnState();
}

class _ScrollColumnState extends State<ScrollColumn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 300,
          height: 200,
          color: Colors.green,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.grey,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.yellow,
        ),
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
      ],
    ),
        ),
      ),
    );
  }
}