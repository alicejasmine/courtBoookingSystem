import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/broadcast_ws_channel.dart';
import 'package:frontend/models/events.dart';

import 'message_state.dart';

/// Bloc responsible for managing messages received from the server: either error messages or confirmation messages

class MessageBloc extends Bloc<ServerEvent, BaseMessageState> {
  final BroadcastWsChannel channel;
  late StreamSubscription<ServerEvent> _channelSubscription;

  MessageBloc({required this.channel}) : super(NoMessageState()) {
    on<ServerEvent>(_onServerEvent);

    _channelSubscription = channel.stream
        .map((event) => jsonDecode(event))
        .map((event) => ServerEvent.fromJson(event))
        .listen(add, onError: addError);
  }

  @override
  Future<void> close() async {
    super.close();
    _channelSubscription.cancel();
  }

  /// Handles incoming server events and updates the message state
  FutureOr<void> _onServerEvent(
      ServerEvent event, Emitter<BaseMessageState> emit) {
    if (event is ServerSendsErrorMessageToClient) {
      emit(MessageState(message: event.errorMessage));
    }

    else if (event is ServerSendsConfirmationMessageToClient){
      emit(MessageState(message: event.confirmationMessage));
    }

    else {
      emit(NoMessageState());
    }
  }
}