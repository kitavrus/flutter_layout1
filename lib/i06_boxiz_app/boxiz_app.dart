import 'package:flutter/material.dart';
import 'package:flutter_layout1/i06_boxiz_app/ui/boxiz_home_page.dart';

class BoxizApp extends StatelessWidget {
  const BoxizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BoxizHomePage(),
    );
  }
}
