// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ClientWantsToAuthenticateWithJwt _$ClientWantsToAuthenticateWithJwtFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToAuthenticateWithJwt.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToAuthenticateWithJwt {
  String get eventType => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToAuthenticateWithJwtCopyWith<ClientWantsToAuthenticateWithJwt>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToAuthenticateWithJwtCopyWith<$Res> {
  factory $ClientWantsToAuthenticateWithJwtCopyWith(
          ClientWantsToAuthenticateWithJwt value,
          $Res Function(ClientWantsToAuthenticateWithJwt) then) =
      _$ClientWantsToAuthenticateWithJwtCopyWithImpl<$Res,
          ClientWantsToAuthenticateWithJwt>;
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class _$ClientWantsToAuthenticateWithJwtCopyWithImpl<$Res,
        $Val extends ClientWantsToAuthenticateWithJwt>
    implements $ClientWantsToAuthenticateWithJwtCopyWith<$Res> {
  _$ClientWantsToAuthenticateWithJwtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToAuthenticateWithJwtImplCopyWith<$Res>
    implements $ClientWantsToAuthenticateWithJwtCopyWith<$Res> {
  factory _$$ClientWantsToAuthenticateWithJwtImplCopyWith(
          _$ClientWantsToAuthenticateWithJwtImpl value,
          $Res Function(_$ClientWantsToAuthenticateWithJwtImpl) then) =
      __$$ClientWantsToAuthenticateWithJwtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String jwt});
}

/// @nodoc
class __$$ClientWantsToAuthenticateWithJwtImplCopyWithImpl<$Res>
    extends _$ClientWantsToAuthenticateWithJwtCopyWithImpl<$Res,
        _$ClientWantsToAuthenticateWithJwtImpl>
    implements _$$ClientWantsToAuthenticateWithJwtImplCopyWith<$Res> {
  __$$ClientWantsToAuthenticateWithJwtImplCopyWithImpl(
      _$ClientWantsToAuthenticateWithJwtImpl _value,
      $Res Function(_$ClientWantsToAuthenticateWithJwtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
  }) {
    return _then(_$ClientWantsToAuthenticateWithJwtImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToAuthenticateWithJwtImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToAuthenticateWithJwt {
  const _$ClientWantsToAuthenticateWithJwtImpl(
      {required this.eventType, required this.jwt});

  factory _$ClientWantsToAuthenticateWithJwtImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToAuthenticateWithJwtImplFromJson(json);

  @override
  final String eventType;
  @override
  final String jwt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToAuthenticateWithJwt(eventType: $eventType, jwt: $jwt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToAuthenticateWithJwt'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('jwt', jwt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToAuthenticateWithJwtImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToAuthenticateWithJwtImplCopyWith<
          _$ClientWantsToAuthenticateWithJwtImpl>
      get copyWith => __$$ClientWantsToAuthenticateWithJwtImplCopyWithImpl<
          _$ClientWantsToAuthenticateWithJwtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToAuthenticateWithJwtImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToAuthenticateWithJwt
    implements ClientWantsToAuthenticateWithJwt {
  const factory _ClientWantsToAuthenticateWithJwt(
      {required final String eventType,
      required final String jwt}) = _$ClientWantsToAuthenticateWithJwtImpl;

  factory _ClientWantsToAuthenticateWithJwt.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToAuthenticateWithJwtImpl.fromJson;

  @override
  String get eventType;
  @override
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToAuthenticateWithJwtImplCopyWith<
          _$ClientWantsToAuthenticateWithJwtImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToRegister _$ClientWantsToRegisterFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToRegister.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToRegister {
  String get eventType => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToRegisterCopyWith<ClientWantsToRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToRegisterCopyWith<$Res> {
  factory $ClientWantsToRegisterCopyWith(ClientWantsToRegister value,
          $Res Function(ClientWantsToRegister) then) =
      _$ClientWantsToRegisterCopyWithImpl<$Res, ClientWantsToRegister>;
  @useResult
  $Res call({String eventType, String email, String password});
}

/// @nodoc
class _$ClientWantsToRegisterCopyWithImpl<$Res,
        $Val extends ClientWantsToRegister>
    implements $ClientWantsToRegisterCopyWith<$Res> {
  _$ClientWantsToRegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToRegisterImplCopyWith<$Res>
    implements $ClientWantsToRegisterCopyWith<$Res> {
  factory _$$ClientWantsToRegisterImplCopyWith(
          _$ClientWantsToRegisterImpl value,
          $Res Function(_$ClientWantsToRegisterImpl) then) =
      __$$ClientWantsToRegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String email, String password});
}

/// @nodoc
class __$$ClientWantsToRegisterImplCopyWithImpl<$Res>
    extends _$ClientWantsToRegisterCopyWithImpl<$Res,
        _$ClientWantsToRegisterImpl>
    implements _$$ClientWantsToRegisterImplCopyWith<$Res> {
  __$$ClientWantsToRegisterImplCopyWithImpl(_$ClientWantsToRegisterImpl _value,
      $Res Function(_$ClientWantsToRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ClientWantsToRegisterImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToRegisterImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToRegister {
  const _$ClientWantsToRegisterImpl(
      {required this.eventType, required this.email, required this.password});

  factory _$ClientWantsToRegisterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToRegisterImplFromJson(json);

  @override
  final String eventType;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToRegister(eventType: $eventType, email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToRegister'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToRegisterImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToRegisterImplCopyWith<_$ClientWantsToRegisterImpl>
      get copyWith => __$$ClientWantsToRegisterImplCopyWithImpl<
          _$ClientWantsToRegisterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToRegisterImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToRegister implements ClientWantsToRegister {
  const factory _ClientWantsToRegister(
      {required final String eventType,
      required final String email,
      required final String password}) = _$ClientWantsToRegisterImpl;

  factory _ClientWantsToRegister.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToRegisterImpl.fromJson;

  @override
  String get eventType;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToRegisterImplCopyWith<_$ClientWantsToRegisterImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToSignIn _$ClientWantsToSignInFromJson(Map<String, dynamic> json) {
  return _ClientWantsToSignIn.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToSignIn {
  String get eventType => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToSignInCopyWith<ClientWantsToSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToSignInCopyWith<$Res> {
  factory $ClientWantsToSignInCopyWith(
          ClientWantsToSignIn value, $Res Function(ClientWantsToSignIn) then) =
      _$ClientWantsToSignInCopyWithImpl<$Res, ClientWantsToSignIn>;
  @useResult
  $Res call({String eventType, String email, String password});
}

/// @nodoc
class _$ClientWantsToSignInCopyWithImpl<$Res, $Val extends ClientWantsToSignIn>
    implements $ClientWantsToSignInCopyWith<$Res> {
  _$ClientWantsToSignInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToSignInImplCopyWith<$Res>
    implements $ClientWantsToSignInCopyWith<$Res> {
  factory _$$ClientWantsToSignInImplCopyWith(_$ClientWantsToSignInImpl value,
          $Res Function(_$ClientWantsToSignInImpl) then) =
      __$$ClientWantsToSignInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String email, String password});
}

/// @nodoc
class __$$ClientWantsToSignInImplCopyWithImpl<$Res>
    extends _$ClientWantsToSignInCopyWithImpl<$Res, _$ClientWantsToSignInImpl>
    implements _$$ClientWantsToSignInImplCopyWith<$Res> {
  __$$ClientWantsToSignInImplCopyWithImpl(_$ClientWantsToSignInImpl _value,
      $Res Function(_$ClientWantsToSignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ClientWantsToSignInImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToSignInImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToSignIn {
  const _$ClientWantsToSignInImpl(
      {required this.eventType, required this.email, required this.password});

  factory _$ClientWantsToSignInImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToSignInImplFromJson(json);

  @override
  final String eventType;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToSignIn(eventType: $eventType, email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToSignIn'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToSignInImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToSignInImplCopyWith<_$ClientWantsToSignInImpl> get copyWith =>
      __$$ClientWantsToSignInImplCopyWithImpl<_$ClientWantsToSignInImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToSignInImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToSignIn implements ClientWantsToSignIn {
  const factory _ClientWantsToSignIn(
      {required final String eventType,
      required final String email,
      required final String password}) = _$ClientWantsToSignInImpl;

  factory _ClientWantsToSignIn.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToSignInImpl.fromJson;

  @override
  String get eventType;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToSignInImplCopyWith<_$ClientWantsToSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerAuthenticatesUser _$ServerAuthenticatesUserFromJson(
    Map<String, dynamic> json) {
  return _ServerAuthenticatesUser.fromJson(json);
}

/// @nodoc
mixin _$ServerAuthenticatesUser {
  String get eventType => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerAuthenticatesUserCopyWith<ServerAuthenticatesUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerAuthenticatesUserCopyWith<$Res> {
  factory $ServerAuthenticatesUserCopyWith(ServerAuthenticatesUser value,
          $Res Function(ServerAuthenticatesUser) then) =
      _$ServerAuthenticatesUserCopyWithImpl<$Res, ServerAuthenticatesUser>;
  @useResult
  $Res call({String eventType, String jwt, int userId});
}

/// @nodoc
class _$ServerAuthenticatesUserCopyWithImpl<$Res,
        $Val extends ServerAuthenticatesUser>
    implements $ServerAuthenticatesUserCopyWith<$Res> {
  _$ServerAuthenticatesUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerAuthenticatesUserImplCopyWith<$Res>
    implements $ServerAuthenticatesUserCopyWith<$Res> {
  factory _$$ServerAuthenticatesUserImplCopyWith(
          _$ServerAuthenticatesUserImpl value,
          $Res Function(_$ServerAuthenticatesUserImpl) then) =
      __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String jwt, int userId});
}

/// @nodoc
class __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>
    extends _$ServerAuthenticatesUserCopyWithImpl<$Res,
        _$ServerAuthenticatesUserImpl>
    implements _$$ServerAuthenticatesUserImplCopyWith<$Res> {
  __$$ServerAuthenticatesUserImplCopyWithImpl(
      _$ServerAuthenticatesUserImpl _value,
      $Res Function(_$ServerAuthenticatesUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? jwt = null,
    Object? userId = null,
  }) {
    return _then(_$ServerAuthenticatesUserImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAuthenticatesUserImpl
    with DiagnosticableTreeMixin
    implements _ServerAuthenticatesUser {
  const _$ServerAuthenticatesUserImpl(
      {required this.eventType, required this.jwt, required this.userId});

  factory _$ServerAuthenticatesUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAuthenticatesUserImplFromJson(json);

  @override
  final String eventType;
  @override
  final String jwt;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerAuthenticatesUser(eventType: $eventType, jwt: $jwt, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerAuthenticatesUser'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('jwt', jwt))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAuthenticatesUserImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, jwt, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerAuthenticatesUserImplCopyWith<_$ServerAuthenticatesUserImpl>
      get copyWith => __$$ServerAuthenticatesUserImplCopyWithImpl<
          _$ServerAuthenticatesUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerAuthenticatesUserImplToJson(
      this,
    );
  }
}

abstract class _ServerAuthenticatesUser implements ServerAuthenticatesUser {
  const factory _ServerAuthenticatesUser(
      {required final String eventType,
      required final String jwt,
      required final int userId}) = _$ServerAuthenticatesUserImpl;

  factory _ServerAuthenticatesUser.fromJson(Map<String, dynamic> json) =
      _$ServerAuthenticatesUserImpl.fromJson;

  @override
  String get eventType;
  @override
  String get jwt;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$ServerAuthenticatesUserImplCopyWith<_$ServerAuthenticatesUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsErrorMessageToClient _$ServerSendsErrorMessageToClientFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsErrorMessageToClient.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsErrorMessageToClient {
  String get eventType => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String? get receivedMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsErrorMessageToClientCopyWith<ServerSendsErrorMessageToClient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsErrorMessageToClientCopyWith<$Res> {
  factory $ServerSendsErrorMessageToClientCopyWith(
          ServerSendsErrorMessageToClient value,
          $Res Function(ServerSendsErrorMessageToClient) then) =
      _$ServerSendsErrorMessageToClientCopyWithImpl<$Res,
          ServerSendsErrorMessageToClient>;
  @useResult
  $Res call({String eventType, String errorMessage, String? receivedMessage});
}

/// @nodoc
class _$ServerSendsErrorMessageToClientCopyWithImpl<$Res,
        $Val extends ServerSendsErrorMessageToClient>
    implements $ServerSendsErrorMessageToClientCopyWith<$Res> {
  _$ServerSendsErrorMessageToClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? errorMessage = null,
    Object? receivedMessage = freezed,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      receivedMessage: freezed == receivedMessage
          ? _value.receivedMessage
          : receivedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsErrorMessageToClientImplCopyWith<$Res>
    implements $ServerSendsErrorMessageToClientCopyWith<$Res> {
  factory _$$ServerSendsErrorMessageToClientImplCopyWith(
          _$ServerSendsErrorMessageToClientImpl value,
          $Res Function(_$ServerSendsErrorMessageToClientImpl) then) =
      __$$ServerSendsErrorMessageToClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String errorMessage, String? receivedMessage});
}

/// @nodoc
class __$$ServerSendsErrorMessageToClientImplCopyWithImpl<$Res>
    extends _$ServerSendsErrorMessageToClientCopyWithImpl<$Res,
        _$ServerSendsErrorMessageToClientImpl>
    implements _$$ServerSendsErrorMessageToClientImplCopyWith<$Res> {
  __$$ServerSendsErrorMessageToClientImplCopyWithImpl(
      _$ServerSendsErrorMessageToClientImpl _value,
      $Res Function(_$ServerSendsErrorMessageToClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? errorMessage = null,
    Object? receivedMessage = freezed,
  }) {
    return _then(_$ServerSendsErrorMessageToClientImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      receivedMessage: freezed == receivedMessage
          ? _value.receivedMessage
          : receivedMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsErrorMessageToClientImpl
    with DiagnosticableTreeMixin
    implements _ServerSendsErrorMessageToClient {
  const _$ServerSendsErrorMessageToClientImpl(
      {required this.eventType,
      required this.errorMessage,
      this.receivedMessage});

  factory _$ServerSendsErrorMessageToClientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsErrorMessageToClientImplFromJson(json);

  @override
  final String eventType;
  @override
  final String errorMessage;
  @override
  final String? receivedMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerSendsErrorMessageToClient(eventType: $eventType, errorMessage: $errorMessage, receivedMessage: $receivedMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerSendsErrorMessageToClient'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('errorMessage', errorMessage))
      ..add(DiagnosticsProperty('receivedMessage', receivedMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsErrorMessageToClientImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.receivedMessage, receivedMessage) ||
                other.receivedMessage == receivedMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, eventType, errorMessage, receivedMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsErrorMessageToClientImplCopyWith<
          _$ServerSendsErrorMessageToClientImpl>
      get copyWith => __$$ServerSendsErrorMessageToClientImplCopyWithImpl<
          _$ServerSendsErrorMessageToClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsErrorMessageToClientImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsErrorMessageToClient
    implements ServerSendsErrorMessageToClient {
  const factory _ServerSendsErrorMessageToClient(
      {required final String eventType,
      required final String errorMessage,
      final String? receivedMessage}) = _$ServerSendsErrorMessageToClientImpl;

  factory _ServerSendsErrorMessageToClient.fromJson(Map<String, dynamic> json) =
      _$ServerSendsErrorMessageToClientImpl.fromJson;

  @override
  String get eventType;
  @override
  String get errorMessage;
  @override
  String? get receivedMessage;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsErrorMessageToClientImplCopyWith<
          _$ServerSendsErrorMessageToClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsConfirmationMessageToClient
    _$ServerSendsConfirmationMessageToClientFromJson(
        Map<String, dynamic> json) {
  return _ServerSendsConfirmationMessageToClient.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsConfirmationMessageToClient {
  String get eventType => throw _privateConstructorUsedError;
  String get confirmationMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsConfirmationMessageToClientCopyWith<
          ServerSendsConfirmationMessageToClient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsConfirmationMessageToClientCopyWith<$Res> {
  factory $ServerSendsConfirmationMessageToClientCopyWith(
          ServerSendsConfirmationMessageToClient value,
          $Res Function(ServerSendsConfirmationMessageToClient) then) =
      _$ServerSendsConfirmationMessageToClientCopyWithImpl<$Res,
          ServerSendsConfirmationMessageToClient>;
  @useResult
  $Res call({String eventType, String confirmationMessage});
}

/// @nodoc
class _$ServerSendsConfirmationMessageToClientCopyWithImpl<$Res,
        $Val extends ServerSendsConfirmationMessageToClient>
    implements $ServerSendsConfirmationMessageToClientCopyWith<$Res> {
  _$ServerSendsConfirmationMessageToClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? confirmationMessage = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationMessage: null == confirmationMessage
          ? _value.confirmationMessage
          : confirmationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsConfirmationMessageToClientImplCopyWith<$Res>
    implements $ServerSendsConfirmationMessageToClientCopyWith<$Res> {
  factory _$$ServerSendsConfirmationMessageToClientImplCopyWith(
          _$ServerSendsConfirmationMessageToClientImpl value,
          $Res Function(_$ServerSendsConfirmationMessageToClientImpl) then) =
      __$$ServerSendsConfirmationMessageToClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String confirmationMessage});
}

/// @nodoc
class __$$ServerSendsConfirmationMessageToClientImplCopyWithImpl<$Res>
    extends _$ServerSendsConfirmationMessageToClientCopyWithImpl<$Res,
        _$ServerSendsConfirmationMessageToClientImpl>
    implements _$$ServerSendsConfirmationMessageToClientImplCopyWith<$Res> {
  __$$ServerSendsConfirmationMessageToClientImplCopyWithImpl(
      _$ServerSendsConfirmationMessageToClientImpl _value,
      $Res Function(_$ServerSendsConfirmationMessageToClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? confirmationMessage = null,
  }) {
    return _then(_$ServerSendsConfirmationMessageToClientImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      confirmationMessage: null == confirmationMessage
          ? _value.confirmationMessage
          : confirmationMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsConfirmationMessageToClientImpl
    with DiagnosticableTreeMixin
    implements _ServerSendsConfirmationMessageToClient {
  const _$ServerSendsConfirmationMessageToClientImpl(
      {required this.eventType, required this.confirmationMessage});

  factory _$ServerSendsConfirmationMessageToClientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsConfirmationMessageToClientImplFromJson(json);

  @override
  final String eventType;
  @override
  final String confirmationMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerSendsConfirmationMessageToClient(eventType: $eventType, confirmationMessage: $confirmationMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ServerSendsConfirmationMessageToClient'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('confirmationMessage', confirmationMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsConfirmationMessageToClientImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.confirmationMessage, confirmationMessage) ||
                other.confirmationMessage == confirmationMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, confirmationMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsConfirmationMessageToClientImplCopyWith<
          _$ServerSendsConfirmationMessageToClientImpl>
      get copyWith =>
          __$$ServerSendsConfirmationMessageToClientImplCopyWithImpl<
              _$ServerSendsConfirmationMessageToClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsConfirmationMessageToClientImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsConfirmationMessageToClient
    implements ServerSendsConfirmationMessageToClient {
  const factory _ServerSendsConfirmationMessageToClient(
          {required final String eventType,
          required final String confirmationMessage}) =
      _$ServerSendsConfirmationMessageToClientImpl;

  factory _ServerSendsConfirmationMessageToClient.fromJson(
          Map<String, dynamic> json) =
      _$ServerSendsConfirmationMessageToClientImpl.fromJson;

  @override
  String get eventType;
  @override
  String get confirmationMessage;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsConfirmationMessageToClientImplCopyWith<
          _$ServerSendsConfirmationMessageToClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToFetchCourtAvailability
    _$ClientWantsToFetchCourtAvailabilityFromJson(Map<String, dynamic> json) {
  return _ClientWantsToFetchCourtAvailability.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToFetchCourtAvailability {
  String get eventType => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToFetchCourtAvailabilityCopyWith<
          ClientWantsToFetchCourtAvailability>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToFetchCourtAvailabilityCopyWith<$Res> {
  factory $ClientWantsToFetchCourtAvailabilityCopyWith(
          ClientWantsToFetchCourtAvailability value,
          $Res Function(ClientWantsToFetchCourtAvailability) then) =
      _$ClientWantsToFetchCourtAvailabilityCopyWithImpl<$Res,
          ClientWantsToFetchCourtAvailability>;
  @useResult
  $Res call({String eventType, DateTime selectedDate});
}

/// @nodoc
class _$ClientWantsToFetchCourtAvailabilityCopyWithImpl<$Res,
        $Val extends ClientWantsToFetchCourtAvailability>
    implements $ClientWantsToFetchCourtAvailabilityCopyWith<$Res> {
  _$ClientWantsToFetchCourtAvailabilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? selectedDate = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToFetchCourtAvailabilityImplCopyWith<$Res>
    implements $ClientWantsToFetchCourtAvailabilityCopyWith<$Res> {
  factory _$$ClientWantsToFetchCourtAvailabilityImplCopyWith(
          _$ClientWantsToFetchCourtAvailabilityImpl value,
          $Res Function(_$ClientWantsToFetchCourtAvailabilityImpl) then) =
      __$$ClientWantsToFetchCourtAvailabilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, DateTime selectedDate});
}

/// @nodoc
class __$$ClientWantsToFetchCourtAvailabilityImplCopyWithImpl<$Res>
    extends _$ClientWantsToFetchCourtAvailabilityCopyWithImpl<$Res,
        _$ClientWantsToFetchCourtAvailabilityImpl>
    implements _$$ClientWantsToFetchCourtAvailabilityImplCopyWith<$Res> {
  __$$ClientWantsToFetchCourtAvailabilityImplCopyWithImpl(
      _$ClientWantsToFetchCourtAvailabilityImpl _value,
      $Res Function(_$ClientWantsToFetchCourtAvailabilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? selectedDate = null,
  }) {
    return _then(_$ClientWantsToFetchCourtAvailabilityImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToFetchCourtAvailabilityImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToFetchCourtAvailability {
  const _$ClientWantsToFetchCourtAvailabilityImpl(
      {required this.eventType, required this.selectedDate});

  factory _$ClientWantsToFetchCourtAvailabilityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToFetchCourtAvailabilityImplFromJson(json);

  @override
  final String eventType;
  @override
  final DateTime selectedDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToFetchCourtAvailability(eventType: $eventType, selectedDate: $selectedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToFetchCourtAvailability'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('selectedDate', selectedDate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToFetchCourtAvailabilityImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToFetchCourtAvailabilityImplCopyWith<
          _$ClientWantsToFetchCourtAvailabilityImpl>
      get copyWith => __$$ClientWantsToFetchCourtAvailabilityImplCopyWithImpl<
          _$ClientWantsToFetchCourtAvailabilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToFetchCourtAvailabilityImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToFetchCourtAvailability
    implements ClientWantsToFetchCourtAvailability {
  const factory _ClientWantsToFetchCourtAvailability(
          {required final String eventType,
          required final DateTime selectedDate}) =
      _$ClientWantsToFetchCourtAvailabilityImpl;

  factory _ClientWantsToFetchCourtAvailability.fromJson(
          Map<String, dynamic> json) =
      _$ClientWantsToFetchCourtAvailabilityImpl.fromJson;

  @override
  String get eventType;
  @override
  DateTime get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToFetchCourtAvailabilityImplCopyWith<
          _$ClientWantsToFetchCourtAvailabilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsCourtAvailabilityToClient
    _$ServerSendsCourtAvailabilityToClientFromJson(Map<String, dynamic> json) {
  return _ServerSendsCourtAvailabilityToClient.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsCourtAvailabilityToClient {
  String get eventType => throw _privateConstructorUsedError;
  List<CourtAvailability> get courtAvailability =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsCourtAvailabilityToClientCopyWith<
          ServerSendsCourtAvailabilityToClient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsCourtAvailabilityToClientCopyWith<$Res> {
  factory $ServerSendsCourtAvailabilityToClientCopyWith(
          ServerSendsCourtAvailabilityToClient value,
          $Res Function(ServerSendsCourtAvailabilityToClient) then) =
      _$ServerSendsCourtAvailabilityToClientCopyWithImpl<$Res,
          ServerSendsCourtAvailabilityToClient>;
  @useResult
  $Res call(
      {String eventType,
      List<CourtAvailability> courtAvailability,
      String? message});
}

/// @nodoc
class _$ServerSendsCourtAvailabilityToClientCopyWithImpl<$Res,
        $Val extends ServerSendsCourtAvailabilityToClient>
    implements $ServerSendsCourtAvailabilityToClientCopyWith<$Res> {
  _$ServerSendsCourtAvailabilityToClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? courtAvailability = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$ServerSendsCourtAvailabilityToClientImplCopyWith<$Res>
    implements $ServerSendsCourtAvailabilityToClientCopyWith<$Res> {
  factory _$$ServerSendsCourtAvailabilityToClientImplCopyWith(
          _$ServerSendsCourtAvailabilityToClientImpl value,
          $Res Function(_$ServerSendsCourtAvailabilityToClientImpl) then) =
      __$$ServerSendsCourtAvailabilityToClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventType,
      List<CourtAvailability> courtAvailability,
      String? message});
}

/// @nodoc
class __$$ServerSendsCourtAvailabilityToClientImplCopyWithImpl<$Res>
    extends _$ServerSendsCourtAvailabilityToClientCopyWithImpl<$Res,
        _$ServerSendsCourtAvailabilityToClientImpl>
    implements _$$ServerSendsCourtAvailabilityToClientImplCopyWith<$Res> {
  __$$ServerSendsCourtAvailabilityToClientImplCopyWithImpl(
      _$ServerSendsCourtAvailabilityToClientImpl _value,
      $Res Function(_$ServerSendsCourtAvailabilityToClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? courtAvailability = null,
    Object? message = freezed,
  }) {
    return _then(_$ServerSendsCourtAvailabilityToClientImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$ServerSendsCourtAvailabilityToClientImpl
    with DiagnosticableTreeMixin
    implements _ServerSendsCourtAvailabilityToClient {
  const _$ServerSendsCourtAvailabilityToClientImpl(
      {required this.eventType,
      required final List<CourtAvailability> courtAvailability,
      this.message})
      : _courtAvailability = courtAvailability;

  factory _$ServerSendsCourtAvailabilityToClientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsCourtAvailabilityToClientImplFromJson(json);

  @override
  final String eventType;
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerSendsCourtAvailabilityToClient(eventType: $eventType, courtAvailability: $courtAvailability, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerSendsCourtAvailabilityToClient'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('courtAvailability', courtAvailability))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsCourtAvailabilityToClientImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality()
                .equals(other._courtAvailability, _courtAvailability) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_courtAvailability), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsCourtAvailabilityToClientImplCopyWith<
          _$ServerSendsCourtAvailabilityToClientImpl>
      get copyWith => __$$ServerSendsCourtAvailabilityToClientImplCopyWithImpl<
          _$ServerSendsCourtAvailabilityToClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsCourtAvailabilityToClientImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsCourtAvailabilityToClient
    implements ServerSendsCourtAvailabilityToClient {
  const factory _ServerSendsCourtAvailabilityToClient(
      {required final String eventType,
      required final List<CourtAvailability> courtAvailability,
      final String? message}) = _$ServerSendsCourtAvailabilityToClientImpl;

  factory _ServerSendsCourtAvailabilityToClient.fromJson(
          Map<String, dynamic> json) =
      _$ServerSendsCourtAvailabilityToClientImpl.fromJson;

  @override
  String get eventType;
  @override
  List<CourtAvailability> get courtAvailability;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsCourtAvailabilityToClientImplCopyWith<
          _$ServerSendsCourtAvailabilityToClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToBookCourt _$ClientWantsToBookCourtFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToBookCourt.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToBookCourt {
  String get eventType => throw _privateConstructorUsedError;
  int get courtId => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  DateTime get selectedDate => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  DateTime get creationTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToBookCourtCopyWith<ClientWantsToBookCourt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToBookCourtCopyWith<$Res> {
  factory $ClientWantsToBookCourtCopyWith(ClientWantsToBookCourt value,
          $Res Function(ClientWantsToBookCourt) then) =
      _$ClientWantsToBookCourtCopyWithImpl<$Res, ClientWantsToBookCourt>;
  @useResult
  $Res call(
      {String eventType,
      int courtId,
      int userId,
      DateTime selectedDate,
      String startTime,
      String endTime,
      DateTime creationTime});
}

/// @nodoc
class _$ClientWantsToBookCourtCopyWithImpl<$Res,
        $Val extends ClientWantsToBookCourt>
    implements $ClientWantsToBookCourtCopyWith<$Res> {
  _$ClientWantsToBookCourtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? courtId = null,
    Object? userId = null,
    Object? selectedDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? creationTime = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      courtId: null == courtId
          ? _value.courtId
          : courtId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToBookCourtImplCopyWith<$Res>
    implements $ClientWantsToBookCourtCopyWith<$Res> {
  factory _$$ClientWantsToBookCourtImplCopyWith(
          _$ClientWantsToBookCourtImpl value,
          $Res Function(_$ClientWantsToBookCourtImpl) then) =
      __$$ClientWantsToBookCourtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventType,
      int courtId,
      int userId,
      DateTime selectedDate,
      String startTime,
      String endTime,
      DateTime creationTime});
}

/// @nodoc
class __$$ClientWantsToBookCourtImplCopyWithImpl<$Res>
    extends _$ClientWantsToBookCourtCopyWithImpl<$Res,
        _$ClientWantsToBookCourtImpl>
    implements _$$ClientWantsToBookCourtImplCopyWith<$Res> {
  __$$ClientWantsToBookCourtImplCopyWithImpl(
      _$ClientWantsToBookCourtImpl _value,
      $Res Function(_$ClientWantsToBookCourtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? courtId = null,
    Object? userId = null,
    Object? selectedDate = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? creationTime = null,
  }) {
    return _then(_$ClientWantsToBookCourtImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      courtId: null == courtId
          ? _value.courtId
          : courtId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: null == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToBookCourtImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToBookCourt {
  const _$ClientWantsToBookCourtImpl(
      {required this.eventType,
      required this.courtId,
      required this.userId,
      required this.selectedDate,
      required this.startTime,
      required this.endTime,
      required this.creationTime});

  factory _$ClientWantsToBookCourtImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToBookCourtImplFromJson(json);

  @override
  final String eventType;
  @override
  final int courtId;
  @override
  final int userId;
  @override
  final DateTime selectedDate;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final DateTime creationTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToBookCourt(eventType: $eventType, courtId: $courtId, userId: $userId, selectedDate: $selectedDate, startTime: $startTime, endTime: $endTime, creationTime: $creationTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToBookCourt'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('courtId', courtId))
      ..add(DiagnosticsProperty('userId', userId))
      ..add(DiagnosticsProperty('selectedDate', selectedDate))
      ..add(DiagnosticsProperty('startTime', startTime))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('creationTime', creationTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToBookCourtImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.courtId, courtId) || other.courtId == courtId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, courtId, userId,
      selectedDate, startTime, endTime, creationTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToBookCourtImplCopyWith<_$ClientWantsToBookCourtImpl>
      get copyWith => __$$ClientWantsToBookCourtImplCopyWithImpl<
          _$ClientWantsToBookCourtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToBookCourtImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToBookCourt implements ClientWantsToBookCourt {
  const factory _ClientWantsToBookCourt(
      {required final String eventType,
      required final int courtId,
      required final int userId,
      required final DateTime selectedDate,
      required final String startTime,
      required final String endTime,
      required final DateTime creationTime}) = _$ClientWantsToBookCourtImpl;

  factory _ClientWantsToBookCourt.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToBookCourtImpl.fromJson;

  @override
  String get eventType;
  @override
  int get courtId;
  @override
  int get userId;
  @override
  DateTime get selectedDate;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  DateTime get creationTime;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToBookCourtImplCopyWith<_$ClientWantsToBookCourtImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToFetchUserBookings _$ClientWantsToFetchUserBookingsFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToFetchUserBookings.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToFetchUserBookings {
  String get eventType => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToFetchUserBookingsCopyWith<ClientWantsToFetchUserBookings>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToFetchUserBookingsCopyWith<$Res> {
  factory $ClientWantsToFetchUserBookingsCopyWith(
          ClientWantsToFetchUserBookings value,
          $Res Function(ClientWantsToFetchUserBookings) then) =
      _$ClientWantsToFetchUserBookingsCopyWithImpl<$Res,
          ClientWantsToFetchUserBookings>;
  @useResult
  $Res call({String eventType, int userId});
}

/// @nodoc
class _$ClientWantsToFetchUserBookingsCopyWithImpl<$Res,
        $Val extends ClientWantsToFetchUserBookings>
    implements $ClientWantsToFetchUserBookingsCopyWith<$Res> {
  _$ClientWantsToFetchUserBookingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToFetchUserBookingsImplCopyWith<$Res>
    implements $ClientWantsToFetchUserBookingsCopyWith<$Res> {
  factory _$$ClientWantsToFetchUserBookingsImplCopyWith(
          _$ClientWantsToFetchUserBookingsImpl value,
          $Res Function(_$ClientWantsToFetchUserBookingsImpl) then) =
      __$$ClientWantsToFetchUserBookingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, int userId});
}

/// @nodoc
class __$$ClientWantsToFetchUserBookingsImplCopyWithImpl<$Res>
    extends _$ClientWantsToFetchUserBookingsCopyWithImpl<$Res,
        _$ClientWantsToFetchUserBookingsImpl>
    implements _$$ClientWantsToFetchUserBookingsImplCopyWith<$Res> {
  __$$ClientWantsToFetchUserBookingsImplCopyWithImpl(
      _$ClientWantsToFetchUserBookingsImpl _value,
      $Res Function(_$ClientWantsToFetchUserBookingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? userId = null,
  }) {
    return _then(_$ClientWantsToFetchUserBookingsImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToFetchUserBookingsImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToFetchUserBookings {
  const _$ClientWantsToFetchUserBookingsImpl(
      {required this.eventType, required this.userId});

  factory _$ClientWantsToFetchUserBookingsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToFetchUserBookingsImplFromJson(json);

  @override
  final String eventType;
  @override
  final int userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToFetchUserBookings(eventType: $eventType, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToFetchUserBookings'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToFetchUserBookingsImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToFetchUserBookingsImplCopyWith<
          _$ClientWantsToFetchUserBookingsImpl>
      get copyWith => __$$ClientWantsToFetchUserBookingsImplCopyWithImpl<
          _$ClientWantsToFetchUserBookingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToFetchUserBookingsImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToFetchUserBookings
    implements ClientWantsToFetchUserBookings {
  const factory _ClientWantsToFetchUserBookings(
      {required final String eventType,
      required final int userId}) = _$ClientWantsToFetchUserBookingsImpl;

  factory _ClientWantsToFetchUserBookings.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToFetchUserBookingsImpl.fromJson;

  @override
  String get eventType;
  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToFetchUserBookingsImplCopyWith<
          _$ClientWantsToFetchUserBookingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ServerSendsUserBookingsToClient _$ServerSendsUserBookingsToClientFromJson(
    Map<String, dynamic> json) {
  return _ServerSendsUserBookingsToClient.fromJson(json);
}

/// @nodoc
mixin _$ServerSendsUserBookingsToClient {
  String get eventType => throw _privateConstructorUsedError;
  List<CourtBookingWithCourtNumber> get userBookings =>
      throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerSendsUserBookingsToClientCopyWith<ServerSendsUserBookingsToClient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerSendsUserBookingsToClientCopyWith<$Res> {
  factory $ServerSendsUserBookingsToClientCopyWith(
          ServerSendsUserBookingsToClient value,
          $Res Function(ServerSendsUserBookingsToClient) then) =
      _$ServerSendsUserBookingsToClientCopyWithImpl<$Res,
          ServerSendsUserBookingsToClient>;
  @useResult
  $Res call(
      {String eventType,
      List<CourtBookingWithCourtNumber> userBookings,
      String? message});
}

/// @nodoc
class _$ServerSendsUserBookingsToClientCopyWithImpl<$Res,
        $Val extends ServerSendsUserBookingsToClient>
    implements $ServerSendsUserBookingsToClientCopyWith<$Res> {
  _$ServerSendsUserBookingsToClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? userBookings = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      userBookings: null == userBookings
          ? _value.userBookings
          : userBookings // ignore: cast_nullable_to_non_nullable
              as List<CourtBookingWithCourtNumber>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerSendsUserBookingsToClientImplCopyWith<$Res>
    implements $ServerSendsUserBookingsToClientCopyWith<$Res> {
  factory _$$ServerSendsUserBookingsToClientImplCopyWith(
          _$ServerSendsUserBookingsToClientImpl value,
          $Res Function(_$ServerSendsUserBookingsToClientImpl) then) =
      __$$ServerSendsUserBookingsToClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String eventType,
      List<CourtBookingWithCourtNumber> userBookings,
      String? message});
}

/// @nodoc
class __$$ServerSendsUserBookingsToClientImplCopyWithImpl<$Res>
    extends _$ServerSendsUserBookingsToClientCopyWithImpl<$Res,
        _$ServerSendsUserBookingsToClientImpl>
    implements _$$ServerSendsUserBookingsToClientImplCopyWith<$Res> {
  __$$ServerSendsUserBookingsToClientImplCopyWithImpl(
      _$ServerSendsUserBookingsToClientImpl _value,
      $Res Function(_$ServerSendsUserBookingsToClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? userBookings = null,
    Object? message = freezed,
  }) {
    return _then(_$ServerSendsUserBookingsToClientImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      userBookings: null == userBookings
          ? _value._userBookings
          : userBookings // ignore: cast_nullable_to_non_nullable
              as List<CourtBookingWithCourtNumber>,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerSendsUserBookingsToClientImpl
    with DiagnosticableTreeMixin
    implements _ServerSendsUserBookingsToClient {
  const _$ServerSendsUserBookingsToClientImpl(
      {required this.eventType,
      required final List<CourtBookingWithCourtNumber> userBookings,
      this.message})
      : _userBookings = userBookings;

  factory _$ServerSendsUserBookingsToClientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsUserBookingsToClientImplFromJson(json);

  @override
  final String eventType;
  final List<CourtBookingWithCourtNumber> _userBookings;
  @override
  List<CourtBookingWithCourtNumber> get userBookings {
    if (_userBookings is EqualUnmodifiableListView) return _userBookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userBookings);
  }

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerSendsUserBookingsToClient(eventType: $eventType, userBookings: $userBookings, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerSendsUserBookingsToClient'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('userBookings', userBookings))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerSendsUserBookingsToClientImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality()
                .equals(other._userBookings, _userBookings) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_userBookings), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerSendsUserBookingsToClientImplCopyWith<
          _$ServerSendsUserBookingsToClientImpl>
      get copyWith => __$$ServerSendsUserBookingsToClientImplCopyWithImpl<
          _$ServerSendsUserBookingsToClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerSendsUserBookingsToClientImplToJson(
      this,
    );
  }
}

abstract class _ServerSendsUserBookingsToClient
    implements ServerSendsUserBookingsToClient {
  const factory _ServerSendsUserBookingsToClient(
      {required final String eventType,
      required final List<CourtBookingWithCourtNumber> userBookings,
      final String? message}) = _$ServerSendsUserBookingsToClientImpl;

  factory _ServerSendsUserBookingsToClient.fromJson(Map<String, dynamic> json) =
      _$ServerSendsUserBookingsToClientImpl.fromJson;

  @override
  String get eventType;
  @override
  List<CourtBookingWithCourtNumber> get userBookings;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsUserBookingsToClientImplCopyWith<
          _$ServerSendsUserBookingsToClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToDeleteBooking _$ClientWantsToDeleteBookingFromJson(
    Map<String, dynamic> json) {
  return _ClientWantsToDeleteBooking.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToDeleteBooking {
  String get eventType => throw _privateConstructorUsedError;
  int get bookingId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToDeleteBookingCopyWith<ClientWantsToDeleteBooking>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToDeleteBookingCopyWith<$Res> {
  factory $ClientWantsToDeleteBookingCopyWith(ClientWantsToDeleteBooking value,
          $Res Function(ClientWantsToDeleteBooking) then) =
      _$ClientWantsToDeleteBookingCopyWithImpl<$Res,
          ClientWantsToDeleteBooking>;
  @useResult
  $Res call({String eventType, int bookingId});
}

/// @nodoc
class _$ClientWantsToDeleteBookingCopyWithImpl<$Res,
        $Val extends ClientWantsToDeleteBooking>
    implements $ClientWantsToDeleteBookingCopyWith<$Res> {
  _$ClientWantsToDeleteBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? bookingId = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToDeleteBookingImplCopyWith<$Res>
    implements $ClientWantsToDeleteBookingCopyWith<$Res> {
  factory _$$ClientWantsToDeleteBookingImplCopyWith(
          _$ClientWantsToDeleteBookingImpl value,
          $Res Function(_$ClientWantsToDeleteBookingImpl) then) =
      __$$ClientWantsToDeleteBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, int bookingId});
}

/// @nodoc
class __$$ClientWantsToDeleteBookingImplCopyWithImpl<$Res>
    extends _$ClientWantsToDeleteBookingCopyWithImpl<$Res,
        _$ClientWantsToDeleteBookingImpl>
    implements _$$ClientWantsToDeleteBookingImplCopyWith<$Res> {
  __$$ClientWantsToDeleteBookingImplCopyWithImpl(
      _$ClientWantsToDeleteBookingImpl _value,
      $Res Function(_$ClientWantsToDeleteBookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? bookingId = null,
  }) {
    return _then(_$ClientWantsToDeleteBookingImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
      bookingId: null == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToDeleteBookingImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToDeleteBooking {
  const _$ClientWantsToDeleteBookingImpl(
      {required this.eventType, required this.bookingId});

  factory _$ClientWantsToDeleteBookingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ClientWantsToDeleteBookingImplFromJson(json);

  @override
  final String eventType;
  @override
  final int bookingId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToDeleteBooking(eventType: $eventType, bookingId: $bookingId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToDeleteBooking'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('bookingId', bookingId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToDeleteBookingImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType, bookingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToDeleteBookingImplCopyWith<_$ClientWantsToDeleteBookingImpl>
      get copyWith => __$$ClientWantsToDeleteBookingImplCopyWithImpl<
          _$ClientWantsToDeleteBookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToDeleteBookingImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToDeleteBooking
    implements ClientWantsToDeleteBooking {
  const factory _ClientWantsToDeleteBooking(
      {required final String eventType,
      required final int bookingId}) = _$ClientWantsToDeleteBookingImpl;

  factory _ClientWantsToDeleteBooking.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToDeleteBookingImpl.fromJson;

  @override
  String get eventType;
  @override
  int get bookingId;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToDeleteBookingImplCopyWith<_$ClientWantsToDeleteBookingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ClientWantsToLogOut _$ClientWantsToLogOutFromJson(Map<String, dynamic> json) {
  return _ClientWantsToLogOut.fromJson(json);
}

/// @nodoc
mixin _$ClientWantsToLogOut {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClientWantsToLogOutCopyWith<ClientWantsToLogOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientWantsToLogOutCopyWith<$Res> {
  factory $ClientWantsToLogOutCopyWith(
          ClientWantsToLogOut value, $Res Function(ClientWantsToLogOut) then) =
      _$ClientWantsToLogOutCopyWithImpl<$Res, ClientWantsToLogOut>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ClientWantsToLogOutCopyWithImpl<$Res, $Val extends ClientWantsToLogOut>
    implements $ClientWantsToLogOutCopyWith<$Res> {
  _$ClientWantsToLogOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientWantsToLogOutImplCopyWith<$Res>
    implements $ClientWantsToLogOutCopyWith<$Res> {
  factory _$$ClientWantsToLogOutImplCopyWith(_$ClientWantsToLogOutImpl value,
          $Res Function(_$ClientWantsToLogOutImpl) then) =
      __$$ClientWantsToLogOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ClientWantsToLogOutImplCopyWithImpl<$Res>
    extends _$ClientWantsToLogOutCopyWithImpl<$Res, _$ClientWantsToLogOutImpl>
    implements _$$ClientWantsToLogOutImplCopyWith<$Res> {
  __$$ClientWantsToLogOutImplCopyWithImpl(_$ClientWantsToLogOutImpl _value,
      $Res Function(_$ClientWantsToLogOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ClientWantsToLogOutImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClientWantsToLogOutImpl
    with DiagnosticableTreeMixin
    implements _ClientWantsToLogOut {
  const _$ClientWantsToLogOutImpl({required this.eventType});

  factory _$ClientWantsToLogOutImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClientWantsToLogOutImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ClientWantsToLogOut(eventType: $eventType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ClientWantsToLogOut'))
      ..add(DiagnosticsProperty('eventType', eventType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientWantsToLogOutImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientWantsToLogOutImplCopyWith<_$ClientWantsToLogOutImpl> get copyWith =>
      __$$ClientWantsToLogOutImplCopyWithImpl<_$ClientWantsToLogOutImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClientWantsToLogOutImplToJson(
      this,
    );
  }
}

abstract class _ClientWantsToLogOut implements ClientWantsToLogOut {
  const factory _ClientWantsToLogOut({required final String eventType}) =
      _$ClientWantsToLogOutImpl;

  factory _ClientWantsToLogOut.fromJson(Map<String, dynamic> json) =
      _$ClientWantsToLogOutImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ClientWantsToLogOutImplCopyWith<_$ClientWantsToLogOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServerLogsOutUser _$ServerLogsOutUserFromJson(Map<String, dynamic> json) {
  return _ServerLogsOutUser.fromJson(json);
}

/// @nodoc
mixin _$ServerLogsOutUser {
  String get eventType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerLogsOutUserCopyWith<ServerLogsOutUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerLogsOutUserCopyWith<$Res> {
  factory $ServerLogsOutUserCopyWith(
          ServerLogsOutUser value, $Res Function(ServerLogsOutUser) then) =
      _$ServerLogsOutUserCopyWithImpl<$Res, ServerLogsOutUser>;
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class _$ServerLogsOutUserCopyWithImpl<$Res, $Val extends ServerLogsOutUser>
    implements $ServerLogsOutUserCopyWith<$Res> {
  _$ServerLogsOutUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerLogsOutUserImplCopyWith<$Res>
    implements $ServerLogsOutUserCopyWith<$Res> {
  factory _$$ServerLogsOutUserImplCopyWith(_$ServerLogsOutUserImpl value,
          $Res Function(_$ServerLogsOutUserImpl) then) =
      __$$ServerLogsOutUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType});
}

/// @nodoc
class __$$ServerLogsOutUserImplCopyWithImpl<$Res>
    extends _$ServerLogsOutUserCopyWithImpl<$Res, _$ServerLogsOutUserImpl>
    implements _$$ServerLogsOutUserImplCopyWith<$Res> {
  __$$ServerLogsOutUserImplCopyWithImpl(_$ServerLogsOutUserImpl _value,
      $Res Function(_$ServerLogsOutUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
  }) {
    return _then(_$ServerLogsOutUserImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerLogsOutUserImpl
    with DiagnosticableTreeMixin
    implements _ServerLogsOutUser {
  const _$ServerLogsOutUserImpl({required this.eventType});

  factory _$ServerLogsOutUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerLogsOutUserImplFromJson(json);

  @override
  final String eventType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerLogsOutUser(eventType: $eventType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerLogsOutUser'))
      ..add(DiagnosticsProperty('eventType', eventType));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerLogsOutUserImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eventType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerLogsOutUserImplCopyWith<_$ServerLogsOutUserImpl> get copyWith =>
      __$$ServerLogsOutUserImplCopyWithImpl<_$ServerLogsOutUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServerLogsOutUserImplToJson(
      this,
    );
  }
}

abstract class _ServerLogsOutUser implements ServerLogsOutUser {
  const factory _ServerLogsOutUser({required final String eventType}) =
      _$ServerLogsOutUserImpl;

  factory _ServerLogsOutUser.fromJson(Map<String, dynamic> json) =
      _$ServerLogsOutUserImpl.fromJson;

  @override
  String get eventType;
  @override
  @JsonKey(ignore: true)
  _$$ServerLogsOutUserImplCopyWith<_$ServerLogsOutUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
