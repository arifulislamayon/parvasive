import 'package:flutter/material.dart';
import 'package:quizapp/profile/profile.dart';
import 'package:quizapp/quizapp/screens/quiz_screen.dart';

import 'calculator/scientificCalculator.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static List<dynamic> _widgetOptions = <Widget>[
    QuizScreen(),
    ScientificCalculator(),
    ProfileScreen(),
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
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.quick_contacts_mail),
                label: "QuizApp",
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: "Calculator",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Weather",
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
