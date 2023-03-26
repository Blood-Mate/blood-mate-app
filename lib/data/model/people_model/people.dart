import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'people.g.dart';
part 'people.freezed.dart';

@freezed
class People with _$People {
  factory People({
    int? id,
    int? guardianId,
    int? requestorId,
    String? name,
    required String phoneNumber,
    bool? isUser,
    bool? isSendingTarget,
    String? bloodType,
  }) = _People;

  factory People.fromJson(Map<String, dynamic> json) => _$PeopleFromJson(json);
}
