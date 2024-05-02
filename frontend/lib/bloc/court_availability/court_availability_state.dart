
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/entities.dart';

part 'court_availability_state.freezed.dart';

@freezed
class CourtAvailabilityState with _$CourtAvailabilityState {
  const factory CourtAvailabilityState({
    required List<CourtAvailability> courtAvailability,
    String? message,
  }) = _CourtAvailabilityState;

  factory CourtAvailabilityState.empty() => const CourtAvailabilityState(
    courtAvailability: [],
    message: null,
  );

}


