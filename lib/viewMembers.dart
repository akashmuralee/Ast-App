import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

class Members {
  final String name;
  final String email;
  final String phone;
  final String designation;
  final String ghLink;

  Members(this.name, this.email, this.phone, this.designation, this.ghLink);
}

class ViewMembers extends StatefulWidget {
  @override
  _ViewMembersState createState() => _ViewMembersState();
}

class _ViewMembersState extends State<ViewMembers> {
  List<Members> members = [
    Members("Adrian M. Hannah", "AdrianMHannah@rhyta.com", "3148157377",
        "Chief Executive Officer", "https://github.com/akashmuralee"),
    Members(
        "Dolores L. Patenaude",
        "DoloresLPatenaude@dayrep.com",
        "6465391284",
        "Chief Techinical Officer",
        "https://github.com/akashmuralee"),
    Members("Dawn G. Hoffman", "DawnGHoffman@rhyta.com", "9499979631",
        "Developer", "https://github.com/akashmuralee"),
    Members("Rebecca S. Quinton", "RebeccaSQuinton@armyspy.com", "8942471325",
        "Developer", "https://github.com/akashmuralee")
  ];

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
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
        body: ListView.builder(
          itemCount: members.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: ListTile(
                trailing: IconButton(
                  icon: Icon(Icons.chat_bubble),
                  onPressed: () {
                    const url =
                        "http://api.whatsapp.com/send?phone=917561881631";
                    launchURL(url);
                  },
                  splashColor: Colors.deepPurple[100],
                  //splashRadius: 50,
                ),
                title: Text(members[index].name),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(members[index].designation),
                    Text(members[index].email),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
