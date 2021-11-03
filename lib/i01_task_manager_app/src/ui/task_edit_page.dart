import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskEditPage extends StatelessWidget {
  const TaskEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Task"),
        backgroundColor: Colors.white,
        foregroundColor:
            Colors.black, // TODO можно так задать цвет кнопки назад
        elevation: 0,
        // iconTheme: IconTheme.of(context).copyWith(color: Colors.black), // TODO можно так задать цвет кнопки назад
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Expanded(
              child: Placeholder(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12)),
                child: const Center(
                  child: Text(
                    'Save Task',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
