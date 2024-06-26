import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'entities.dart';

part 'events.freezed.dart';
part 'events.g.dart';

class BaseEvent {}

abstract class ClientEvent extends BaseEvent {
  Map<String, dynamic> toJson();
}

//user auth events

@freezed
class ClientWantsToAuthenticateWithJwt extends ClientEvent
    with _$ClientWantsToAuthenticateWithJwt {
  static const String name = "ClientWantsToAuthenticateWithJwt";
  const factory ClientWantsToAuthenticateWithJwt({
    required String eventType,
    required String jwt,
  }) = _ClientWantsToAuthenticateWithJwt;

  factory ClientWantsToAuthenticateWithJwt.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsToAuthenticateWithJwtFromJson(json);
}

@freezed
class ClientWantsToRegister extends ClientEvent with _$ClientWantsToRegister {
  static const String name = "ClientWantsToRegister";
  const factory ClientWantsToRegister({
    required String eventType,
    required String email,
    required String password,
  }) = _ClientWantsToRegister;

  factory ClientWantsToRegister.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToRegisterFromJson(json);
}


@freezed
class ClientWantsToSignIn extends ClientEvent with _$ClientWantsToSignIn {
  static const String name = "ClientWantsToSignIn";
  const factory ClientWantsToSignIn({
    required String eventType,
    required String email,
    required String password,
  }) = _ClientWantsToSignIn;

  factory ClientWantsToSignIn.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToSignInFromJson(json);
}

class ServerEvent extends BaseEvent {
  static ServerEvent fromJson(Map<String, Object?> json) {
    final type = json['eventType'];
    switch (type) {
      case ServerAuthenticatesUser.name:
        return ServerAuthenticatesUser.fromJson(json);
      case ServerSendsCourtAvailabilityToClient.name:
        return ServerSendsCourtAvailabilityToClient.fromJson(json);
      case ServerSendsUserBookingsToClient.name:
        return ServerSendsUserBookingsToClient.fromJson(json);
      case ServerSendsErrorMessageToClient.name:
        return ServerSendsErrorMessageToClient.fromJson(json);
      case ServerSendsConfirmationMessageToClient.name:
        return ServerSendsConfirmationMessageToClient.fromJson(json);
      case ServerLogsOutUser.name:
        return ServerLogsOutUser.fromJson(json);
      default:
        throw "Unknown event type: $type in $json";
    }
  }
}

@freezed
class ServerAuthenticatesUser extends ServerEvent
    with _$ServerAuthenticatesUser {
  static const String name = "ServerAuthenticatesUser";
  const factory ServerAuthenticatesUser({
    required String eventType,
    required String jwt,
    required int userId,
  }) = _ServerAuthenticatesUser;

  factory ServerAuthenticatesUser.fromJson(Map<String, Object?> json) =>
      _$ServerAuthenticatesUserFromJson(json);
}



@freezed
class ServerSendsErrorMessageToClient extends ServerEvent
    with _$ServerSendsErrorMessageToClient {
  static const String name = "ServerSendsErrorMessageToClient";
  const factory ServerSendsErrorMessageToClient({
    required String eventType,
    required String errorMessage,
    String? receivedMessage,
  }) = _ServerSendsErrorMessageToClient;

  factory ServerSendsErrorMessageToClient.fromJson(Map<String, Object?> json) =>
      _$ServerSendsErrorMessageToClientFromJson(json);
}




@freezed
class ServerSendsConfirmationMessageToClient extends ServerEvent
    with _$ServerSendsConfirmationMessageToClient {
  static const String name = "ServerSendsConfirmationMessageToClient";
  const factory ServerSendsConfirmationMessageToClient({
    required String eventType,
    required String confirmationMessage,
  }) = _ServerSendsConfirmationMessageToClient;

  factory ServerSendsConfirmationMessageToClient.fromJson(Map<String, Object?> json) =>
      _$ServerSendsConfirmationMessageToClientFromJson(json);
}



// court availability events

@freezed
class ClientWantsToFetchCourtAvailability extends ClientEvent
    with _$ClientWantsToFetchCourtAvailability {
  static const String name = "ClientWantsToFetchCourtAvailability";
  const factory ClientWantsToFetchCourtAvailability({
    required String eventType,
    required DateTime selectedDate,
  }) = _ClientWantsToFetchCourtAvailability;

  factory ClientWantsToFetchCourtAvailability.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsToFetchCourtAvailabilityFromJson(json);


}

@freezed
class ServerSendsCourtAvailabilityToClient extends ServerEvent with _$ServerSendsCourtAvailabilityToClient {
  static const String name = "ServerSendsCourtAvailabilityToClient";
  const factory ServerSendsCourtAvailabilityToClient({
    required String eventType,
    required List<CourtAvailability> courtAvailability,
    String? message,
  }) = _ServerSendsCourtAvailabilityToClient;

  factory ServerSendsCourtAvailabilityToClient.fromJson(Map<String, dynamic> json) =>
      _$ServerSendsCourtAvailabilityToClientFromJson(json);
}

//court booking events

@freezed
class ClientWantsToBookCourt extends ClientEvent
    with _$ClientWantsToBookCourt {
  static const String name = "ClientWantsToBookCourt";
  const factory ClientWantsToBookCourt({
    required String eventType,
    required int courtId,
    required int userId,
    required DateTime selectedDate,
    required String startTime,
    required String endTime,
    required DateTime creationTime,
  }) = _ClientWantsToBookCourt;

  factory ClientWantsToBookCourt.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToBookCourtFromJson(json);
}



@freezed
class ClientWantsToFetchUserBookings extends ClientEvent
    with _$ClientWantsToFetchUserBookings {
  static const String name = "ClientWantsToFetchUserBookings";
  const factory ClientWantsToFetchUserBookings({
    required String eventType,
    required int userId,
  }) = _ClientWantsToFetchUserBookings;

  factory ClientWantsToFetchUserBookings.fromJson(
      Map<String, Object?> json) =>
      _$ClientWantsToFetchUserBookingsFromJson(json);
}


@freezed
class ServerSendsUserBookingsToClient extends ServerEvent with _$ServerSendsUserBookingsToClient {
  static const String name = "ServerSendsUserBookingsToClient";
  const factory ServerSendsUserBookingsToClient({
    required String eventType,
    required List<CourtBookingWithCourtNumber> userBookings,
    String? message,
  }) = _ServerSendsUserBookingsToClient;

  factory ServerSendsUserBookingsToClient.fromJson(Map<String, dynamic> json) =>
      _$ServerSendsUserBookingsToClientFromJson(json);
}

//delete booking

@freezed
class ClientWantsToDeleteBooking extends ClientEvent
    with _$ClientWantsToDeleteBooking {
  static const String name = "ClientWantsToDeleteBooking";
  const factory ClientWantsToDeleteBooking({
    required String eventType,
    required int bookingId,
  }) = _ClientWantsToDeleteBooking;

  factory ClientWantsToDeleteBooking.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToDeleteBookingFromJson(json);
}


//log out

@freezed
class ClientWantsToLogOut extends ClientEvent with _$ClientWantsToLogOut {
  static const String name = "ClientWantsToLogOut";
  const factory ClientWantsToLogOut({required String eventType}) = _ClientWantsToLogOut;

  factory ClientWantsToLogOut.fromJson(Map<String, Object?> json) =>
      _$ClientWantsToLogOutFromJson(json);
}


@freezed
class ServerLogsOutUser extends ServerEvent
    with _$ServerLogsOutUser {
  static const String name = "ServerLogsOutUser";
  const factory ServerLogsOutUser({
    required String eventType,
  }) = _ServerLogsOutUser;

  factory ServerLogsOutUser.fromJson(Map<String, Object?> json) =>
      _$ServerLogsOutUserFromJson(json);
}