import 'dart:async';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';

import '../model/models.dart';
import 'package:bloodmate_app/data/util/dio_factory.dart';
import 'package:bloodmate_app/data/app_environment.dart';
import 'package:bloodmate_app/data/mock_data/mock_data.dart';

class ProfileRepository {
  // Generate Instance
  static final ProfileRepository _profileRepository = ProfileRepository();
  // Get Instance of the class
  static ProfileRepository get profileRepositoryInstance => _profileRepository;
  // Open Dio
  static final Dio _dio = const DioFactory(AppEnvironment.baseUrl).create();

  // DB에서 profile data 가져옴
  Future getProfile() async {
    Box _tokenBox = await Hive.openBox('tokens');

    // JSON-WEB-TOKEN JWT
    var accessToken = _tokenBox.get('access_token');
    var refreshtoken = _tokenBox.get('refresh_token');
    // Request Header
    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $accessToken",
      'x-refresh-token': refreshtoken
    };
    // Internet Connection check
    // try catch는 나중에
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      print("get");
      Response response =
          await _dio.get('/user', options: Options(headers: headers));
      print(response);
      final profileResponse = Profile.fromJson(response.data);
      print(profileResponse);
      return profileResponse;
    }

    // 함수를 Future<Profile>로 짜면 nullable해서 빈 Profile 객체를 반환해야함
    // Profile profile = {};
    // return profile;
  }

  // mock data
  Profile getMockData() {
    return ProfileRepo.profileMockData;
  }
}
