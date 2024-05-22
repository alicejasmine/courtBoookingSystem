import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../bloc/auth/auth_bloc.dart';
import '../bloc/auth/auth_state.dart';
import 'authenticate_form.dart';
import 'common.dart';
import 'navigation.dart';


class CourtBookingApp extends StatefulWidget {
  const CourtBookingApp({Key? key}) : super(key: key);

  @override
  _CourtBookingAppState createState() => _CourtBookingAppState();
}

class _CourtBookingAppState extends State<CourtBookingApp> {
  final _secureStorage = FlutterSecureStorage();


  @override
  void initState() {
    super.initState();
    _checkAuthentication();
  }

  Future<void> _checkAuthentication() async {
    final jwtToken = await _secureStorage.read(key: 'jwt_token');
    if (jwtToken != null) {

      context.read<AuthBloc>().authenticateWithJwt( eventType: 'ClientWantsToAuthenticateWithJwt',
        jwt: jwtToken,);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Color(0xFF41437F);
    final Color primaryVariant = Color(0xFF7573B4);
    final Color backgroundColor = Color(0xFFF1EDFF);
    final Color accentColor = Color(0xFF00C894);

    final theme = ThemeData(
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        primaryContainer: primaryVariant,
        background: backgroundColor,
        secondary: accentColor,
      ),
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: primaryColor,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: BorderSide(color: primaryColor),
        ),
      ),
    );

    return MaterialApp(
      title: 'Court Booking System',
      theme: theme,
      themeMode: ThemeMode.light,
      home: Scaffold(
        backgroundColor: backgroundColor,
        body: BlocConsumer<AuthBloc, AuthState>(
          listenWhen: (previous, current) => current.headsUp != null,
          listener: (context, state) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.headsUp!)));
            if (state.authenticated) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => Navigation(),
                ),
              );
            }
          },
          builder: (context, state) => SingleChildScrollView(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 80),
                    Center(
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 50,
                      ),
                    ),
                    const SizedBox(height: 50),
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
