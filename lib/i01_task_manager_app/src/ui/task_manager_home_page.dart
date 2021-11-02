import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';

class TaskManagerHomePage extends StatelessWidget {
  const TaskManagerHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              bottom: 0,
              right: 16,
              top: 16,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        child: Icon(Icons.apps),
                      ),
                      // Icon(Icons.apps),
                      const Text(
                        'Task Manager',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Stack(
                        children: const [
                          Icon(Coolicons.notification_outline),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Welcome Back!',
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Here\'s Update Today',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        // Spacer(),
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(Coolicons.search),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 43,
                    color: Colors.blue,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 8),
                              child: Text(
                                'Today',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.black,
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          child: Center(
                            child: Text(
                              'Today',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 8),
                              child: Text(
                                'Today',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 7,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 180,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.white.withOpacity(0.70),
                      Colors.white.withOpacity(0.75),
                      Colors.white.withOpacity(0.50),
                      Colors.white.withOpacity(0.25),
                      Colors.white.withOpacity(0.1),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print(' Floating ACTION button');
        },
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        label: const Text('Add Task'),
        icon: const Icon(Icons.add_box),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
