import 'dart:math';

import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  List<String> names = ["Abdo", "Mohamed", "Ahmed", "Mariam", "Farah", "Mai"];
  bool isViewed = false;
  List<int> indexesViewed = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stories"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        drawer: Drawer(
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.black),
                  accountName: Text("Abdelrahman"), 
                  accountEmail: Text("Abdo@gmail.com"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                ListTile(
                  onTap: (){},
                  leading: Icon(Icons.search),
                  title: Text("Search"),
                ),
                 ListTile(
                  onTap: (){},
                  leading: Icon(Icons.logout),
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          height: 100,
          color: Colors.grey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, i){
                return InkWell(
                  onTap: (){
                    setState(() {
                      indexesViewed.add(i);
                    });
                  },
                  onDoubleTap: (){
                    setState(() {
                      indexesViewed.remove(i);
                      names.removeAt(i);
                    });
                  },
                  child: Column(
                    children: [
                      AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 4,
                            color: indexesViewed.contains(i)?Colors.grey : Colors.green,
                          )
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(names[i])
                    ],
                  ),
                );
              }, 
              separatorBuilder: (context, i){
                return SizedBox(width: 10,);
              },
              itemCount: names.length,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: (){
            List<String> randomNames = ["A", "B", "C", "D", "E"];
            setState(() {
              Random r = Random();
              int myIndex =  r.nextInt(randomNames.length);
              names.insert(myIndex, randomNames[myIndex]);
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}