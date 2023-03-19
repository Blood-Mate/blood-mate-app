// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyInfo _$$_MyInfoFromJson(Map<String, dynamic> json) => _$_MyInfo(
      publicPosts:
          (json['publicPosts'] as List<dynamic>).map((e) => e as int).toList(),
      privatePosts:
          (json['privatePosts'] as List<dynamic>).map((e) => e as int).toList(),
      senddingMessages: (json['senddingMessages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      receivingMessages: (json['receivingMessages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      awards:
          (json['awards'] as List<dynamic>).map((e) => e as String).toList(),
      donationRequests: (json['donationRequests'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      successDonations: (json['successDonations'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_MyInfoToJson(_$_MyInfo instance) => <String, dynamic>{
      'publicPosts': instance.publicPosts,
      'privatePosts': instance.privatePosts,
      'senddingMessages': instance.senddingMessages,
      'receivingMessages': instance.receivingMessages,
      'awards': instance.awards,
      'donationRequests': instance.donationRequests,
      'successDonations': instance.successDonations,
    };
