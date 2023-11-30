import './exerciseType.dart';

//superclasse Exercise che contiene le informazioni di base dell'esercizio
//è ereditata da ExerciseRepetions e ExerciseIsometric che sfruttano le sue
//informazioni
class Exercise {
  final ExerciseType _exeInfo;
  final int _sets;
  int _setsDone = 0;

  Exercise(this._exeInfo, this._sets);

  ExerciseType get exeinfo => _exeInfo;
  int get sets => _sets;
  int get setsDone => _setsDone;

  void addSetDone() {
    _setsDone++;
  }
}
