import 'package:flutter/material.dart';

import 'home.dart';
import 'club_info.dart';
import 'user_bookings.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: IndexedStack(
        index: _currentIndex, // Display page at current index
        children: [
          Home(),
          UserBookings(),
          ClubInfo(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_tennis),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'My bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Club Info',
          ),
        ],
        selectedItemColor: Colors.amber[800], // Highlight selected item
        onTap: _onItemTapped,
      ),
    );
  }
}