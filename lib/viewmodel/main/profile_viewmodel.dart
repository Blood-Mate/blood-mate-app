import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/profile_repository.dart';

class ProfileViewModel with ChangeNotifier {
  late final ProfileRepository _profileRepository;

  Profile get data => _data;
  Profile _data = Profile(
      name: "", profile_image_URL: "", blood_type: "", phone_number: "");

  ProfileViewModel() {
    _profileRepository = ProfileRepository();
    _loadData();
  }

  Future<void> _loadData() async {
    _data = await _profileRepository.getMockData();
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
