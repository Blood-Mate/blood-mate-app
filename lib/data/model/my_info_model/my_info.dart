import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_info.g.dart';
part 'my_info.freezed.dart';

@freezed
class MyInfo with _$MyInfo {
  factory MyInfo({
    required List<int> publicPosts,
    required List<int> privatePosts,
    required List<String> senddingMessages,
    required List<String> receivingMessages,
    required List<String> awards,
    required List<int> donationRequests,
    required List<int> successDonations,
  }) = _MyInfo;

  factory MyInfo.fromJson(Map<String, dynamic> json) => _$MyInfoFromJson(json);
}
