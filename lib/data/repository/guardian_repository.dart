import 'dart:async';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';

import '../model/models.dart';
import 'package:bloodmate_app/data/util/dio_factory.dart';
import 'package:bloodmate_app/data/app_environment.dart';
import 'package:bloodmate_app/data/mock_data/mock_data.dart';

class GuardianRepository {
  // Generate Instance
  static final GuardianRepository _guardianRepository = GuardianRepository();
  // Get Instance of the class
  static GuardianRepository get _guardianRepositoryInstance =>
      _guardianRepository;
  // Open Dio
  static final Dio _dio = const DioFactory(AppEnvironment.baseUrl).create();

  // DB에서 data 가져옴
  Future getGuardian() async {
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
      Response response =
          await _dio.get('/guardian', options: Options(headers: headers));
      final guardianResponse = Guardian.fromJson(response.data);
      print('guardian_repo');
      print(guardianResponse);
      return guardianResponse;
    }

    // 함수를 Future<Profile>로 짜면 nullable해서 빈 Profile 객체를 반환해야함
    // Profile profile = {};
    // return profile;
  }

  // mock data
  // Profile getMockData() {
  //   return ProfileRepo.profileMockData;
  // }
}
