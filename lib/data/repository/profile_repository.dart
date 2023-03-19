import 'dart:async';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

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
  final Dio _dio = const DioFactory(AppEnvironment.baseUrl).create();

  // DB에서 profile data 가져옴
  Future getProfile() async {
    // access token 어디서 받아올건지, 오류 뜨면 어떻게 재요청 할건지 만들어야함
    // JSON-WEB-TOKEN JWT
    var userToken = "sdfghghgfdsfggf";
    // Request Header
    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $userToken"
    };
    // Internet Connection check
    // try catch는 나중에
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      Response response =
          await _dio.get('/user', options: Options(headers: headers));
      final profileResponse = Profile.fromJson(response.data);
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
