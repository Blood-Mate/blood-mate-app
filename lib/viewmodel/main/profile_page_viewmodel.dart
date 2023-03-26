import 'package:bloodmate_app/data/repository/my_info_repository.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/profile_repository.dart';

class ProfilePageViewModel with ChangeNotifier {
  late final ProfileRepository _profileRepository;
  late final MyInfoRepository _myInfoRepository;

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
    _loadData();
  }

  Future<void> _loadData() async {
    _profile = await _profileRepository.getUser();
    _myInfo = _myInfoRepository.getMockData();
    notifyListeners();
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
