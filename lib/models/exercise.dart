class Exercise {
  final ExerciseType _exeInfo;
  final int _sets;
  int _setsDone = 0;

  Exercise(this._exeInfo, this._sets);

  ExerciseType get exeinfo => _exeInfo;
  int get sets => _sets;

  void addSetDone() {
    _setsDone++;
  }
}
