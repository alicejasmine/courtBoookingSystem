import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../BroadcastWsChannel.dart';
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

    on<ServerSendsBookingConfirmation>(_onServerSendsBookingConfirmation);
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


  FutureOr<void> _onClientEvent(
      ClientEvent event, Emitter<CourtBookingState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }



  FutureOr<void> _onServerSendsBookingConfirmation(
      ServerSendsBookingConfirmation event,
      Emitter<CourtBookingState> emit) {
      emit(state.copyWith(
        confirmationMessage: 'booking confirmed',
      ));
    }


  Future<void> bookCourt(ClientWantsToBookCourt event) async {
    add(event);
  }
}