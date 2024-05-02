// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EndUser _$EndUserFromJson(Map<String, dynamic> json) {
  return _EndUser.fromJson(json);
}

/// @nodoc
mixin _$EndUser {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get hash => throw _privateConstructorUsedError;
  String? get salt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndUserCopyWith<EndUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndUserCopyWith<$Res> {
  factory $EndUserCopyWith(EndUser value, $Res Function(EndUser) then) =
      _$EndUserCopyWithImpl<$Res, EndUser>;
  @useResult
  $Res call({int id, String email, String? hash, String? salt});
}

/// @nodoc
class _$EndUserCopyWithImpl<$Res, $Val extends EndUser>
    implements $EndUserCopyWith<$Res> {
  _$EndUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? hash = freezed,
    Object? salt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      salt: freezed == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EndUserImplCopyWith<$Res> implements $EndUserCopyWith<$Res> {
  factory _$$EndUserImplCopyWith(
          _$EndUserImpl value, $Res Function(_$EndUserImpl) then) =
      __$$EndUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String email, String? hash, String? salt});
}

/// @nodoc
class __$$EndUserImplCopyWithImpl<$Res>
    extends _$EndUserCopyWithImpl<$Res, _$EndUserImpl>
    implements _$$EndUserImplCopyWith<$Res> {
  __$$EndUserImplCopyWithImpl(
      _$EndUserImpl _value, $Res Function(_$EndUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? hash = freezed,
    Object? salt = freezed,
  }) {
    return _then(_$EndUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      salt: freezed == salt
          ? _value.salt
          : salt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndUserImpl implements _EndUser {
  const _$EndUserImpl(
      {required this.id, required this.email, this.hash, this.salt});

  factory _$EndUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$EndUserImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String? hash;
  @override
  final String? salt;

  @override
  String toString() {
    return 'EndUser(id: $id, email: $email, hash: $hash, salt: $salt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.salt, salt) || other.salt == salt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, hash, salt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserImplCopyWith<_$EndUserImpl> get copyWith =>
      __$$EndUserImplCopyWithImpl<_$EndUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EndUserImplToJson(
      this,
    );
  }
}

abstract class _EndUser implements EndUser {
  const factory _EndUser(
      {required final int id,
      required final String email,
      final String? hash,
      final String? salt}) = _$EndUserImpl;

  factory _EndUser.fromJson(Map<String, dynamic> json) = _$EndUserImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String? get hash;
  @override
  String? get salt;
  @override
  @JsonKey(ignore: true)
  _$$EndUserImplCopyWith<_$EndUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CourtAvailability _$CourtAvailabilityFromJson(Map<String, dynamic> json) {
  return _CourtAvailability.fromJson(json);
}

/// @nodoc
mixin _$CourtAvailability {
  int get courtId => throw _privateConstructorUsedError;
  int get courtNumber => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourtAvailabilityCopyWith<CourtAvailability> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourtAvailabilityCopyWith<$Res> {
  factory $CourtAvailabilityCopyWith(
          CourtAvailability value, $Res Function(CourtAvailability) then) =
      _$CourtAvailabilityCopyWithImpl<$Res, CourtAvailability>;
  @useResult
  $Res call({int courtId, int courtNumber, String startTime, String endTime});
}

/// @nodoc
class _$CourtAvailabilityCopyWithImpl<$Res, $Val extends CourtAvailability>
    implements $CourtAvailabilityCopyWith<$Res> {
  _$CourtAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtId = null,
    Object? courtNumber = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_value.copyWith(
      courtId: null == courtId
          ? _value.courtId
          : courtId // ignore: cast_nullable_to_non_nullable
              as int,
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourtAvailabilityImplCopyWith<$Res>
    implements $CourtAvailabilityCopyWith<$Res> {
  factory _$$CourtAvailabilityImplCopyWith(_$CourtAvailabilityImpl value,
          $Res Function(_$CourtAvailabilityImpl) then) =
      __$$CourtAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int courtId, int courtNumber, String startTime, String endTime});
}

/// @nodoc
class __$$CourtAvailabilityImplCopyWithImpl<$Res>
    extends _$CourtAvailabilityCopyWithImpl<$Res, _$CourtAvailabilityImpl>
    implements _$$CourtAvailabilityImplCopyWith<$Res> {
  __$$CourtAvailabilityImplCopyWithImpl(_$CourtAvailabilityImpl _value,
      $Res Function(_$CourtAvailabilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courtId = null,
    Object? courtNumber = null,
    Object? startTime = null,
    Object? endTime = null,
  }) {
    return _then(_$CourtAvailabilityImpl(
      courtId: null == courtId
          ? _value.courtId
          : courtId // ignore: cast_nullable_to_non_nullable
              as int,
      courtNumber: null == courtNumber
          ? _value.courtNumber
          : courtNumber // ignore: cast_nullable_to_non_nullable
              as int,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CourtAvailabilityImpl implements _CourtAvailability {
  const _$CourtAvailabilityImpl(
      {required this.courtId,
      required this.courtNumber,
      required this.startTime,
      required this.endTime});

  factory _$CourtAvailabilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CourtAvailabilityImplFromJson(json);

  @override
  final int courtId;
  @override
  final int courtNumber;
  @override
  final String startTime;
  @override
  final String endTime;

  @override
  String toString() {
    return 'CourtAvailability(courtId: $courtId, courtNumber: $courtNumber, startTime: $startTime, endTime: $endTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourtAvailabilityImpl &&
            (identical(other.courtId, courtId) || other.courtId == courtId) &&
            (identical(other.courtNumber, courtNumber) ||
                other.courtNumber == courtNumber) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, courtId, courtNumber, startTime, endTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CourtAvailabilityImplCopyWith<_$CourtAvailabilityImpl> get copyWith =>
      __$$CourtAvailabilityImplCopyWithImpl<_$CourtAvailabilityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CourtAvailabilityImplToJson(
      this,
    );
  }
}

abstract class _CourtAvailability implements CourtAvailability {
  const factory _CourtAvailability(
      {required final int courtId,
      required final int courtNumber,
      required final String startTime,
      required final String endTime}) = _$CourtAvailabilityImpl;

  factory _CourtAvailability.fromJson(Map<String, dynamic> json) =
      _$CourtAvailabilityImpl.fromJson;

  @override
  int get courtId;
  @override
  int get courtNumber;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  @JsonKey(ignore: true)
  _$$CourtAvailabilityImplCopyWith<_$CourtAvailabilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
