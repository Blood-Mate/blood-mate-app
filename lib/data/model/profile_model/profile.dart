import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.g.dart';
part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    required String name,
    required String profile_image_URL,
    required String blood_type,
    required String phone_number,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
