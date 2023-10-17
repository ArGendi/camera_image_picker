import 'package:flutter/material.dart';

class SingleStory extends StatelessWidget {
  final String name;
  const SingleStory({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single stroy"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(child: Hero(
        tag: name,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      )),
    );
  }
}