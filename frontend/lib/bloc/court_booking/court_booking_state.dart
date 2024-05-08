

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/entities.dart';
part 'court_booking_state.freezed.dart';

@freezed
class CourtBookingState with _$CourtBookingState {
  const factory CourtBookingState({
    required String? confirmationMessage,
    required List<CourtBookingWithCourtNumber> userBookings,
    String? message,

  }) = _CourtBookingState;

  factory CourtBookingState.empty() => const CourtBookingState(
    confirmationMessage: null,
    userBookings: [],
    message: null
  );
}