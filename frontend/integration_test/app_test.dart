import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/bloc/auth/auth_bloc.dart';
import 'package:frontend/bloc/court_availability/court_availability_bloc.dart';
import 'package:frontend/bloc/court_booking/court_booking_bloc.dart';
import 'package:frontend/bloc/message/message_bloc.dart';
import 'package:frontend/broadcast_ws_channel.dart';
import 'package:frontend/ui/court_booking_app.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  //create booking

  testWidgets('Book a court test', (tester) async {
    final wsUri = Uri.parse('ws://10.0.2.2:8181');
    final broadcastWsChannel = BroadcastWsChannel(wsUri);

    final blocProviders = [
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
    ];

    await tester.pumpWidget(
      MultiBlocProvider(
        providers: blocProviders,
        child: MaterialApp(
          home: CourtBookingApp(),
        ),
      ),
    );

    //Login
    await tester.enterText(find.byKey(Key('email_field')), 'test@gmail.com');
    await tester.enterText(find.byKey(Key('password_field')), 'blabla');
    await tester.tap(find.byKey(Key('signIn_button')));
    await tester.pumpAndSettle();

    await tester.pump(Duration(seconds: 5));

    //Tap on a court slot to select it
    await tester.tap(find.text('16:00 - 17:00'));
    await tester.pumpAndSettle();

    //Tap on the 'Book' button
    await tester.tap(find.text('Book'));
    await tester.pumpAndSettle();

    await tester.pump(Duration(seconds: 3));
    //booked court is no longer visible
    expect(find.text('16:00 - 17:00'), findsNothing);
  });

  testWidgets('Delete a booking test', (tester) async {
    final wsUri = Uri.parse('ws://10.0.2.2:8181');
    final broadcastWsChannel = BroadcastWsChannel(wsUri);

    final blocProviders = [
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
    ];

    await tester.pumpWidget(
      MultiBlocProvider(
        providers: blocProviders,
        child: MaterialApp(
          home: CourtBookingApp(),
        ),
      ),
    );

//Login
    await tester.enterText(find.byKey(Key('email_field')), 'test@gmail.com');
    await tester.enterText(find.byKey(Key('password_field')), 'blabla');
    await tester.tap(find.byKey(Key('signIn_button')));
    await tester.pumpAndSettle();

    await tester.pump(Duration(seconds: 5));

    //Tap on the My Bookings bottom navigation bar item
    await tester.tap(find.text('My Bookings'));
    await tester.pumpAndSettle();

    await tester.pump(Duration(seconds: 5));
    await tester.tap(find.byIcon(Icons.delete).first);
    await tester.pump();
    await tester.pump(Duration(seconds: 5));
    expect(find.text('16:00 - 17:00'), findsNothing);
  });
}

//helpers
extension TesterExtensions on WidgetTester {
  Future<void> enterDigits(String digits) async {
    for (var digit in digits.characters) {
      await tapByKey(Key(digit));
    }
  }

  Future<void> tapByKey(Key key) async {
    await tap(find.byKey(key));
    await pump();
  }
}

extension FinderExtensions on CommonFinders {
  String? displayText() {
    final text = byKey(const Key("Display")).evaluate().single.widget as Text;
    return text.data;
  }
}
