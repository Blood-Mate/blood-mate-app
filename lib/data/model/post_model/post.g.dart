// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as int,
      content: json['content'] as String,
      depth: json['depth'] as int?,
      originId: json['originId'] as int?,
      isFinished: json['isFinished'] as bool?,
      user: json['user'] == null
          ? null
          : People.fromJson(json['user'] as Map<String, dynamic>),
      title: json['title'] as String?,
      imageUrl: json['imageUrl'] as String?,
      bloodType: json['bloodType'] as String?,
      bloodDonationType: json['bloodDonationType'] as String?,
      region: json['region'] as String?,
      longtitude: json['longtitude'] as String?,
      latitude: json['latitude'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      bumpAt: json['bumpAt'] == null
          ? null
          : DateTime.parse(json['bumpAt'] as String),
      expired: json['expired'] as bool?,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'depth': instance.depth,
      'originId': instance.originId,
      'isFinished': instance.isFinished,
      'user': instance.user,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'bloodType': instance.bloodType,
      'bloodDonationType': instance.bloodDonationType,
      'region': instance.region,
      'longtitude': instance.longtitude,
      'latitude': instance.latitude,
      'createdAt': instance.createdAt?.toIso8601String(),
      'bumpAt': instance.bumpAt?.toIso8601String(),
      'expired': instance.expired,
    };
