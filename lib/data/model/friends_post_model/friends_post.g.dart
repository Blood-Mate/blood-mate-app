// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendsPost _$$_FriendsPostFromJson(Map<String, dynamic> json) =>
    _$_FriendsPost(
      private_post_ID: json['private_post_ID'] as int,
      origin_post_ID: json['origin_post_ID'] as int,
      user_ID: json['user_ID'] as String,
      content: json['content'] as String,
      depth: json['depth'] as int,
    );

Map<String, dynamic> _$$_FriendsPostToJson(_$_FriendsPost instance) =>
    <String, dynamic>{
      'private_post_ID': instance.private_post_ID,
      'origin_post_ID': instance.origin_post_ID,
      'user_ID': instance.user_ID,
      'content': instance.content,
      'depth': instance.depth,
    };
