import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {

  @override
  _TasksTileState createState() => _TasksTileState();
}

bool isChecked = false;
class _TasksTileState extends State<TasksTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile (
      title: Text('this is a task 1',style: TextStyle(decoration: isChecked ?TextDecoration.lineThrough : null),),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: (value) {
          setState(() {
            isChecked=value!;
          });
        },
      )
    );
  }
}
