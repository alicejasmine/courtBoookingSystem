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
class _$EndUserImpl with DiagnosticableTreeMixin implements _EndUser {
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EndUser(id: $id, email: $email, hash: $hash, salt: $salt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EndUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('hash', hash))
      ..add(DiagnosticsProperty('salt', salt));
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
