import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloodmate_app/data/model/models.dart';

part 'post.g.dart';
part 'post.freezed.dart';

@freezed
class Post with _$Post {
  factory Post({
    // for common
    required int id,
    required String content,

    // for private(social network based blood donation) post
    int? depth,
    int? originId,
    bool? isFinished,
    People? user,
    //List<Map<String, dynamic>>? shares,

    // for public (location based blood donation) post
    String? title,
    String? imageUrl,
    String? bloodType,
    String? bloodDonationType,
    String? region,
    String? longtitude,
    String? latitude,
    DateTime? createdAt,
    DateTime? bumpAt,
    bool? expired,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
