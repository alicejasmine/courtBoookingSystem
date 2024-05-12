class BaseMessageState {}

class NoMessageState extends BaseMessageState {}

class MessageState extends BaseMessageState {
  final String message;

  MessageState({required this.message});
}