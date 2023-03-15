import 'dart:convert';

import 'package:bloodmate_app/data/model/models.dart';

abstract class FriendsPostRepo {
  static List<FriendsPost> friendsPostListMockData = [
    FriendsPost.fromJson(jsonDecode(
        '{"private_post_ID":1,"origin_post_ID":1,"user_ID":"USER1","content":"content0","depth":0}')),
    FriendsPost.fromJson(jsonDecode(
        '{"private_post_ID":2,"origin_post_ID":1,"user_ID":"USER2","content":"content1content0","depth":1}')),
    FriendsPost.fromJson(jsonDecode(
        '{"private_post_ID":3,"origin_post_ID":1,"user_ID":"USER3","content":"content2content1content0","depth":2}')),
  ];
}

abstract class ProfileRepo {
  static Profile profileMockData = Profile.fromJson(jsonDecode(
      '{"name":"NameIsMyName","profile_image_URL":"https://picsum.photos/id/1/200/300","blood_type":"AB","phone_number":"010-0000-0000"}'));
}

abstract class MyInfoRepo {
  static MyInfo myInfoMockData = MyInfo.fromJson(jsonDecode(
      '{"public_post_ID_list":[1,2],"private_post_ID_list":[3,4],"sendding_messages":["Thank","you"],"receiving_messages":["UR","welcome"],"awards":["Over 10","Over 100"],"donation_request_list":[5,6],"success_donation_list":[7,8]}'));
}
