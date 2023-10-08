import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? image;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Camera App'),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Center(child: Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: InkWell(
            onTap: () async{
              if(image == null){
                ImagePicker picker = ImagePicker();
                XFile? x = await picker.pickImage(source: ImageSource.camera);
                if(x != null){
                  File file = File(x.path);
                  setState(() {
                    image = file;
                  });
                }
              }
            },
            child: Center(
              child: image != null? Image.file(image!) : Text(
                'Choose photo',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}