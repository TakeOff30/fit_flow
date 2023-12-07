//modal degli esercizi con la lista di esercizi (exercise_item)
import 'package:flutter/material.dart';


class ExerciseModal extends StatefulWidget {
  @override
  _ExerciseModalState createState() => _ExerciseModalState();
}

class _ExerciseModalState extends State<ExerciseModal> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Exercise _exercise = Exercise();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Number of Sets'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of sets';
                  }
                  return null;
                },
                onSaved: (value) {
                  _exercise.sets = int.parse(value!);
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Number of Repetitions'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the number of repetitions';
                  }
                  return null;
                },
                onSaved: (value) {
                  _exercise.repetitions = int.parse(value!);
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Weight (kg)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the weight';
                  }
                  return null;
                },
                onSaved: (value) {
                  _exercise.weight = double.parse(value!);
                },
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Rest Time (seconds)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the rest time';
                  }
                  return null;
                },
                onSaved: (value) {
                  _exercise.restTime = int.parse(value!);
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // TODO: Process the exercise data (e.g., save to a database)
                    print('Exercise: $_exercise');
                  }
                },
                child: Text('Create Exercise'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}