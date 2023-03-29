import 'dart:convert';

import 'package:bloodmate_app/data/model/models.dart';

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

abstract class PublicPostRepo {
  static List<Post> publicPostMockData = [
    Post.fromJson(jsonDecode(
        '{"id":99,"title":"Please save my friend","bloodType":"B+","region":"KR","longtitude":"0.0","latitude":"0.0","content":"Hey everyone, I have a friend in the hospital who was in a bike accident and is in need of a blood transfusion. His blood type is B+ and he is currently admitted to room 402 at Korea University Hospital in Seoul. His name is SeongMin and he urgently needs platelet transfusions (A-PLT). If you or anyone you know can donate, please consider doing so. The blood donor code is 230301-0001 and the donation period is from March 1st to March 10th, 2023. Your help can save a life!"}')),
    Post.fromJson(jsonDecode(
        '{"id":99,"title":"My father get hurts","bloodType":"A+","region":"KR","longtitude":"0.0","latitude":"0.0","content":"I am in urgent need of blood donation for my father who got injured. His blood type is AB+ and he is currently hospitalized at Seoul National University Hospital. His name is John Smith and he was involved in a car accident which caused severe blood loss. The blood donation code is 230327-0001. The donation period starts from today, March 27th, 2023, and ends on April 3rd, 2023. Any blood type is welcome, and your contribution could save his life. Please help spread the word and come donate if you can. Thank you in advance for your help."}')),
  ];
}
