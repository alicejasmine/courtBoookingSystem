import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String data;

  const Header(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48.0, bottom: 16),
      child: Text(data, style: Theme.of(context).textTheme.headlineMedium),
    );
  }
}
