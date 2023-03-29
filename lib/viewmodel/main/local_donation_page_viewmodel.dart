import 'package:bloodmate_app/data/repository/post_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/profile_repository.dart';

class LocalDonationPageViewModel with ChangeNotifier {
  late final PostRepository _postRepository;

  late PostResponse? focusedPostResponse;

  List<Post> _publicPost = [];

  List<Post> get publicPost => _publicPost;

  LocalDonationPageViewModel() {
    _postRepository = PostRepository();
    _loadData();
  }

  Future<void> _loadData() async {
    _publicPost = await _postRepository.getMockData();
    print(_publicPost);
    notifyListeners();
  }
}
