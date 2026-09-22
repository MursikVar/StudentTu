// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Session _$SessionFromJson(Map<String, dynamic> json) => _Session(
  expiresOn: DateTime.parse(json['expiresOn'] as String),
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
);

Map<String, dynamic> _$SessionToJson(_Session instance) => <String, dynamic>{
  'expiresOn': instance.expiresOn.toIso8601String(),
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
};
