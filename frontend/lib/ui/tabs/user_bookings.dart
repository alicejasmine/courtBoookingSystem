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
        Text(
          'My bookings',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
