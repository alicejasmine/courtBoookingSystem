
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/entities.dart';

part 'court_availability_state.freezed.dart';

@freezed
class CourtAvailabilityState with _$CourtAvailabilityState {
  const factory CourtAvailabilityState({
    required List<CourtAvailability> courtAvailability,
    String? message,
    required DateTime selectedDate,
  }) = _CourtAvailabilityState;

  factory CourtAvailabilityState.empty() =>  CourtAvailabilityState(
    courtAvailability: [],
    message: null,
    selectedDate: currentDate()
  );

}

DateTime currentDate() {
  DateTime now = new DateTime.now();
  DateTime date = new DateTime(now.year, now.month, now.day);
  return date;
}


