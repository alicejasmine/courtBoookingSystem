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
