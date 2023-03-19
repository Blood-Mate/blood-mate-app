// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      name: json['name'] as String,
      profileImageURL: json['profileImageURL'] as String?,
      bloodType: json['bloodType'] as String,
      phoneNumber: json['phoneNumber'] as String,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profileImageURL': instance.profileImageURL,
      'bloodType': instance.bloodType,
      'phoneNumber': instance.phoneNumber,
    };
