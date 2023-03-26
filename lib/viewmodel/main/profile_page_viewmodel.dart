import 'package:bloodmate_app/data/repository/post_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/my_info_repository.dart';
import 'package:bloodmate_app/data/repository/profile_repository.dart';

class ProfilePageViewModel with ChangeNotifier {
  late final ProfileRepository _profileRepository;
  late final MyInfoRepository _myInfoRepository;
  late final PostRepository _PostRepository;

  late bool isPrivatePosts;

  Profile _profile = Profile(
      id: 0,
      name: '',
      bloodType: '',
      phoneNumber: '',
      publicPosts: [],
      privatePosts: []);

  MyInfo _myInfo = MyInfo(
      senddingMessages: [],
      receivingMessages: [],
      awards: [],
      donationRequests: [],
      successDonations: []);

  Profile get profile => _profile;
  MyInfo get myInfo => _myInfo;

  ProfilePageViewModel() {
    _profileRepository = ProfileRepository();
    _myInfoRepository = MyInfoRepository();
    _PostRepository = PostRepository();
    isPrivatePosts = true;
    _loadData();
  }

  Future<void> _loadData() async {
    _profile = await _profileRepository.getUser();
    _myInfo = _myInfoRepository.getMockData();
    notifyListeners();
  }

  setPrivatePosts(bool val) {
    isPrivatePosts = val;
    showPosts();
  }

  List<Post> showPosts() {
    return isPrivatePosts ? _profile.privatePosts : _profile.publicPosts;
  }

  Future<int> deletMyPrivatePost(postId) async {
    Response response = await _PostRepository.deletePrivatePost(postId: postId);
    _loadData();
    return response.statusCode!;
  }

  Future signOut() async {
    try {
      Box _tokenBox = await Hive.openBox('tokens');
      _tokenBox.clear();
      // test log
      print("Clear!");
    } catch (e) {
      // test log
      print("Error");
    }
  }
}
