import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:frontend/logger_bloc_observer.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:logging/logging.dart';

import 'BroadcastWsChannel.dart';
import 'bloc/auth/booking_bloc.dart';
import 'bloc/court_availability/court_availability_bloc.dart';
import 'ui/court_booking_app.dart';

void main() {
  // Configure logging for bloc
  PrintAppender(formatter: const ColorFormatter()).attachToLogger(Logger.root);
  Bloc.observer = LoggerBlocObserver();

  // Connect to WebSocket
  final wsUri = Uri.parse('ws://localhost:8181');
  final channel = WebSocketChannel.connect(wsUri);

  final broadcastWsChannel = BroadcastWsChannel(wsUri);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BookingBloc>(
          create: (context) => BookingBloc(channel: broadcastWsChannel),
        ),
        BlocProvider<CourtAvailabilityBloc>(
        create: (context) => CourtAvailabilityBloc(channel: broadcastWsChannel),
  ),
      ],
      child:  CourtBookingApp(),
    ),
  );
}