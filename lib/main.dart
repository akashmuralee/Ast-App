import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primarySwatch: Colors.deepPurple,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return MaterialApp(
      title: '.Ast App',
      theme: themeData,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image(
            image: AssetImage('assets/logoplainwt.png'),
            height: 55,
          ),
        ),
       
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children:[
                      IconButton(
                        iconSize: 100.0,
                  icon:Icon(Icons.person_add) , onPressed: null),
                  Text("Add Member")
                  ]
                ),
               Column(
                  children:[
                      IconButton(
                        iconSize: 100.0,
                  icon:Icon(Icons.group) , onPressed: null),
                  Text("View Members")
                  ]
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children:[
                      IconButton(
                        iconSize: 100.00,
                  icon:Icon(Icons.playlist_add) , onPressed: null),
                  Text("Assign Task")
                  ]
                ),
                Column(
                  children:[
                      IconButton(
                        iconSize: 100.0,
                  icon:Icon(Icons.list_alt) , onPressed: null),
                  Text("View Tasks")
                  ]
                )
              ],
            ),
            
          ],
        ),

        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.chat),

        ),
          );
  }
}