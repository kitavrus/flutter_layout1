import 'package:flutter/cupertino.dart';

class TaskModel {
  List<String>? tags;
  String? title;
  String? date;
  String? time;
  bool? isCompleted;
  String? remindAt;
  Color? backgroundColorRGB;

  TaskModel({
    this.tags,
    this.title,
    this.date,
    this.time,
    this.isCompleted,
    this.remindAt,
    this.backgroundColorRGB,
  });
}
