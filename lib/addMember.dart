import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddMember extends StatefulWidget {
  @override
  _AddMemberState createState() => _AddMemberState();
}

class _AddMemberState extends State<AddMember> {
  String _name;
  String _designation;
  String _email;
  String _phoneNumber;
  String _ghURL;
  String _liURL;
  String smessage = " ";
  var _controllerName = TextEditingController();
  var _controllerDes = TextEditingController();
  var _controllerEmail = TextEditingController();
  var _controllerPhone = TextEditingController();
  var _controllerGURL = TextEditingController();
  var _controllerLURL = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      controller: _controllerName,
      decoration: InputDecoration(labelText: "Name"),
      validator: (String value) {
        if (value.isEmpty) {
          return "Name is Required";
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildDesignation() {
    return TextFormField(
      controller: _controllerDes,
      decoration: InputDecoration(labelText: "Designation"),
      validator: (String value) {
        if (value.isEmpty) {
          return "Designation is Required";
        }
        return null;
      },
      onSaved: (String value) {
        _designation = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      controller: _controllerEmail,
      decoration: InputDecoration(labelText: "Email"),
      validator: (String value) {
        if (value.isEmpty) {
          return "Email is Required";
        }

        if (!RegExp(
                r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
            .hasMatch(value)) {
          return "Invalid Email";
        }

        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      controller: _controllerPhone,
      decoration: InputDecoration(labelText: "Phone Number"),
      validator: (String value) {
        if (value.isEmpty) {
          return "Phone Number is Required";
        }
        if (!RegExp(r"[0-9]{10}").hasMatch(value)) {
          return "Invalid Phone Number";
        }
        return null;
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  Widget _builGithubURL() {
    return TextFormField(
      controller: _controllerGURL,
      decoration: InputDecoration(labelText: "GitHub Profile Link"),
      validator: (String value) {
        if (value.isEmpty) {
          return "URL is Required";
        }
        return null;
      },
      onSaved: (String value) {
        _ghURL = value;
      },
    );
  }

  Widget _builLinkedInURL() {
    return TextFormField(
      controller: _controllerLURL,
      decoration: InputDecoration(labelText: "LinkedIn Profile Link"),
      validator: (String value) {
        if (value.isEmpty) {
          return "URL is Required";
        }
        return null;
      },
      onSaved: (String value) {
        _liURL = value;
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
                  _buildDesignation(),
                  _buildEmail(),
                  _buildPhoneNumber(),
                  _builGithubURL(),
                  _builLinkedInURL(),
                  SizedBox(height: 50),
                  RaisedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(color: Colors.deepPurple, fontSize: 18)
                    ),
                    onPressed: () {
                      if (!_formKey.currentState.validate()) {
                        return;
                      }

                      _formKey.currentState.save();
                      _controllerName.clear();
                      _controllerDes.clear();
                      _controllerEmail.clear();
                      _controllerPhone.clear();
                      _controllerGURL.clear();
                      _controllerLURL.clear();
                      smessage = "Details of " + _name + " Submitted ! ";

                      print(_name);
                      print(_email);
                      print(_phoneNumber);

                      //Send to API
                    },
                  ),
                  Text(smessage,
                      style: TextStyle(color: Colors.green, fontSize: 16))
                ],
              )),
        )));
  }
}
