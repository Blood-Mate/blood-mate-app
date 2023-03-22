import 'dart:async';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';

import '../model/models.dart';
import 'package:bloodmate_app/data/util/dio_factory.dart';
import 'package:bloodmate_app/data/app_environment.dart';
import 'package:bloodmate_app/data/mock_data/mock_data.dart';

class ProtegeRepository {
  // Generate Instance
  static final ProtegeRepository _protegeRepository = ProtegeRepository();
  // Get Instance of the class
  static ProtegeRepository get protegeRepositoryInstance => _protegeRepository;
  // Open Dio
  static final Dio _dio = const DioFactory(AppEnvironment.baseUrl).create();

  // DB에서 data 가져옴
  Future getProtege() async {
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
      Response response = await _dio.get('/guardian/requestor',
          options: Options(headers: headers));
      print('get protege');

      final protegeResponse = Protege.fromJson(response.data);
      print('protege_repo');
      print(protegeResponse);
      return protegeResponse;
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
