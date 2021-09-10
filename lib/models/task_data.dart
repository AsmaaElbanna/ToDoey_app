import 'package:flutter/cupertino.dart';
import 'package:to_do_list_app/models/Task.dart';
import 'package:to_do_list_app/screens/add_task_screen.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks =[];

 int taskCount(){
  return tasks.length;
 }

 void addTask(String taskTitle){
   final task = Task(taskTitle,false);
   tasks.add(task);
   notifyListeners();
 }

 void updatedTask(Task task){
   task.toggle();
   notifyListeners();
 }

 void deleteTask(Task task){
   tasks.remove(task);
   notifyListeners();

 }
}