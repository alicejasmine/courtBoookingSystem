import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../broadcast_ws_channel.dart';
import '../../models/events.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<BaseEvent, AuthState> {
  late StreamSubscription _channelSubscription;
  String? _jwt;
  final BroadcastWsChannel _channel;
  final FlutterSecureStorage _secureStorage;

  AuthBloc(
      {required BroadcastWsChannel channel,
      required FlutterSecureStorage secureStorage})
      : _channel = channel,
        _secureStorage = secureStorage,
        super(AuthState.empty()) {
    // Handler for client events
    on<ClientEvent>(_onClientEvent);

    // Handlers for server events

    on<ServerAuthenticatesUser>(_onServerAuthenticatesUser);
    on<ServerEvent>((event, _) => print(event));
    on<ServerLogsOutUser>(_onServerLogsOutUser);
    on<ServerAuthenticatesUserWithJwt>(_onServerAuthenticatesUserWithJwt);

    _retrieveJwtToken();

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

  FutureOr<void> _onClientEvent(ClientEvent event, Emitter<AuthState> emit) {
    _channel.sink.add(jsonEncode(event.toJson()));
  }

  FutureOr<void> _onServerAuthenticatesUser(
      ServerAuthenticatesUser event, Emitter<AuthState> emit) {
    _jwt = event.jwt;
    emit(state.copyWith(
      authenticated: true,
      headsUp: 'Authentication successful!',
      userId: event.userId,
    ));

    _secureStorage.write(key: 'jwt_token', value: _jwt!);
  }

  FutureOr<void> _onServerLogsOutUser(
      ServerLogsOutUser event, Emitter<AuthState> emit) {
    emit(state.copyWith(
      authenticated: false,
      headsUp: 'Logged out successfully!',
    ));
  }

  void logout() {
    add(ClientWantsToLogOut(eventType: ClientWantsToLogOut.name));
    _secureStorage.delete(key: 'jwt_token');
  }

  FutureOr<void> _onServerAuthenticatesUserWithJwt(
      ServerAuthenticatesUserWithJwt event, Emitter<AuthState> emit) {
    if (event.jwt != null) {
      _jwt = event.jwt;
      _secureStorage.write(key: 'jwt_token', value: _jwt!);
      emit(state.copyWith(
        authenticated: true,
        headsUp: 'Authentication successful with JWT!',
        userId: event.userId,
      ));
    }
  }

  /// Retrieves JWT token from secure storage
  Future<void> _retrieveJwtToken() async {
    _jwt = await _secureStorage.read(key: 'jwt_token');
    if (_jwt != null) {
      // If JWT token exists, set the authentication state to authenticated
      emit(state.copyWith(authenticated: true));
    }
  }

  void authenticateWithJwt({required String eventType, required String jwt}) {
    add(ClientWantsToAuthenticateWithJwt(
        eventType: ClientWantsToAuthenticateWithJwt.name, jwt: jwt));
  }
}
