import 'dart:ui';

import 'package:flutter/material.dart';

class ClubInfo extends StatefulWidget {
  const ClubInfo({Key? key}) : super(key: key);

  @override
  State<ClubInfo> createState() => _ClubInfoState();
}

class _ClubInfoState extends State<ClubInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Club Info',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
