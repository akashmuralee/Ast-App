import 'addMember.dart';
import 'assignTask.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'viewMembers.dart';
import 'viewTask.dart';


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
        elevation: 30,
        toolbarHeight: 150,
        title: Center(
          child: Image(
            image: AssetImage('assets/logoplainwt.png'),
            height: 120,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainIcons(Icons.person_add, "Add Member",AddMember()),
              MainIcons(Icons.group, "View Members",ViewMembers()),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainIcons(Icons.playlist_add, "Assign Task",AssignTask()),
              MainIcons(Icons.list_alt, "View Tasks",ViewTasks()),
            ],
          ),
        ],
      ),
      
    );
  }
}

class MainIcons extends StatelessWidget {
  //final Color _color;
  final IconData _icons;
  final String _iconText;
  final Widget _dest;
  
  MainIcons(this._icons, this._iconText,this._dest);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(
          iconSize: 100.0,
          icon: Icon(_icons, color: Colors.pink),
          splashColor: Colors.deepPurple,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => _dest),
            );
          }),
      Text(_iconText)
    ]);
  }
}


