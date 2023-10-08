import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyImages extends StatefulWidget {
  const MyImages({super.key});

  @override
  State<MyImages> createState() => _MyImagesState();
}

class _MyImagesState extends State<MyImages> {
  File? image;

  void getMyImage() async{
    ImagePicker ip = ImagePicker();
    XFile? imageFromCamera = await ip.pickImage(source: ImageSource.camera);
    if(imageFromCamera != null){
      File myImageFile = File(imageFromCamera.path);
      setState(() {
        image = myImageFile;
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(child: Column(
          children: [
        Image.asset(
          "images/panda.jpg",
          width: 150,
          height: 300,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20,),
        IconButton(
          onPressed: (){
            getMyImage();
          }, 
          icon: Icon(Icons.camera),
        ),
        if(image != null)
          Image.file(
            image!,
            width: 150,
          ),
          ],
        )),
      ),
    );
  }
}