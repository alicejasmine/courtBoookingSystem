import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/auth/auth_bloc.dart';
import 'package:frontend/ui/authenticate_form.dart';

import 'court_booking_app.dart';
import 'tabs/club_info.dart';
import 'tabs/home.dart';
import 'tabs/user_bookings.dart';



class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

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
        title: Row(
          children: [

            Image.asset(
              'assets/images/logo_white.png',
              height: 40,
            ),
            const SizedBox(width: 15),

            Text(
              'Squash Club',
              style: const TextStyle(color: Colors.white),
            ),
            const Spacer(),
            IconButton(
                icon: Icon(Icons.logout),
                onPressed: ()  => _logOut()),
          ],
        ),
        backgroundColor:  Theme.of(context).colorScheme.primary,
      ),
      body: _pages[_selectedIndex],
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
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
      ),
    );
  }

  void _logOut() {

    context.read<AuthBloc>().logout();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => CourtBookingApp(),
      ),
    );
  }
}


