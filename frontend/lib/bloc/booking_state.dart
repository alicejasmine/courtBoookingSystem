import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../models/entities.dart';
part 'booking_state.freezed.dart';



@freezed
class BookingState with _$BookingState {
  const factory BookingState({
    required bool authenticated,
    required String? headsUp,
  }) = _BookingState;

  
  static BookingState empty() => BookingState(
    authenticated: false,
    headsUp: null,
  );
}