import './exerciseType.dart';
import './exercise.dart';

//sottoclasse di Exercise che contiene la durata dell'esercizio
class ExerciseIsometric extends Exercise {
  final Duration _duration;

  ExerciseIsometric(int sets, ExerciseType exeInfo, this._duration)
      : super(exeInfo, sets);

  Duration get duration => _duration;
}
