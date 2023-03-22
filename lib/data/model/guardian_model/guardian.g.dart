// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Guardian _$$_GuardianFromJson(Map<String, dynamic> json) => _$_Guardian(
      id: json['id'] as int,
      guardianId: json['guardianId'] as int,
      phoneNumber: json['phoneNumber'] as String,
      name: json['name'] as String,
      bloodType: json['bloodType'] as String,
    );

Map<String, dynamic> _$$_GuardianToJson(_$_Guardian instance) =>
    <String, dynamic>{
      'id': instance.id,
      'guardianId': instance.guardianId,
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
      'bloodType': instance.bloodType,
    };
