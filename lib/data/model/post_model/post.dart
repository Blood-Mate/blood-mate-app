import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class Post with _$Post {
  factory Post({
    // for common
    required int id,
    required String title,
    required String content,
    required bool isFinished,
    required int userId,
    required DateTime createdAt,

    // for private(social network based blood donation) post
    int? depth,
    int? originId,

    // for public (location based blood donation) post
    String? bloodType,
    String? bloodDonationType,
    String? region,
    int? longtitude,
    int? latitude,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
