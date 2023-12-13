// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:fit_flow/models/exercise.dart';
import 'package:fit_flow/models/workout.dart';
import 'package:fit_flow/screens/secondary/calendar_modal.dart';
import 'package:fit_flow/utils.dart';
import 'package:fit_flow/workout_screen_widgets/exercise_list.dart';
import 'package:flutter/material.dart';

class WorkoutScreen extends StatefulWidget {
  WorkoutScreen({super.key});

  @override
  State<WorkoutScreen> createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  String _name = '';
  DateTime _dueDate = DateTime.now();
  List<Exercise> selectedExercises = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: primaryColor,
        padding: EdgeInsets.fromLTRB(20, 70, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Create Workout',
              style: TextStyle(color: tertiaryColor, fontSize: 40),
            ),
            Text(
              _name,
              style: TextStyle(color: tertiaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Name:',
                  style: TextStyle(color: tertiaryColor),
                ),
                Container(
                    width: MediaQuery.of(context).size.width * .6,
                    height: 50,
                    child: TextField(
                        style: TextStyle(color: secondaryColor),
                        onChanged: (value) {
                          setState(() {
                            _name = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelStyle: TextStyle(color: tertiaryColor),
                          labelText: 'Give a name to your workout',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    tertiaryColor), // Set your desired border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    tertiaryColor), // Set your desired border color
                          ),
                        ))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Date:',
                  style: TextStyle(color: tertiaryColor),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  height: 50,
                  child: TextField(
                      decoration: InputDecoration(
                    labelStyle: TextStyle(color: tertiaryColor),
                    labelText: "$_dueDate",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              tertiaryColor), // Set your desired border color
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color:
                              tertiaryColor), // Set your desired border color
                    ),
                  )),
                ),
                IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => CalendarModal(
                          initialDate: _dueDate,
                          updateInitialDate: (date) {
                            setState(() {
                              _dueDate = date;
                            });
                          },
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.calendar_month,
                      color: secondaryColor,
                    ))
              ],
            ),
            ExerciseList(),
            TextButton(
                onPressed: () {},
                child: Text(
                  '+',
                  style: TextStyle(
                      fontSize: 30,
                      color: secondaryColor), // Set the desired font size
                ),
                style: ButtonStyle(
                  alignment: Alignment.center,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 20,
                    color: primaryColor,
                    backgroundColor: secondaryColor,
                  ),
                ))
          ],
        ),
      ),
    ));
  }
}
