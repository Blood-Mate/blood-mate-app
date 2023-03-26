import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloodmate_app/data/model/models.dart';

part 'post_response.g.dart';
part 'post_response.freezed.dart';

@freezed
class PostResponse with _$PostResponse {
  factory PostResponse({
    required Post post,
    required People publisher,
    Post? originPost,
  }) = _PostResponse;

  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}
