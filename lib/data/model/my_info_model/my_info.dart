import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_info.g.dart';
part 'my_info.freezed.dart';

@freezed
class MyInfo with _$MyInfo {
  factory MyInfo({
    required List<int> public_post_ID_list,
    required List<int> private_post_ID_list,
    required List<String> sendding_messages,
    required List<String> receiving_messages,
    required List<String> awards,
    required List<int> donation_request_list,
    required List<int> success_donation_list,
  }) = _MyInfo;

  factory MyInfo.fromJson(Map<String, dynamic> json) => _$MyInfoFromJson(json);
}
