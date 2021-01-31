import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'tasks.dart';



class ViewTasks extends StatefulWidget {
  @override
  _ViewTasksState createState() => _ViewTasksState();
}

class _ViewTasksState extends State<ViewTasks> {
  

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
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: ListTile(
                leading: Checkbox(
                  value: tasks[index].done,
                  onChanged: (bool value) {
                    setState(() {
                      tasks[index].done = value;
                      print(tasks[index].name);
                      print(tasks[index].done);
                    });
                  },
                ),
                title: Text(tasks[index].name),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tasks[index].description),
                    Text(tasks[index].deadline),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
