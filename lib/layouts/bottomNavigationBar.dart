import 'package:flutter/material.dart';
import 'package:pertemuan_3/layouts/profile.dart';

class MyBottomnavigationbar extends StatefulWidget {
  const MyBottomnavigationbar({super.key});

  @override
  State<MyBottomnavigationbar> createState() => _MyBottomnavigationbarState();
}

class _MyBottomnavigationbarState extends State<MyBottomnavigationbar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List<Widget> _widgetOption = <Widget>[
    Image.asset('assets/home.jpeg', fit: BoxFit.contain),
    Image.asset(
      'assets/business.jpeg',
      fit: BoxFit.contain,
    ),
    Image.asset(
      'assets/school.jpg',
      fit: BoxFit.contain,
    ),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment'),
        titleTextStyle: const TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
