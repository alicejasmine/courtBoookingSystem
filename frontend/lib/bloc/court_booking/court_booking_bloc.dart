import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/models/entities.dart';

import '../../broadcast_ws_channel.dart';
import '../../models/events.dart';
import 'court_booking_state.dart';

class CourtBookingBloc extends Bloc<BaseEvent, CourtBookingState> {
  late StreamSubscription _channelSubscription;
  final BroadcastWsChannel _channel;

  CourtBookingBloc({required BroadcastWsChannel channel})
      : _channel = channel,
        super(CourtBookingState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);


    on<ServerSendsUserBookingsToClient>(_onServerSendsUserBookingsToClient);
    on<ServerSendsConfirmationMessageToClient>((event, _) {
      if (state.userBookings.isNotEmpty) {
        fetchUserBookings(state.userBookings.first.userId);
      }
    });
    on<ServerEvent>((event, _) => print(event));

    // Feed deserialized events from server into this bloc
    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => ServerEvent.fromJson(event))
        .listen((event) {
      add(event);
    }, onError: (error) {
      addError(error);
    });
  }

  @override
  Future<void> close() async {
    // Remember to cancel the subscription when no longer needed.
    _channelSubscription.cancel();
    _channel.sink.close();
    super.close();
  }

  /// Handler for client events
  FutureOr<void> _onClientEvent(ClientEvent event,
      Emitter<CourtBookingState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  /// Sends ClientWantsToBookCourt event to the server to book a court
  void bookCourt(CourtBooking booking) {
    add(ClientWantsToBookCourt(
      eventType: ClientWantsToBookCourt.name,
      courtId: booking.courtId,
      userId: booking.userId,
      selectedDate: booking.selectedDate,
      startTime: booking.startTime,
      endTime: booking.endTime,
      creationTime: booking.creationTime,
    ));
  }



  /// Handler for the server sending user bookings to the client
  FutureOr<void> _onServerSendsUserBookingsToClient(
      ServerSendsUserBookingsToClient event,
      Emitter<CourtBookingState> emit) {
    if (event.userBookings.isEmpty) {
      // No bookings
      emit(state.copyWith(
        userBookings: [],
        message: 'No bookings registered',
      ));
    } else {
      emit(state.copyWith(
        userBookings: event.userBookings,
        message: null,
      ));
    }
  }

  /// Sends a request to fetch user bookings from the server.
  void fetchUserBookings(int userId) {
    add(ClientWantsToFetchUserBookings(
      eventType: ClientWantsToFetchUserBookings.name,
      userId: userId,
    ));
  }

  /// Sends a request to fetch user bookings from the server.
  void deleteBooking(int bookingId) {
    add(ClientWantsToDeleteBooking(
      eventType: ClientWantsToDeleteBooking.name,
      bookingId: bookingId,
    ));
  }


}