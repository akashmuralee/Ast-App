import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddMember extends StatefulWidget {
  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
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