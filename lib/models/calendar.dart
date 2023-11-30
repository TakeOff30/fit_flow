import './workout.dart';

//classe che contiene una lista di workout da inserire a calendario
//i metodi permettono di modificarla e ottenere informazioni su di essa
class Calendar {
  List<Workout> _programmedWorkouts = [];

  Calendar(this._programmedWorkouts);

  void addWorkout(Workout toAdd) {
    _programmedWorkouts.add(toAdd);
  }

  Iterable<Workout> getWorkoutByDate(DateTime date) {
    List<Workout> result = _programmedWorkouts
        .where((workout) => workout.dueDate == date)
        .toList();
    return result;
  }

  void removeWorkouts(String id) {
    Workout toRemove =
        _programmedWorkouts.firstWhere((workout) => workout.id == id);
    _programmedWorkouts.remove(toRemove);
  }
}
