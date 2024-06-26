import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/bloc/court_booking/court_booking_bloc.dart';

import 'package:frontend/logger_bloc_observer.dart';
import 'package:logging_appenders/logging_appenders.dart';

import 'package:logging/logging.dart';

import 'bloc/message/message_bloc.dart';

import 'broadcast_ws_channel.dart';
import 'bloc/auth/auth_bloc.dart';
import 'bloc/court_availability/court_availability_bloc.dart';
import 'ui/court_booking_app.dart';

void main() {
  // Configure logging for bloc
  PrintAppender(formatter: const ColorFormatter()).attachToLogger(Logger.root);
  Bloc.observer = LoggerBlocObserver();

  // Connect to WebSocket
  Uri wsUri;
  if (kIsWeb) {
    wsUri = Uri.parse('ws://localhost:8181');

  } else {
    wsUri = Uri.parse('ws://10.0.2.2:8181');

  }
  final broadcastWsChannel = BroadcastWsChannel(wsUri);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(channel: broadcastWsChannel),
        ),
        BlocProvider<CourtAvailabilityBloc>(
        create: (context) => CourtAvailabilityBloc(channel: broadcastWsChannel),
  ),

        BlocProvider<CourtBookingBloc>(
          create: (context) => CourtBookingBloc(channel: broadcastWsChannel),
        ),

        BlocProvider<MessageBloc>(
          create: (context) => MessageBloc(channel: broadcastWsChannel),
        ),
      ],
      child:  CourtBookingApp(),
    ),
  );
}

