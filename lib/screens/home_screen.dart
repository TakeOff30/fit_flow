// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start, // Allinea gli elementi a sinistra
          children: [
            Row(
              children: [
                Icon(
                  Icons.work,
                  color: Color(0xFF39FF14),
                  size: 36,
                ),
                SizedBox(width: 10), // Spazio tra icona e testo
                Text(
                  'Last Workout:',
                  style: TextStyle(
                    color: Color(0xFF39FF14),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24), // Spazio tra le righe
            Row(
              children: [
                Icon(
                  Icons.timer,
                  color: Color(0xFF39FF14),
                  size: 36,
                ),
                SizedBox(width: 10), // Spazio tra icona e testo
                Text(
                  'Tot Time:',
                  style: TextStyle(
                    color: Color(0xFF39FF14),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 24), // Spazio tra le righe
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xFF39FF14),
                  size: 36,
                ),
                SizedBox(width: 10), // Spazio tra icona e testo
                Text(
                  'Streak:',
                  style: TextStyle(
                    color: Color(0xFF39FF14),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
