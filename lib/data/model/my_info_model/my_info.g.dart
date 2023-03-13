// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyInfo _$$_MyInfoFromJson(Map<String, dynamic> json) => _$_MyInfo(
      public_post_ID_list: (json['public_post_ID_list'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      private_post_ID_list: (json['private_post_ID_list'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      sendding_messages: (json['sendding_messages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      receiving_messages: (json['receiving_messages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      awards:
          (json['awards'] as List<dynamic>).map((e) => e as String).toList(),
      donation_request_list: (json['donation_request_list'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      success_donation_list: (json['success_donation_list'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_MyInfoToJson(_$_MyInfo instance) => <String, dynamic>{
      'public_post_ID_list': instance.public_post_ID_list,
      'private_post_ID_list': instance.private_post_ID_list,
      'sendding_messages': instance.sendding_messages,
      'receiving_messages': instance.receiving_messages,
      'awards': instance.awards,
      'donation_request_list': instance.donation_request_list,
      'success_donation_list': instance.success_donation_list,
    };
