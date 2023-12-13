// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fit_flow/screens/workout_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Lista di esempio con i nomi degli allenamenti di oggi
  final List<String> todaysWorkouts = ['Workout 1', 'Workout 2', 'Workout 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Welcome Back',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.32),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () => _showTodaysWorkoutsModal(context),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF39FF14),
                      onPrimary: Color(0xFF1E1E1E),
                      minimumSize: Size.fromHeight(100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Today\'s Workouts',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lato',
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  buildRow('assets/icons/back.svg', 'Last Workout:', '45 min'),
                  SizedBox(height: 24),
                  buildRow('assets/icons/timer.svg', 'Tot Time:', '1h 30 min'),
                  SizedBox(height: 24),
                  buildRow('assets/icons/fire.svg', 'Streak:', '5 days'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

    void _showTodaysWorkoutsModal(BuildContext context) {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(10),
            color: Color(0xFF1E1E1E),
            child: ListView.builder(
              itemCount: todaysWorkouts.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Center(
                    child: Text(
                      todaysWorkouts[index],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      );
    }

  Widget buildRow(String iconPath, String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                color: Color(0xFF39FF14),
                width: 32,
                height: 32,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text1,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text2,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}