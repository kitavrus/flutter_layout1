import 'package:flutter/material.dart';
import 'package:flutter_layout1/i01_task_manager_app/src/ui/task_manager_home_page.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskManagerHomePage(),
    );
  }
}
