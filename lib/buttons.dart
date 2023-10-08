import 'package:flutter/material.dart';

class SessionTwo extends StatefulWidget {
  const SessionTwo({super.key});

  @override
  State<SessionTwo> createState() => _SessionTwoState();
}

class _SessionTwoState extends State<SessionTwo> {
  bool isChanged = false;
  int x = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
          title: Text("Home"),
          actions: [
            Icon(Icons.add)
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(isChanged)
              OutlinedButton(
                onPressed: (){},
                child: Text("Click me"),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(width: 2, color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)
                  )
                ),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onLongPress: (){
                  setState(() {
                    isChanged = !isChanged;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.red,
                  radius: 50,
                  child: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 200,
                height: 100,
                color: isChanged ? Colors.green : Colors.amber,
                child: InkWell(
                  onDoubleTap: (){
                  setState(() {
                    isChanged = !isChanged;
                  });
                },
                  child: Center(child: Text("I am a container")),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                color: Colors.purpleAccent,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                  children: [
                    Text(
                      "Helllooooooooooooo",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Have a good day",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}