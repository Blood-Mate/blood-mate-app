import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloodmate_app/data/model/post_model/post.dart';

part 'profile.g.dart';
part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    required int id,
    required String name,
    String? profileImageUrl,
    required String bloodType,
    required String phoneNumber,
    required List<Post> publicPosts,
    required List<Post> privatePosts,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
