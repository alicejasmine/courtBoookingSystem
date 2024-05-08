// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClientWantsToAuthenticateWithJwtImpl
    _$$ClientWantsToAuthenticateWithJwtImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToAuthenticateWithJwtImpl(
          eventType: json['eventType'] as String,
          jwt: json['jwt'] as String,
        );

Map<String, dynamic> _$$ClientWantsToAuthenticateWithJwtImplToJson(
        _$ClientWantsToAuthenticateWithJwtImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'jwt': instance.jwt,
    };

_$ClientWantsToRegisterImpl _$$ClientWantsToRegisterImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToRegisterImpl(
      eventType: json['eventType'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ClientWantsToRegisterImplToJson(
        _$ClientWantsToRegisterImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'email': instance.email,
      'password': instance.password,
    };

_$ClientWantsToSignInImpl _$$ClientWantsToSignInImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToSignInImpl(
      eventType: json['eventType'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ClientWantsToSignInImplToJson(
        _$ClientWantsToSignInImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'email': instance.email,
      'password': instance.password,
    };

_$ServerAuthenticatesUserImpl _$$ServerAuthenticatesUserImplFromJson(
        Map<String, dynamic> json) =>
    _$ServerAuthenticatesUserImpl(
      eventType: json['eventType'] as String,
      jwt: json['jwt'] as String,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$ServerAuthenticatesUserImplToJson(
        _$ServerAuthenticatesUserImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'jwt': instance.jwt,
      'userId': instance.userId,
    };

_$ServerSendsErrorMessageToClientImpl
    _$$ServerSendsErrorMessageToClientImplFromJson(Map<String, dynamic> json) =>
        _$ServerSendsErrorMessageToClientImpl(
          eventType: json['eventType'] as String,
          errorMessage: json['errorMessage'] as String,
          receivedMessage: json['receivedMessage'] as String,
        );

Map<String, dynamic> _$$ServerSendsErrorMessageToClientImplToJson(
        _$ServerSendsErrorMessageToClientImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'errorMessage': instance.errorMessage,
      'receivedMessage': instance.receivedMessage,
    };

_$ClientWantsToFetchCourtAvailabilityImpl
    _$$ClientWantsToFetchCourtAvailabilityImplFromJson(
            Map<String, dynamic> json) =>
        _$ClientWantsToFetchCourtAvailabilityImpl(
          eventType: json['eventType'] as String,
          selectedDate: DateTime.parse(json['selectedDate'] as String),
        );

Map<String, dynamic> _$$ClientWantsToFetchCourtAvailabilityImplToJson(
        _$ClientWantsToFetchCourtAvailabilityImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'selectedDate': instance.selectedDate.toIso8601String(),
    };

_$ServerSendsCourtAvailabilityToClientImpl
    _$$ServerSendsCourtAvailabilityToClientImplFromJson(
            Map<String, dynamic> json) =>
        _$ServerSendsCourtAvailabilityToClientImpl(
          eventType: json['eventType'] as String,
          courtAvailability: (json['courtAvailability'] as List<dynamic>)
              .map((e) => CourtAvailability.fromJson(e as Map<String, dynamic>))
              .toList(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$ServerSendsCourtAvailabilityToClientImplToJson(
        _$ServerSendsCourtAvailabilityToClientImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'courtAvailability': instance.courtAvailability,
      'message': instance.message,
    };

_$ClientWantsToBookCourtImpl _$$ClientWantsToBookCourtImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientWantsToBookCourtImpl(
      eventType: json['eventType'] as String,
      courtId: json['courtId'] as int,
      userId: json['userId'] as int,
      selectedDate: DateTime.parse(json['selectedDate'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      creationTime: DateTime.parse(json['creationTime'] as String),
    );

Map<String, dynamic> _$$ClientWantsToBookCourtImplToJson(
        _$ClientWantsToBookCourtImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'courtId': instance.courtId,
      'userId': instance.userId,
      'selectedDate': instance.selectedDate.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'creationTime': instance.creationTime.toIso8601String(),
    };

_$ServerSendsBookingConfirmationImpl
    _$$ServerSendsBookingConfirmationImplFromJson(Map<String, dynamic> json) =>
        _$ServerSendsBookingConfirmationImpl(
          eventType: json['eventType'] as String,
          confirmationMessage: json['confirmationMessage'] as String,
        );

Map<String, dynamic> _$$ServerSendsBookingConfirmationImplToJson(
        _$ServerSendsBookingConfirmationImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'confirmationMessage': instance.confirmationMessage,
    };

_$ClientWantsToFetchUserBookingsImpl
    _$$ClientWantsToFetchUserBookingsImplFromJson(Map<String, dynamic> json) =>
        _$ClientWantsToFetchUserBookingsImpl(
          eventType: json['eventType'] as String,
          userId: json['userId'] as int,
        );

Map<String, dynamic> _$$ClientWantsToFetchUserBookingsImplToJson(
        _$ClientWantsToFetchUserBookingsImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'userId': instance.userId,
    };

_$ServerSendsUserBookingsToClientImpl
    _$$ServerSendsUserBookingsToClientImplFromJson(Map<String, dynamic> json) =>
        _$ServerSendsUserBookingsToClientImpl(
          eventType: json['eventType'] as String,
          userBookings: (json['userBookings'] as List<dynamic>)
              .map((e) => CourtBooking.fromJson(e as Map<String, dynamic>))
              .toList(),
          message: json['message'] as String?,
        );

Map<String, dynamic> _$$ServerSendsUserBookingsToClientImplToJson(
        _$ServerSendsUserBookingsToClientImpl instance) =>
    <String, dynamic>{
      'eventType': instance.eventType,
      'userBookings': instance.userBookings,
      'message': instance.message,
    };
