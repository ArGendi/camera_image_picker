import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(),
        body: SafeArea(
          child: IconButton(
            onPressed: (){
              scaffoldKey.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
        drawer: Drawer(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(backgroundColor: Colors.black,),
                accountEmail: Text("abdo@gmail.com"), 
                accountName: Text("Abdelrahman Abdallah"),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: (){},
          child: Icon(Icons.search),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      ),

    );
  }
}