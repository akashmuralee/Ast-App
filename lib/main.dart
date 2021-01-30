import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'addMember.dart';

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
              MainIcons(
                  Icons.person_add, "Add Member"),
              MainIcons(Icons.group, "View Members"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MainIcons(Icons.playlist_add, "Assign Task"),
              MainIcons(Icons.list_alt, "View Tasks"),
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

class ViewMembers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image(
            image: AssetImage('assets/logoplainwt.png'),
            height: 55,
          ),
        ),
        body: Text("View Members"));
  }
}



class MainIcons extends StatelessWidget {
  Color _color;
  IconData _icons;
  String _iconText;
  Function _dest;
  MainIcons(this._icons, this._iconText);

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
              MaterialPageRoute(builder: (context) => AddMember()),
            );
          }),
      Text(_iconText)
    ]);
  }
}


