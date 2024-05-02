import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


part 'entities.freezed.dart';
part 'entities.g.dart';


@freezed
class EndUser with _$EndUser {
  const factory EndUser({
    required int id,
    required String email,
    String? hash,
    String? salt
  }) = _EndUser;

  factory EndUser.fromJson(Map<String, dynamic> json) =>
      _$EndUserFromJson(json);
}


@freezed
class CourtAvailability with _$CourtAvailability {
  const factory CourtAvailability({

    required int courtId,
    required int courtNumber,
    required String startTime,
    required String endTime,
})  = _CourtAvailability;

  factory CourtAvailability.fromJson(Map<String, dynamic> json) =>
      _$CourtAvailabilityFromJson(json);




}