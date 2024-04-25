import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../models/events.dart';
import 'booking_state.dart';


class BookingBloc extends Bloc<BaseEvent, BookingState> {
  final WebSocketChannel _channel;
  late StreamSubscription _channelSubscription;
  String? _jwt;



  BookingBloc({required channel})
      : _channel = channel,
        super(BookingState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);

    // Handlers for server events

    on<ServerAuthenticatesUser>(_onServerAuthenticatesUser);
    on<ServerSendsErrorMessageToClient>(_onServerSendsErrorMessageToClient);


    // Feed deserialized events from server into this bloc
    _channelSubscription = _channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => ServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    // Remember to cancel the subscription when no longer needed.
    _channelSubscription.cancel();
    // And close the socket
    _channel.sink.close();
    super.close();
  }

  /// Sends ClientWantsToSignIn event to server
  void signIn({required String password, required String email}) {
    add(ClientWantsToSignIn(
      eventType: ClientWantsToSignIn.name,
      email: email,
      password: password,
    ));
  }

  /// Sends ClientWantsToRegister.cs event to server
  void register({required String password, required String email}) {
    add(ClientWantsToRegister(
      eventType: ClientWantsToRegister.name,
      email: email,
      password: password,
    ));
  }


       FutureOr<void> _onClientEvent(ClientEvent event, Emitter<BookingState> emit) {
   _channel.sink.add(jsonEncode(event.toJson()));
   }


       FutureOr<void> _onServerAuthenticatesUser(
      ServerAuthenticatesUser event, Emitter<BookingState> emit) {
     _jwt = event.jwt;
     emit(state.copyWith(
       authenticated: true,
       headsUp: 'Authentication successful!',
     ));
   }
   
  FutureOr<void> _onServerSendsErrorMessageToClient(
     ServerSendsErrorMessageToClient event, Emitter<BookingState> emit) {
    emit(state.copyWith(headsUp: '⚠️ ${event.errorMessage}'));
  }


 }



