//elemento della lista di esercizi (1 pull up rep...)
import 'package:flutter/material.dart';

class ExerciseItem extends StatelessWidget {
  const ExerciseItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('1'),
        Row(
          children: [],
        )
      ],
    );
  }
}
