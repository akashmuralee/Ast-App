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
      title: 'Flutter Demo',
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
        body: Padding(
          child:TextInputWidget(),
          padding: EdgeInsets.all(20),
          )
          );
  }
}



class TextInputWidget extends StatefulWidget {
  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          controller: this.controller,
          decoration: InputDecoration(
              //prefixIcon: Icon(Icons.add_comment),
              suffixIcon: IconButton(
                icon: Icon(Icons.send_rounded),
                color: Colors.black,
                onPressed: () => {}
              ),
              labelText: "Enter Your Name"),
        )
      ],
    );
  }
}
