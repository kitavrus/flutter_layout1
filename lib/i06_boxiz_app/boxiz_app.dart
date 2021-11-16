import 'package:flutter/material.dart';
import 'package:flutter_layout1/i06_boxiz_app/theme/boxiz_theme.dart';
import 'package:flutter_layout1/i06_boxiz_app/ui/boxiz_home_page.dart';

class BoxizApp extends StatelessWidget {
  const BoxizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
            background: BoxizTheme.backgroundColor,
            secondary: BoxizTheme.accentColor),
        scaffoldBackgroundColor: BoxizTheme.backgroundColor,
      ),
      home: BoxizHomePage(),
    );
  }
}
