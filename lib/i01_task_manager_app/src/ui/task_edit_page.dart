import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TaskEditPage extends StatefulWidget {
  const TaskEditPage({Key? key}) : super(key: key);

  @override
  State<TaskEditPage> createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  final _colorItems = <Color>[
    const Color(0xff4beed1),
    const Color(0xfffbe114),
    const Color(0xff3ed1f0),
    const Color(0xffb6adff),
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.brown
  ];

  final TextEditingController _dateTimeController = TextEditingController();
  final TextEditingController _placeController = TextEditingController();

  int _taskTypeIndex = 0;
  @override
  void dispose() {
    // TODO: implement dispose
    _dateTimeController.dispose();
    _placeController.dispose();
    super.dispose();
  }

  Color taskTypeBackgroundColor(int currentIndex, int static) {
    return currentIndex == static ? Colors.black : Colors.white;
  }

  Color taskTypeTextColor(int currentIndex, int static) {
    return currentIndex == static ? Colors.white : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // TODO Не знал о такой штуке
      backgroundColor: Colors.white,
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Color Task',
                    style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ..._colorItems
                          .map(
                            (e) => CircleAvatar(
                              backgroundColor: e,
                              radius: 10,
                            ),
                          )
                          .toList(),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.grey.withOpacity(0.5),
                        foregroundColor: Colors.black,
                        child: const Icon(Icons.add, size: 15),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.grey.withOpacity(0.4),
                    thickness: 1.5,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Deadline',
                    style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                  ),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    controller: _dateTimeController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.calendar_today_outlined),
                        onPressed: () async {
                          final DateTime? dateTime = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now()
                                .subtract(const Duration(days: 60)),
                            lastDate:
                                DateTime.now().add(const Duration(days: 60)),
                          );

                          if (dateTime != null) {
                            _dateTimeController.text =
                                DateFormat('d MMMM y').format(dateTime);
                            // TODO Так можно снять фокус с поля после выбора даты
                            FocusScope.of(context).requestFocus(FocusNode());
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Place',
                    style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                  ),
                  TextField(
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    controller: _placeController,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.location_on_outlined)),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Task Type',
                    style: TextStyle(color: Colors.grey.withOpacity(0.8)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _taskTypeIndex = 0;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          decoration: BoxDecoration(
                            color: taskTypeBackgroundColor(_taskTypeIndex, 0),
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              'Basic',
                              style: TextStyle(
                                color: taskTypeTextColor(_taskTypeIndex, 0),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _taskTypeIndex = 1;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          decoration: BoxDecoration(
                            color: taskTypeBackgroundColor(_taskTypeIndex, 1),
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              'Urgent',
                              style: TextStyle(
                                color: taskTypeTextColor(_taskTypeIndex, 1),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _taskTypeIndex = 2;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 8),
                          decoration: BoxDecoration(
                            color: taskTypeBackgroundColor(_taskTypeIndex, 2),
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              'Important',
                              style: TextStyle(
                                color: taskTypeTextColor(_taskTypeIndex, 2),
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Divider(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xff4beed1),
                        borderRadius: BorderRadius.circular(24)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.file_copy_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Attache File',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(24)),
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
          ],
        ),
      ),
    );
  }
}
