import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AssignTask extends StatefulWidget {
  @override
  _AssignTaskState createState() => _AssignTaskState();
}

class _AssignTaskState extends State<AssignTask> {
  String _taskName;
  String _description;
  String _assignTo;
  String _deadline;

  String smessage = " ";
  var _controllerName = TextEditingController();
  var _controllerDes = TextEditingController();
  var _controllerassignTo = TextEditingController();
  var _controllerDeadline = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      controller: _controllerName,
      decoration: InputDecoration(labelText: "Task Title"),
      validator: (String value) {
        if (value.isEmpty) {
          return "Title is Required";
        }
        return null;
      },
      onSaved: (String value) {
        _taskName = value;
      },
    );
  }

  Widget _buildDescription() {
    return TextFormField(
      controller: _controllerDes,
      decoration: InputDecoration(labelText: "Description"),
      validator: (String value) {
        if (value.isEmpty) {
          return "Description is Required";
        }
        return null;
      },
      onSaved: (String value) {
        _description = value;
      },
    );
  }

  Widget _buildAssignTo() {
    return TextFormField(
      controller: _controllerassignTo,
      decoration: InputDecoration(labelText: "Assign To: "),
      validator: (String value) {
        if (value.isEmpty) {
          return "Please specify a person.";
        }
        return null;
      },
      onSaved: (String value) {
        _assignTo = value;
      },
    );
  }

  Widget _buildDeadline() {
    return TextFormField(
      controller: _controllerDeadline,
      decoration: InputDecoration(labelText: "Deadline"),
      keyboardType: TextInputType.datetime,
      validator: (String value) {
        if (value.isEmpty) {
          return "Please specify a date.";
        }
        return null;
      },
      onSaved: (String value) {
        _deadline = value;
      },
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Details Submitted'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(smessage),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image(
            image: AssetImage('assets/logoplainwt.png'),
            height: 55,
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.all(25.0),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildName(),
                  _buildDescription(),
                  _buildAssignTo(),
                  _buildDeadline(),
                  SizedBox(height: 50),
                  RaisedButton(
                    child: Text('Submit',
                        style:
                            TextStyle(color: Colors.deepPurple, fontSize: 18)),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }

                      _formKey.currentState.save();
                      _controllerName.clear();
                      _controllerDes.clear();
                      _controllerassignTo.clear();
                      _controllerDeadline.clear();

                      smessage = 'Task "' + _taskName + '" assigned to "'+_assignTo+'" ! ';
                      _showMyDialog();

                      print(_taskName);
                      print(_deadline);

                     
                    },
                  ),
                  Text(smessage,
                      style: TextStyle(color: Colors.green, fontSize: 16))
                ],
              )),
        )));
  }
}
