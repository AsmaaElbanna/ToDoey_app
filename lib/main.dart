import 'package:flutter/material.dart';
import 'package:to_do_list_app/models/task_data.dart';
import 'package:to_do_list_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

