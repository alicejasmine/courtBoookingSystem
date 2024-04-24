// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EndUserImpl _$$EndUserImplFromJson(Map<String, dynamic> json) =>
    _$EndUserImpl(
      id: json['id'] as int,
      email: json['email'] as String,
      fullName: json['fullName'] as String?,
      hash: json['hash'] as String?,
      salt: json['salt'] as String?,
      firstLogin: json['firstLogin'] as bool?,
    );

Map<String, dynamic> _$$EndUserImplToJson(_$EndUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'fullName': instance.fullName,
      'hash': instance.hash,
      'salt': instance.salt,
      'firstLogin': instance.firstLogin,
    };
