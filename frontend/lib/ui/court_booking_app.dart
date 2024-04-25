import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/booking_bloc.dart';
import 'package:frontend/bloc/booking_state.dart';

import 'authenticate_form.dart';
import 'common.dart';
import 'home.dart';
import 'nav_bar.dart';


class CourtBookingApp extends StatelessWidget {
  const CourtBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Court Booking System',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.light),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple, brightness: Brightness.dark),
      ),
      themeMode: ThemeMode.system,
      home: Scaffold(
        body: BlocConsumer<BookingBloc, BookingState>(
          listenWhen: (previous, current) => current.headsUp != null,
          listener: (context, state) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.headsUp!)));
            if (state.authenticated) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => Home(),
                ),
              );
            }
          },
          builder: (context, state) =>
              SingleChildScrollView(
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 400),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Header("Authenticate"),
                        const AuthenticateForm(),

                      ],
                    ),
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
