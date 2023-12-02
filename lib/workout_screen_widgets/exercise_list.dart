//lista di esercizi (composto da exercise_item)
import 'package:fit_flow/workout_screen_widgets/exercise_item.dart';
import 'package:flutter/material.dart';

class ExerciseList extends StatelessWidget {
  const ExerciseList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ExerciseItem(), ExerciseItem(), ExerciseItem()],
    );
  }
}
