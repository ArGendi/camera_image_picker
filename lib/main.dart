
import 'package:flutter/material.dart';
import 'package:flutter_nasr_52/buttons.dart';
import 'package:flutter_nasr_52/example.dart';
import 'package:flutter_nasr_52/images.dart';

class MyButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(
          "Next",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }

}

class Abdo extends StatefulWidget {
  const Abdo({super.key});

  @override
  State<Abdo> createState() => _AbdoState();
}

class _AbdoState extends State<Abdo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: Text(
          "Next",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

void main(){
  runApp(Camera());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChanged = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                isChanged = !isChanged;
              });
            },
            icon: Icon(Icons.switch_account),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isChanged == true ? "Abdo" : "Mohamed",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black
                ),
            ),
            Container(
              width: 200,
              height: isChanged ? 200 : 300,
              color: isChanged ? Colors.greenAccent : Colors.blue[800],
            ),
            TextButton(
              onPressed: (){
                setState(() {
                  isChanged = !isChanged;
                });
              },
              child: Text(
                "Click me",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.red
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.yellow,
                ),
                onPressed: (){
            
                },
                child: Text("Hiiiii"),
              ),
            ),

          ],
        ),
      )
    ),
  );
  }
}