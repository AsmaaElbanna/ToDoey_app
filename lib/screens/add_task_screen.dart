import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/models/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final textFieldController = TextEditingController();

  String taskName = '' ;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 30, right: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              // controller: textFieldController,
              autofocus: true,
              textAlign: TextAlign.center,
              maxLines: 3,
              minLines: 1,
              decoration: const InputDecoration(),
              onChanged: (value) {
                taskName = value;
                print('Task title is $taskName');
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.lightBlueAccent,
              child: TextButton(
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(taskName);
                  Navigator.pop(context);
                  // Task task = Task(taskName,false);
                  // tasks.add(task);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => TasksScreen(tasks),
                  //   )
                  // );
                  // textFieldController.clear();
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}