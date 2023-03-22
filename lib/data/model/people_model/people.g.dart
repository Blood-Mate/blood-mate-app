// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_People _$$_PeopleFromJson(Map<String, dynamic> json) => _$_People(
      id: json['id'] as int,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      isUser: json['isUser'] as bool?,
      isSendingTarget: json['isSendingTarget'] as bool?,
      bloodType: json['bloodType'] as String?,
    );

Map<String, dynamic> _$$_PeopleToJson(_$_People instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'isUser': instance.isUser,
      'isSendingTarget': instance.isSendingTarget,
      'bloodType': instance.bloodType,
    };
