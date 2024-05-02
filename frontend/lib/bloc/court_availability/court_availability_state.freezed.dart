// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'court_availability_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CourtAvailabilityState {
  List<CourtAvailability> get courtAvailability =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourtAvailabilityStateCopyWith<CourtAvailabilityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourtAvailabilityStateCopyWith<$Res> {
  factory $CourtAvailabilityStateCopyWith(CourtAvailabilityState value,
          $Res Function(CourtAvailabilityState) then) =
      _$CourtAvailabilityStateCopyWithImpl<$Res, CourtAvailabilityState>;
  @useResult
  $Res call({List<CourtAvailability> courtAvailability, String? message});
}

/// @nodoc
class _$CourtAvailabilityStateCopyWithImpl<$Res,
        $Val extends CourtAvailabilityState>
    implements $CourtAvailabilityStateCopyWith<$Res> {
  _$CourtAvailabilityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtAvailability = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      courtAvailability: null == courtAvailability
          ? _value.courtAvailability
          : courtAvailability // ignore: cast_nullable_to_non_nullable
              as List<CourtAvailability>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourtAvailabilityStateImplCopyWith<$Res>
    implements $CourtAvailabilityStateCopyWith<$Res> {
  factory _$$CourtAvailabilityStateImplCopyWith(
          _$CourtAvailabilityStateImpl value,
          $Res Function(_$CourtAvailabilityStateImpl) then) =
      __$$CourtAvailabilityStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CourtAvailability> courtAvailability, String? message});
}

/// @nodoc
class __$$CourtAvailabilityStateImplCopyWithImpl<$Res>
    extends _$CourtAvailabilityStateCopyWithImpl<$Res,
        _$CourtAvailabilityStateImpl>
    implements _$$CourtAvailabilityStateImplCopyWith<$Res> {
  __$$CourtAvailabilityStateImplCopyWithImpl(
      _$CourtAvailabilityStateImpl _value,
      $Res Function(_$CourtAvailabilityStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtAvailability = null,
    Object? message = freezed,
  }) {
    return _then(_$CourtAvailabilityStateImpl(
      courtAvailability: null == courtAvailability
          ? _value._courtAvailability
          : courtAvailability // ignore: cast_nullable_to_non_nullable
              as List<CourtAvailability>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CourtAvailabilityStateImpl implements _CourtAvailabilityState {
  const _$CourtAvailabilityStateImpl(
      {required final List<CourtAvailability> courtAvailability, this.message})
      : _courtAvailability = courtAvailability;

  final List<CourtAvailability> _courtAvailability;
  @override
  List<CourtAvailability> get courtAvailability {
    if (_courtAvailability is EqualUnmodifiableListView)
      return _courtAvailability;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courtAvailability);
  }

  @override
  final String? message;

  @override
  String toString() {
    return 'CourtAvailabilityState(courtAvailability: $courtAvailability, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtAvailabilityStateImpl &&
            const DeepCollectionEquality()
                .equals(other._courtAvailability, _courtAvailability) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_courtAvailability), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourtAvailabilityStateImplCopyWith<_$CourtAvailabilityStateImpl>
      get copyWith => __$$CourtAvailabilityStateImplCopyWithImpl<
          _$CourtAvailabilityStateImpl>(this, _$identity);
}

abstract class _CourtAvailabilityState implements CourtAvailabilityState {
  const factory _CourtAvailabilityState(
      {required final List<CourtAvailability> courtAvailability,
      final String? message}) = _$CourtAvailabilityStateImpl;

  @override
  List<CourtAvailability> get courtAvailability;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CourtAvailabilityStateImplCopyWith<_$CourtAvailabilityStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
