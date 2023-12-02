import 'package:flutter/material.dart';

//schermata home, i widget della schermata sono in widets/home_widgets
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text('Home'),
      ),
    );
  }
}
