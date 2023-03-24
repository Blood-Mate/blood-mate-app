// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      isFinished: json['isFinished'] as bool,
      userId: json['userId'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      depth: json['depth'] as int?,
      originId: json['originId'] as int?,
      bloodType: json['bloodType'] as String?,
      bloodDonationType: json['bloodDonationType'] as String?,
      region: json['region'] as String?,
      longtitude: json['longtitude'] as int?,
      latitude: json['latitude'] as int?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'isFinished': instance.isFinished,
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'depth': instance.depth,
      'originId': instance.originId,
      'bloodType': instance.bloodType,
      'bloodDonationType': instance.bloodDonationType,
      'region': instance.region,
      'longtitude': instance.longtitude,
      'latitude': instance.latitude,
    };
