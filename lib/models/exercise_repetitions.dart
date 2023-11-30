import './exerciseType.dart';
import './exercise.dart';

//sottoclasse di Exercise che contiene il numero di ripetizioni dell'esercizio
class ExerciseRepetitions extends Exercise {
  final int _repetitions;

  ExerciseRepetitions(int sets, ExerciseType exeInfo, this._repetitions)
      : super(exeInfo, sets);

  int get repetitions => _repetitions;
}
