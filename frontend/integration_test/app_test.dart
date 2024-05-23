import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend/bloc/auth/auth_bloc.dart';
import 'package:frontend/bloc/court_availability/court_availability_bloc.dart';
import 'package:frontend/bloc/court_booking/court_booking_bloc.dart';
import 'package:frontend/bloc/message/message_bloc.dart';
import 'package:frontend/broadcast_ws_channel.dart';
import 'package:frontend/ui/court_booking_app.dart';
import 'package:frontend/ui/tabs/home.dart';
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
    await tester.enterText(find.byKey(const Key('email_field')), 'alice@gmail.com');
    await tester.enterText(find.byKey(const Key('password_field')), 'blabla');
    await tester.tap(find.byKey(const Key('signIn_button')));
    await tester.pumpAndSettle();


    //Tap on a court slot to select it
    await tester.tap(find.text('10:00 - 11:00'));
    await tester.pumpAndSettle();

    //Tap on the 'Book' button
    await tester.tap(find.text('Book'));
    await tester.pumpAndSettle();

    //add navigation to user bookings and check there or fix this below
    expect(find.text('Booking successful'), findsOneWidget);
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
    final text = byKey(const Key("Display"))
        .evaluate()
        .single
        .widget as Text;
    return text.data;
  }
}