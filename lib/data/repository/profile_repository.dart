import 'dart:async';

import '../model/models.dart';
import '../data_source/data_sources.dart';
import 'package:bloodmate_app/data/mock_data/mock_data.dart';

class ProfileRepository {
  // final LocalDataSource _localDataSource = LocalDataSource();
  // final RemoteDataSource _remoteDataSource = RemoteDataSource();

  // // 로컬에 캐싱된 게시물 목록가져옴
  // Future<List<FriendsPost>> getCachedPosts() {
  //   return _localDataSource.getCachedPosts();
  // }

  // // 게시물 목록을 가져옴
  // Future<List<FriendsPost>> getPosts() {
  //   return _remoteDataSource.getPosts();
  // }

  // mock data
  Profile getMockData() {
    return ProfileRepo.profileMockData;
  }
}
