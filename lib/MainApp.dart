import 'package:fit_flow/screens/calendar_screen.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/workout_screen.dart';
import '../utils.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          WorkoutScreen(),
          HomeScreen(routeToWorkoutScreen: (int index) {
            setState(() {
              _currentIndex = index;
            });
          }),
          CalendarScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: primaryColor,
          selectedItemColor: secondaryColor,
          unselectedItemColor: tertiaryColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Create Workout',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calendar',
            ),
          ],
        ),
      ),
    );
  }
}
