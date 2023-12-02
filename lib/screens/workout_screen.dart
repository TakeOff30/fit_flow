import 'package:fit_flow/models/exercise.dart';
import 'package:fit_flow/models/workout.dart';
import 'package:fit_flow/workout_screen_widgets/exercise_list.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  String _name = '';
  DateTime _dueDate = DateTime.now();
  List<Exercise> selectedExercises = [];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 70, 20, 20),
        // ignore: prefer_const_constructors
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Create Workout'),
            Text(_name),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Name:'),
                Container(
                    width: MediaQuery.of(context).size.width * .6,
                    height: 50,
                    child: TextField(
                        onChanged: (value) {
                          setState(() {
                            _name = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Give a name to your workout',
                          border: OutlineInputBorder(),
                        ))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Date:'),
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                    labelText: 'Pick a date',
                    border: OutlineInputBorder(),
                  )),
                ),
                Icon(Icons.calendar_month)
              ],
            ),
            ExerciseList(),
            TextButton(
                onPressed: () {},
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 30), // Set the desired font size
                ),
                style: ButtonStyle(
                  alignment: Alignment.center,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
