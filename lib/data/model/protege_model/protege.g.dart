// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protege.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Protege _$$_ProtegeFromJson(Map<String, dynamic> json) => _$_Protege(
      id: json['id'] as int,
      requstorId: json['requstorId'] as int,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      bloodType: json['bloodType'] as String,
    );

Map<String, dynamic> _$$_ProtegeToJson(_$_Protege instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requstorId': instance.requstorId,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'bloodType': instance.bloodType,
    };
