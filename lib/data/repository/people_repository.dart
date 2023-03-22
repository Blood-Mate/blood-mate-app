import 'dart:async';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';

import '../model/models.dart';
import 'package:bloodmate_app/data/util/dio_factory.dart';
import 'package:bloodmate_app/data/app_environment.dart';
import 'package:bloodmate_app/data/mock_data/mock_data.dart';

class PeopleRepository {
  // Generate Instance
  static final PeopleRepository _peopleRepository = PeopleRepository();
  // Get Instance of the class
  static PeopleRepository get peopleRepositoryInstance => _peopleRepository;
  // Open Dio
  static final Dio _dio = const DioFactory(AppEnvironment.baseUrl).create();

  Future getHeader() async {
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

    return headers;
  }

  // Protege
  Future getProtege() async {
    // load header from local cached repository
    final headers = await getHeader();

    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // get proteges
      Response response = await _dio.get('/guardian/requestor',
          options: Options(headers: headers));
      // transform data
      List<People> protegeResponse =
          List<People>.from(response.data.map((e) => People.fromJson(e)));

      // log
      print('protege_repo');
      print(protegeResponse);

      return protegeResponse;
    }
  }

  // Guardian
  Future getGuardian() async {
    // load header from local cached repository
    final headers = await getHeader();

    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // get guardians
      Response response =
          await _dio.get('/guardian', options: Options(headers: headers));
      // transform data
      List<People> guardianResponse =
          List<People>.from(response.data.map((e) => People.fromJson(e)));

      // log
      print('guardian_repo');
      print(guardianResponse);

      return guardianResponse;
    }
  }

  // contact
  Future getContact() async {
    // load header from local cached repository
    final headers = await getHeader();

    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // get contacts
      Response response =
          await _dio.get('/contact', options: Options(headers: headers));

      // transform data
      List<People> contactResponse =
          List<People>.from(response.data.map((e) => People.fromJson(e)));

      // log
      print('contact_repo');
      print(contactResponse);

      return contactResponse;
    }
  }
}
