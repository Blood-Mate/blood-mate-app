import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'guardian.g.dart';
part 'guardian.freezed.dart';

@freezed
class Guardian with _$Guardian {
  factory Guardian({
    required int id,
    required int guardianId,
    required String phoneNumber,
    required String name,
    required String bloodType,
  }) = _Guardian;

  factory Guardian.fromJson(Map<String, dynamic> json) =>
      _$GuardianFromJson(json);
}
