import 'package:bloodmate_app/data/repository/post_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/profile_repository.dart';

class HomePageViewModel with ChangeNotifier {
  late final ProfileRepository _profileRepository;
  late final PostRepository _postRepository;

  late PostResponse? focusedPostResponse;

  Profile _profile = Profile(
      id: 0,
      name: '',
      bloodType: '',
      phoneNumber: '',
      publicPosts: [],
      privatePosts: []);
  List<PostResponse> _privatePost = [];

  Profile get profile => _profile;
  List<PostResponse> get privatePost => _privatePost;

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

  Future<int> sharePost(content) async {
    int originId;
    int currentDepth = focusedPostResponse!.post.depth!;

    if (focusedPostResponse!.originPost != null) {
      // shared post
      originId = focusedPostResponse!.originPost!.id;
    } else {
      // origin post
      originId = focusedPostResponse!.post.id;
    }
    // share
    Response response = await _postRepository.repostPrivatePost(
        content: content, originId: originId, currentDepth: currentDepth);

    return response.statusCode!;
  }

  focusPost(PostResponse post) {
    focusedPostResponse = post;
  }

  releaseFocus() {
    focusedPostResponse = null;
  }
}
