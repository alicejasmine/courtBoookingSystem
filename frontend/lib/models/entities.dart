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
