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
  $Res call({String eventType, String jwt});
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
abstract class _$$ServerAuthenticatesUserImplCopyWith<$Res>
    implements $ServerAuthenticatesUserCopyWith<$Res> {
  factory _$$ServerAuthenticatesUserImplCopyWith(
          _$ServerAuthenticatesUserImpl value,
          $Res Function(_$ServerAuthenticatesUserImpl) then) =
      __$$ServerAuthenticatesUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String eventType, String jwt});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServerAuthenticatesUserImpl
    with DiagnosticableTreeMixin
    implements _ServerAuthenticatesUser {
  const _$ServerAuthenticatesUserImpl(
      {required this.eventType, required this.jwt});

  factory _$ServerAuthenticatesUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServerAuthenticatesUserImplFromJson(json);

  @override
  final String eventType;
  @override
  final String jwt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ServerAuthenticatesUser(eventType: $eventType, jwt: $jwt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ServerAuthenticatesUser'))
      ..add(DiagnosticsProperty('eventType', eventType))
      ..add(DiagnosticsProperty('jwt', jwt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerAuthenticatesUserImpl &&
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
      required final String jwt}) = _$ServerAuthenticatesUserImpl;

  factory _ServerAuthenticatesUser.fromJson(Map<String, dynamic> json) =
      _$ServerAuthenticatesUserImpl.fromJson;

  @override
  String get eventType;
  @override
  String get jwt;
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
  String get receivedMessage => throw _privateConstructorUsedError;

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
  $Res call({String eventType, String errorMessage, String receivedMessage});
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
    Object? receivedMessage = null,
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
      receivedMessage: null == receivedMessage
          ? _value.receivedMessage
          : receivedMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String eventType, String errorMessage, String receivedMessage});
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
    Object? receivedMessage = null,
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
      receivedMessage: null == receivedMessage
          ? _value.receivedMessage
          : receivedMessage // ignore: cast_nullable_to_non_nullable
              as String,
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
      required this.receivedMessage});

  factory _$ServerSendsErrorMessageToClientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ServerSendsErrorMessageToClientImplFromJson(json);

  @override
  final String eventType;
  @override
  final String errorMessage;
  @override
  final String receivedMessage;

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
          required final String receivedMessage}) =
      _$ServerSendsErrorMessageToClientImpl;

  factory _ServerSendsErrorMessageToClient.fromJson(Map<String, dynamic> json) =
      _$ServerSendsErrorMessageToClientImpl.fromJson;

  @override
  String get eventType;
  @override
  String get errorMessage;
  @override
  String get receivedMessage;
  @override
  @JsonKey(ignore: true)
  _$$ServerSendsErrorMessageToClientImplCopyWith<
          _$ServerSendsErrorMessageToClientImpl>
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
