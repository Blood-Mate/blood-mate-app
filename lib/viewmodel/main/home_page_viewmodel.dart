import 'package:bloodmate_app/data/repository/post_repository.dart';
import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/profile_repository.dart';

class HomePageViewModel with ChangeNotifier {
  late final ProfileRepository _profileRepository;
  late final PostRepository _postRepository;

  late Profile _profile;
  List<Post> _privatePost = [];

  Profile get profile => _profile;
  List<Post> get privatePost => _privatePost;

  HomePageViewModel() {
    _profileRepository = ProfileRepository();
    _postRepository = PostRepository();
    _loadData();
  }

  Future<void> _loadData() async {
    _profile = await _profileRepository.getUser();
    _privatePost = await _postRepository.getPrivatePost();

    notifyListeners();
  }
}
