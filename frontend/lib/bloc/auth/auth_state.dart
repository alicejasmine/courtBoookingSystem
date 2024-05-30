import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'auth_state.freezed.dart';



@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool authenticated,
    required String? headsUp,
    required int userId
  }) = _AuthState;

  
  static  AuthState empty() =>  AuthState(
    authenticated: false,
    headsUp: null,
    userId: 0,
  );
}