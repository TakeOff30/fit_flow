//funzioni di utilità, che possono servire a qualsiai cosa ma che non rientrano
//nella responsabilità di nessuna classe
import 'package:fit_flow/models/exercise.dart';
import 'package:fit_flow/models/exerciseType.dart';
import 'package:fit_flow/models/exercise_isometric.dart';
import 'package:fit_flow/models/exercise_repetitions.dart';
import 'package:fit_flow/models/muscles.dart';
import 'package:fit_flow/models/workout.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

//mocks
Exercise exercise =
    ExerciseRepetitions(5, ExerciseType('Push ups', Muscle.Chest), 10);
Workout esempio1 =
    Workout.withExercises('Esempio1', DateTime.now(), [exercise]);

//available exercises
Exercise pushUpIso = ExerciseIsometric(
    5, ExerciseType('Push ups', Muscle.Chest), Duration(seconds: 60));

//styles
Color primaryColor = Color(0xFF1E1E1E);
Color secondaryColor = Color(0xFF39FF14);
Color tertiaryColor = Color(0xFFC0C0C0);

//utility functions
String generateUuid() {
  final uuid = Uuid();
  return uuid.v4(); // Generate a random UUID (version 4)
}
