import 'package:flutter/material.dart';
import 'package:flutter_layout1/i01_task_manager_app/src/ui/task_manager_home_page.dart';
import 'package:get/get.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskManagerHomePage(),
    );
  }
}
