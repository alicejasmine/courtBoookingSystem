import 'dart:ui';

import 'package:flutter/material.dart';

class UserBookings extends StatefulWidget {
  const UserBookings({Key? key}) : super(key: key);

  @override
  State<UserBookings> createState() => _UserBookingsState();
}

class _UserBookingsState extends State<UserBookings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Add your text widget here
        Text(
          'My Bookings',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        // Add other widgets to the column as needed
      ],
    );
  }
}
