import 'package:flutter/material.dart';
import 'package:to_do_list_app/models/Task.dart';
import 'package:to_do_list_app/models/task_data.dart';
import 'package:to_do_list_app/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {
  // final List<Task> tasks;
  //final Function longPressCallback;

  // TasksList(this.tasks,this.longPressCallback);
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<TaskData>(context).taskCount(),
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          onLongPress: () => {

          showDialog(context: context, builder: (BuildContext buildContext){
          return AlertDialog(
          title: Text('Delete?',style: TextStyle(color: Colors.red.shade300),),
          elevation: 5,
          content: Text('Do you want delete this task? '),
          actions: [
          TextButton(
          onPressed: () {
          Provider.of<TaskData>(context, listen: false).deleteTask(
              Provider.of<TaskData>(context, listen: false)
                  .tasks[index]);
          Navigator.pop(context);
          },
          child: Text('YES',style: TextStyle(color: Colors.red.shade300),)),
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('No'))
          ],
          );
          })
           // Provider.of<TaskData>(context,listen: false).deleteTask(Provider.of<TaskData>(context,listen: false).tasks[index])
          },
          title: Text(
            Provider.of<TaskData>(context).tasks[index].name,
            style: TextStyle(
                decoration: Provider.of<TaskData>(context).tasks[index].isDone
                    ? TextDecoration.lineThrough
                    : null),
          ),
          trailing: Checkbox(
            value: Provider.of<TaskData>(context).tasks[index].isDone,
            activeColor: Colors.lightBlueAccent,
            onChanged: (value) {
              setState(() {
                Provider.of<TaskData>(context, listen: false).updatedTask(
                    Provider.of<TaskData>(context, listen: false).tasks[index]);
              });
            },
          ),
        );
      },
    );
  }
}
/*
 ListTile (
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
        )
 */
