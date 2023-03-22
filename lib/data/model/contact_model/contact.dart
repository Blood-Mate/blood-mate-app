import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.g.dart';
part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  factory Contact({
    required int id,
    required String name,
    required String phoneNumber,
    required bool isSendingTarget,
    required bool isUser,
    String? bloodType,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}
