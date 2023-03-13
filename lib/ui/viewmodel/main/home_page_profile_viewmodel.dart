import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/profile_repository.dart';

class HomePageProfileViewModel with ChangeNotifier {
  late final ProfileRepository _profileRepository;

  Profile get data => _data;
  Profile _data = Profile(
      name: "", profile_image_URL: "", blood_type: "", phone_number: "");

  HomePageProfileViewModel() {
    _profileRepository = ProfileRepository();
    _loadData();
  }

  Future<void> _loadData() async {
    _data = await _profileRepository.getMockData();
    notifyListeners();
  }
}
