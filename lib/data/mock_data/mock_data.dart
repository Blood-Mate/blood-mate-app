import 'dart:convert';

import 'package:bloodmate_app/data/model/models.dart';

abstract class FriendsPostRepo {
  static List<FriendsPost> friendsPostListMockData = [
    FriendsPost.fromJson(jsonDecode(
        '{"privatePostID":1,"originPostID":1,"userID":"USER1","content":"content0","depth":0}')),
    FriendsPost.fromJson(jsonDecode(
        '{"privatePostID":2,"originPostID":1,"userID":"USER2","content":"content1content0","depth":1}')),
    FriendsPost.fromJson(jsonDecode(
        '{"privatePostID":3,"originPostID":1,"userID":"USER3","content":"content2content1content0","depth":2}')),
  ];
}

abstract class ProfileRepo {
  static Profile profileMockData = Profile.fromJson(jsonDecode(
      '{"name":"NameIsMyName","profileImageURL":"https://picsum.photos/id/1/200/300","bloodType":"AB","phoneNumber":"010-0000-0000"}'));
}

abstract class MyInfoRepo {
  static MyInfo myInfoMockData = MyInfo.fromJson(jsonDecode(
      '{"publicPosts":[1,2],"privatePosts":[3,4],"senddingMessages":["Thank","you"],"receivingMessages":["UR","welcome"],"awards":["Over 10","Over 100"],"donationRequests":[5,6],"successDonations":[7,8]}'));
}

abstract class ProtegeRepo {
  static List<People> protegeMockData = [
    People.fromJson(jsonDecode(
        '{"id":99,"requestorId":18,"phoneNumber":"+821000000001","name":"testuser2","bloodType":"A+"}')),
  ];
}
