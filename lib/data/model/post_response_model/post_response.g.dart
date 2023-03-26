// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostResponse _$$_PostResponseFromJson(Map<String, dynamic> json) =>
    _$_PostResponse(
      post: Post.fromJson(json['post'] as Map<String, dynamic>),
      publisher: People.fromJson(json['publisher'] as Map<String, dynamic>),
      originPost: json['originPost'] == null
          ? null
          : Post.fromJson(json['originPost'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostResponseToJson(_$_PostResponse instance) =>
    <String, dynamic>{
      'post': instance.post,
      'publisher': instance.publisher,
      'originPost': instance.originPost,
    };
