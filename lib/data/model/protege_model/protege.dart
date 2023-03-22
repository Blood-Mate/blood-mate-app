import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'protege.g.dart';
part 'protege.freezed.dart';

@freezed
class Protege with _$Protege {
  factory Protege({
    required int id,
    required int requstorId, //requestorId
    required String name,
    required String phoneNumber,
    required String bloodType,
  }) = _Protege;

  factory Protege.fromJson(Map<String, dynamic> json) =>
      _$ProtegeFromJson(json);
}
