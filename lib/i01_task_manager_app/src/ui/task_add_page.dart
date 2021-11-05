import 'package:flutter/material.dart';

class TaskAddPage extends StatelessWidget {
  const TaskAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Container(
        child: const Center(
          child: Text("ADD NEW TASK"),
        ),
        color: Colors.blue,
      ),
    );
  }
}
