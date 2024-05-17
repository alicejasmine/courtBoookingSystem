import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../broadcast_ws_channel.dart';
import '../../models/events.dart';
import 'court_availability_state.dart';

class ChangeSelectedDataEvent extends BaseEvent {
  ChangeSelectedDataEvent(this.value);
  final DateTime value;
}

class CourtAvailabilityBloc extends Bloc<BaseEvent, CourtAvailabilityState> {
  late StreamSubscription _channelSubscription;
  final BroadcastWsChannel _channel;

  CourtAvailabilityBloc({required BroadcastWsChannel channel})
      : _channel = channel,
        super(CourtAvailabilityState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);
    on<ChangeSelectedDataEvent>(_onChangeSelectedDate);

    on<ServerSendsCourtAvailabilityToClient>(
        _onServerSendsCourtAvailabilityToClient);
    on<ServerSendsConfirmationMessageToClient>((event, _) => fetchCourtAvailability());
    on<ServerEvent>((event, _) => print(event));


    // Feed deserialized events from server into this bloc
    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => ServerEvent.fromJson(event))
        .listen((event) {
      // Dispatch the event to the Bloc
      add(event);
    }, onError: (error) {
      // Add error to the Bloc
      addError(error);
    });
  }

  @override
  Future<void> close() async {
    // Remember to cancel the subscription when no longer needed.
    _channelSubscription.cancel();
    // And close the socket
    _channel.sink.close();
    super.close();
  }

  void _onChangeSelectedDate(ChangeSelectedDataEvent event, Emitter<CourtAvailabilityState> emit) {
    emit(state.copyWith(selectedDate: event.value));
    add(ClientWantsToFetchCourtAvailability(
      eventType: ClientWantsToFetchCourtAvailability.name,
      selectedDate: state.selectedDate,
    ));
  }

  void fetchCourtAvailability() {
    print('Fetching court availability for date: ${state.selectedDate}');
    add(ClientWantsToFetchCourtAvailability(
      eventType: ClientWantsToFetchCourtAvailability.name,
      selectedDate: state.selectedDate,
    ));
  }

  FutureOr<void> _onClientEvent(
      ClientEvent event, Emitter<CourtAvailabilityState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onServerSendsCourtAvailabilityToClient(
      ServerSendsCourtAvailabilityToClient event,
      Emitter<CourtAvailabilityState> emit) {
    if (event.courtAvailability.isEmpty) {
      //No courts available for the selected date
      emit(state.copyWith(
        courtAvailability: [],
        message: 'No courts available for the selected date.',
      ));
    } else {
      emit(state.copyWith(
        courtAvailability: event.courtAvailability,
        message: null,
      ));
    }
  }
}
