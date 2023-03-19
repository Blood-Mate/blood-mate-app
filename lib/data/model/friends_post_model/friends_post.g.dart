// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendsPost _$$_FriendsPostFromJson(Map<String, dynamic> json) =>
    _$_FriendsPost(
      privatePostID: json['privatePostID'] as int,
      originPostID: json['originPostID'] as int,
      userID: json['userID'] as String,
      content: json['content'] as String,
      depth: json['depth'] as int,
    );

Map<String, dynamic> _$$_FriendsPostToJson(_$_FriendsPost instance) =>
    <String, dynamic>{
      'privatePostID': instance.privatePostID,
      'originPostID': instance.originPostID,
      'userID': instance.userID,
      'content': instance.content,
      'depth': instance.depth,
    };
