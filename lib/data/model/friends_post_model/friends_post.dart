import 'package:freezed_annotation/freezed_annotation.dart';

part 'friends_post.g.dart';
part 'friends_post.freezed.dart';

@freezed
class FriendsPost with _$FriendsPost {
  factory FriendsPost({
    required int privatePostID,
    required int originPostID,
    required String userID,
    required String content,
    required int depth,
  }) = _FriendsPost;

  factory FriendsPost.fromJson(Map<String, dynamic> json) =>
      _$FriendsPostFromJson(json);
}
