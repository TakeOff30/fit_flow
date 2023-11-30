import './exercise.dart';
import '../utils.dart';

//classe che contiene le informazioni di ogni
class Workout {
  final String _id = generateUuid();
  final String _name;
  List<Exercise> _exercises = [];
  final DateTime _dueDate;

  Workout(this._name, this._dueDate);
  Workout.withExercises(this._name, this._dueDate, this._exercises);

  String get id => _id;
  String get name => _name;
  DateTime get dueDate => _dueDate;
  List<Exercise> get exercises => _exercises;

  void addExercise(Exercise toAdd) {
    _exercises.add(toAdd);
  }

  int getNumberOfExercises() {
    return _exercises.length;
  }
}
