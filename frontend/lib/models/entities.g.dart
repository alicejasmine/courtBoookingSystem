// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUserImpl _$$EndUserImplFromJson(Map<String, dynamic> json) =>
    _$EndUserImpl(
      id: json['id'] as int,
      email: json['email'] as String,
      hash: json['hash'] as String?,
      salt: json['salt'] as String?,
    );

Map<String, dynamic> _$$EndUserImplToJson(_$EndUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'hash': instance.hash,
      'salt': instance.salt,
    };

_$CourtAvailabilityImpl _$$CourtAvailabilityImplFromJson(
        Map<String, dynamic> json) =>
    _$CourtAvailabilityImpl(
      courtId: json['courtId'] as int,
      courtNumber: json['courtNumber'] as int,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
    );

Map<String, dynamic> _$$CourtAvailabilityImplToJson(
        _$CourtAvailabilityImpl instance) =>
    <String, dynamic>{
      'courtId': instance.courtId,
      'courtNumber': instance.courtNumber,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };

_$CourtBookingImpl _$$CourtBookingImplFromJson(Map<String, dynamic> json) =>
    _$CourtBookingImpl(
      bookingId: json['bookingId'] as int,
      courtId: json['courtId'] as int,
      userId: json['userId'] as int,
      selectedDate: DateTime.parse(json['selectedDate'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      creationTime: DateTime.parse(json['creationTime'] as String),
    );

Map<String, dynamic> _$$CourtBookingImplToJson(_$CourtBookingImpl instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'courtId': instance.courtId,
      'userId': instance.userId,
      'selectedDate': instance.selectedDate.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'creationTime': instance.creationTime.toIso8601String(),
    };
