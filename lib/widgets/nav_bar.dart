import 'package:fit_flow/screens/home_screen.dart';
import 'package:fit_flow/screens/workout_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _screens = <Widget>[
    WorkoutScreen(),
    HomeScreen(),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: _screens.elementAt(_selectedIndex),
            ),
            Container(
              height: 1,
              color: Color(0xFF4A4A4A), 
            ),
            BottomNavigationBar(
              backgroundColor: Color(0xFF1E1E1E),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.fitness_center),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month),
                  label: '',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Color(0xFF39FF14),
              unselectedItemColor: Color(0xFFC0C0C0),
              showSelectedLabels: false, 
              showUnselectedLabels: false,
              onTap: _onItemTapped,
            ),
          ],
        ),
      ),
    );
  }
}
