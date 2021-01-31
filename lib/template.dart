import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ClassName extends StatefulWidget {
  @override
  _ClassNameState createState() => _ClassNameState();
}

class _ClassNameState extends State<ClassName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage('assets/logoplainwt.png'),
          height: 55,
        ),
      ),
      body:Column()
    );
  }
}