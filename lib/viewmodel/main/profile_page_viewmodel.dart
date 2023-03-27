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
  late final PostRepository _postRepository;

  late bool isPrivatePosts;
  late Post? focusedPost;
  late Post? focusedOriginPost;

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
    _postRepository = PostRepository();
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
    Response response = await _postRepository.deletePrivatePost(postId: postId);
    _loadData();
    return response.statusCode!;
  }

  Future<int> editMyPrivatePost(postId, content) async {
    Response response = await _postRepository.updatePrivatePostsContent(
        postId: postId, content: content);
    await _loadData();
    await focusPost(postId);
    return response.statusCode!;
  }

  focusPost(int postId) async {
    for (Post post in _profile.privatePosts) {
      if (post.id == postId) {
        focusedPost = post;
      }
    }
    print(focusedPost!.originId);
    await getOrigin();
  }

  getOrigin() async {
    var originId = focusedPost!.originId;
    if (originId == null || originId == -1) {
      focusedOriginPost = null;
    }
    List<PostResponse> _privatePost = await _postRepository.getPrivatePost();
    for (PostResponse postResponse in _privatePost) {
      if (postResponse.post.id == originId) {
        focusedOriginPost = postResponse.post;
      }
      if (postResponse.post.originId! == originId) {
        focusedOriginPost = (postResponse.originPost == null)
            ? postResponse.post
            : postResponse.originPost;
      }
    }
  }

  releaseFocus() {
    focusedPost = null;
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
