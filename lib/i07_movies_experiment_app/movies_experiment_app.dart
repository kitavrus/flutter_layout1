import 'package:flutter/material.dart';
import 'package:flutter_layout1/i07_movies_experiment_app/ui/movies_experiment_home_page.dart';

class MoviesExperimentApp extends StatelessWidget {
  const MoviesExperimentApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoviesExperimentHomePage(),
    );
  }
}
