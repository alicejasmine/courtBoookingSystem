import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../broadcast_ws_channel.dart';
import '../../models/events.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<BaseEvent, AuthState> {
  late StreamSubscription _channelSubscription;
  String? _jwt;
  final BroadcastWsChannel _channel;

  AuthBloc({required BroadcastWsChannel channel})
      : _channel = channel,
        super(AuthState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);

    /// Handlers for server events
    on<ServerAuthenticatesUser>(_onServerAuthenticatesUser);
    on<ServerEvent>((event, _) => print(event));
    on<ServerLogsOutUser>(_onServerLogsOutUser);


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

  /// Handler for client events
  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<AuthState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  /// Handler for ServerAuthenticatesUser event.
  FutureOr<void> _onServerAuthenticatesUser(
      ServerAuthenticatesUser event, Emitter<AuthState> emit) {
    _jwt = event.jwt;
    emit(state.copyWith(
      authenticated: true,
      headsUp: 'Authentication successful!',
      userId: event.userId,
    ));
  }

  /// Handler for ServerLogsOutUser event.
  FutureOr<void> _onServerLogsOutUser(
      ServerLogsOutUser event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      authenticated: false,
      headsUp: 'Logged out successfully!',
    ));
  }

  /// Sends ClientWantsToLogOut event to server
  void logout() {
    add(ClientWantsToLogOut(
      eventType: ClientWantsToLogOut.name
    ));
  }


}
