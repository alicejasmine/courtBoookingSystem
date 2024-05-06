

import 'package:freezed_annotation/freezed_annotation.dart';
part 'court_booking_state.freezed.dart';

@freezed
class CourtBookingState with _$CourtBookingState {
  const factory CourtBookingState({
    required String? confirmationMessage,
  }) = _CourtBookingState;

  factory CourtBookingState.empty() => const CourtBookingState(
    confirmationMessage: null,
  );
}