class ExerciseRepetions extends Exercise {
  final int _repetitions;

  ExerciseRepetions(this.repetitions);

  ExerciseType get exeinfo => _exeInfo;
  int get repetitions => _repetitions;
  int get sets => _sets;

  void addSetDone() {
    _setsDone++;
  }
}
