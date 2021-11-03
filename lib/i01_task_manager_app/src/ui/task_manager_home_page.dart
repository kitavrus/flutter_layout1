import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout1/i01_task_manager_app/src/data/fake_tasks.dart';

class TaskManagerHomePage extends StatefulWidget {
  const TaskManagerHomePage({Key? key}) : super(key: key);

  @override
  State<TaskManagerHomePage> createState() => _TaskManagerHomePageState();
}

class _TaskManagerHomePageState extends State<TaskManagerHomePage> {
  int _tabIndex = 0;

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
                  SizedBox(
                    height: 36,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabIndex = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              // color: Colors.black,
                              color: _tabIndex == 0
                                  ? Colors.black
                                  : Colors.transparent,
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 36.0),
                            child: Center(
                              child: Text(
                                'Today',
                                style: TextStyle(
                                  color: _tabIndex == 0
                                      ? Colors.white
                                      : Colors.black,
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabIndex = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: _tabIndex == 1
                                  ? Colors.black
                                  : Colors.transparent,
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 36.0),
                            child: Center(
                              child: Text(
                                'Upcoming',
                                style: TextStyle(
                                  color: _tabIndex == 1
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _tabIndex = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: _tabIndex == 2
                                  ? Colors.black
                                  : Colors.transparent,
                            ),
                            padding:
                                const EdgeInsets.symmetric(horizontal: 36.0),
                            child: Center(
                              child: Text(
                                'Task Done',
                                style: TextStyle(
                                  color: _tabIndex == 2
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // TODO Не пойму почему тут высота 36  SizeBox и ConstrainedBox не работает ?
                        // Center(
                        //   child: Container(
                        //     decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(16),
                        //       // color: Colors.black,
                        //     ),
                        //     child: const Padding(
                        //       padding: EdgeInsets.symmetric(
                        //           horizontal: 32.0, vertical: 8),
                        //       child: Text(
                        //         'Task Done',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Expanded(
                    child: IndexedStack(
                      index: _tabIndex,
                      children: [
                        ListView.builder(
                            itemCount: fakeTodayTask.length,
                            itemBuilder: (context, index) {
                              final backgroundColorRGB =
                                  fakeTodayTask[index].backgroundColorRGB ??
                                      Colors.yellow;
                              final title = fakeTodayTask[index].title ?? "";
                              final date = fakeTodayTask[index].date ?? "";
                              final time = fakeTodayTask[index].time ?? "";
                              final remindAt =
                                  fakeTodayTask[index].remindAt ?? "";
                              final timeAndRemindAt = remindAt != ''
                                  ? time + " (Remind At $remindAt)"
                                  : time;

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Container(
                                  // height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: backgroundColorRGB,
                                    // color: Colors.yellow,
                                  ),
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 28,
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: ListView.builder(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount: fakeTodayTask[index]
                                                    .tags
                                                    ?.length,
                                                itemBuilder: (context, index2) {
                                                  final _tag =
                                                      fakeTodayTask[index]
                                                              .tags?[index2] ??
                                                          "";
                                                  return GestureDetector(
                                                    onTap: () {
                                                      // setState(() {
                                                      //   fakeTodayTask[index]
                                                      //           .isCompleted =
                                                      //       !(fakeTodayTask[index]
                                                      //               .isCompleted ??
                                                      //           false);
                                                      // });
                                                      print('GestureDetector');
                                                    },
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8.0),
                                                      child: Container(
                                                        // margin: const EdgeInsets.only(
                                                        //     right: 8),
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 12),
                                                        decoration:
                                                            BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            24),
                                                                border:
                                                                    Border.all(
                                                                  color: Colors
                                                                      .black45,
                                                                )),
                                                        child: Center(
                                                          child: Text(_tag),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(4)),
                                              child: Icon(
                                                Icons.edit,
                                                color: backgroundColorRGB,
                                                size: 14,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Text(
                                          title,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Coolicons.calendar),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            date,
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Icon(Coolicons.clock),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(timeAndRemindAt),
                                          const Spacer(),
                                          Container(
                                            height: 25,
                                            width: 25,
                                            decoration: BoxDecoration(
                                              // borderRadius:
                                              //     BorderRadius.circular(13),
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 2,
                                              ),
                                            ),
                                          ),
                                          // Expanded(child: CircleAvatar())
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                        const Center(
                          child: Text("Upcoming"),
                        ),
                        const Center(
                          child: Text("Task done"),
                        ),
                      ],
                    ),
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
