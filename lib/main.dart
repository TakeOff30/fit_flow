import 'package:fit_flow/widgets/nav_bar.dart';
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  //da settare il Navigator
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}
