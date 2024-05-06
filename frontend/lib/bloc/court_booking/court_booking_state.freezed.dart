// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'court_booking_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourtBookingState {
  String? get confirmationMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourtBookingStateCopyWith<CourtBookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourtBookingStateCopyWith<$Res> {
  factory $CourtBookingStateCopyWith(
          CourtBookingState value, $Res Function(CourtBookingState) then) =
      _$CourtBookingStateCopyWithImpl<$Res, CourtBookingState>;
  @useResult
  $Res call({String? confirmationMessage});
}

/// @nodoc
class _$CourtBookingStateCopyWithImpl<$Res, $Val extends CourtBookingState>
    implements $CourtBookingStateCopyWith<$Res> {
  _$CourtBookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmationMessage = freezed,
  }) {
    return _then(_value.copyWith(
      confirmationMessage: freezed == confirmationMessage
          ? _value.confirmationMessage
          : confirmationMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourtBookingStateImplCopyWith<$Res>
    implements $CourtBookingStateCopyWith<$Res> {
  factory _$$CourtBookingStateImplCopyWith(_$CourtBookingStateImpl value,
          $Res Function(_$CourtBookingStateImpl) then) =
      __$$CourtBookingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? confirmationMessage});
}

/// @nodoc
class __$$CourtBookingStateImplCopyWithImpl<$Res>
    extends _$CourtBookingStateCopyWithImpl<$Res, _$CourtBookingStateImpl>
    implements _$$CourtBookingStateImplCopyWith<$Res> {
  __$$CourtBookingStateImplCopyWithImpl(_$CourtBookingStateImpl _value,
      $Res Function(_$CourtBookingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmationMessage = freezed,
  }) {
    return _then(_$CourtBookingStateImpl(
      confirmationMessage: freezed == confirmationMessage
          ? _value.confirmationMessage
          : confirmationMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CourtBookingStateImpl implements _CourtBookingState {
  const _$CourtBookingStateImpl({required this.confirmationMessage});

  @override
  final String? confirmationMessage;

  @override
  String toString() {
    return 'CourtBookingState(confirmationMessage: $confirmationMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtBookingStateImpl &&
            (identical(other.confirmationMessage, confirmationMessage) ||
                other.confirmationMessage == confirmationMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmationMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourtBookingStateImplCopyWith<_$CourtBookingStateImpl> get copyWith =>
      __$$CourtBookingStateImplCopyWithImpl<_$CourtBookingStateImpl>(
          this, _$identity);
}

abstract class _CourtBookingState implements CourtBookingState {
  const factory _CourtBookingState(
      {required final String? confirmationMessage}) = _$CourtBookingStateImpl;

  @override
  String? get confirmationMessage;
  @override
  @JsonKey(ignore: true)
  _$$CourtBookingStateImplCopyWith<_$CourtBookingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
