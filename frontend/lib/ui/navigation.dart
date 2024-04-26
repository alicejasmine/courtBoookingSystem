import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:frontend/ui/tabs/club_info.dart';
import 'package:frontend/ui/tabs/user_bookings.dart';

import 'tabs/home.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0; // To track the selected tab index

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _pages = [
      const Home(),
      const UserBookings(),
      const ClubInfo(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Squash Club',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.amber,
      ),
      body: _pages[_selectedIndex], // Display the selected page content
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_tennis),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'My Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800], // Customize selected item color
        onTap: _onItemTapped,
      ),
    );
  }
}
