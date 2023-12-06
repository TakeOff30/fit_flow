// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:fit_flow/screens/workout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Padding(
        padding: EdgeInsets.all(16.32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WorkoutScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF39FF14), // Colore di sfondo
                  onPrimary: Color(0xFF1E1E1E), // Colore del testo
                  minimumSize: Size.fromHeight(100), // Altezza fissa di 100
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Corner radius di 20
                  ),
                ),
                child: Text(
                  'Create Workout',
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