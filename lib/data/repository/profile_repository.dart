import 'dart:async';
import 'package:dio/dio.dart';

import '../model/models.dart';
import '../app_logger.dart';

import 'package:bloodmate_app/data/mock_data/mock_data.dart';
import 'package:bloodmate_app/data/data_source/dio_remote_data_source.dart';

class ProfileRepository {
  // Generate Instance
  static final ProfileRepository _profileRepository = ProfileRepository();
  // Get Instance of the class
  static ProfileRepository get profileRepositoryInstance => _profileRepository;

  final DioRemoteDataSource _remoteDataSource = DioRemoteDataSource();

  // DB에서 profile data 가져옴
  Future<Profile> getProfile() async {
    // access token 어디서 받아올건지, 오류 뜨면 어떻게 재요청 할건지 만들어야함
    // Demo JSON-WEB-TOKEN JWT
    var userToken = "sdfghghgfdsfggf";
    // Request Header
    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $userToken"
    };

    final _response = await _remoteDataSource.callGetUser(myHeaders: headers);
    final profileResponse = Profile.fromJson(_response);

    return profileResponse;
  }

  // mock data
  Profile getMockData() {
    return ProfileRepo.profileMockData;
  }
}
