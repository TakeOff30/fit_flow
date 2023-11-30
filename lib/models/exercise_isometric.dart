import './exerciseType.dart';
import './exercise.dart';

//sottoclasse di Exercise che contiene la durata dell'esercizio
class ExerciseIsometric extends Exercise {
  final DateTime _duration;

  ExerciseIsometric(int sets, ExerciseType exeInfo, this._duration)
      : super(exeInfo, sets);

  DateTime get duration => _duration;
}
