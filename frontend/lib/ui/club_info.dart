import 'dart:ui';

import 'package:flutter/material.dart';

import 'nav_bar.dart';

class ClubInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Club info'),
      ),
      bottomNavigationBar: NavBar(
      ),
    );
  }
}