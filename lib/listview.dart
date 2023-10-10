import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  List<String> names = ["Abdo", "Mohamed", "Omar", "Mai", "Mariam", "Ahmed", "hassan"];
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: key,
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: (){
            key.currentState!.openDrawer();
          },
          child: Icon(Icons.add),
        ),
        body: SafeArea(
          child: ListView.separated(
            itemCount: names.length,
            itemBuilder: (context, index){
              return Container(
                width: 200,
                height: 140,
                color: Colors.black,
                child: Center(child: Text(
                  names[index],
                  style: TextStyle(
                    fontSize: 20, 
                    color: Colors.white
                  ),
                )),
              );
            },
            separatorBuilder: (context, index){
              return SizedBox(height: 10,);
            },
          ),
        ),
      ),
    );
  }
}


// Column(
//   children: [
//     Text("Abdo"),
//     Expanded(
//       child: ListView(
//         children: [
//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.green,
//           ),
//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.black,
//           ),
//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.red,
//           ),
//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.yellow,
//           ),
//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.purple,
//           ),
//         ],
//       ),
//     ),
//   ],
// ),