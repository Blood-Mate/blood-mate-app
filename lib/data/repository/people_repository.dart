import 'dart:async';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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

  // Protege
  Future getProtege() async {
    // load header from local cached repository
    final headers = await getAuthHeader();

    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // get proteges
      print('get guardian requestor');
      Response response = await _dio.get('/guardian/requestor',
          options: Options(headers: headers));
      // transform data
      List<People> protegeResponse =
          List<People>.from(response.data.map((e) => People.fromJson(e)));

      // log
      print('no error');

      return protegeResponse;
    }
  }

  // contact
  Future getContact() async {
    // load header from local cached repository
    final headers = await getAuthHeader();

    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // get contacts
      print('get contact');
      Response response =
          await _dio.get('/contact', options: Options(headers: headers));

      // transform data
      List<People> contactResponse =
          List<People>.from(response.data.map((e) => People.fromJson(e)));

      // log
      print('no error');
      print(contactResponse);

      return contactResponse;
    }
  }

  Future postContact({required contacts}) async {
    // load header from local cached repository
    final headers = await getAuthHeader();

    final data = {"contacts": contacts};
    print(data);
    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // patch contacts' isSendingTarget
      print('post contact');
      Response response = await _dio.post('/contact',
          data: data, options: Options(headers: headers));

      // log
      print('no error');
      return response;
    }
  }

  Future patchContact(
      {required int contactId, required bool isSendingTarget}) async {
    // load header from local cached repository
    final headers = await getAuthHeader();

    final data = {"contactId": contactId, "isSendingTarget": isSendingTarget};

    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // patch contacts' isSendingTarget
      print('patch contact');
      Response response = await _dio.patch('/contact',
          data: data, options: Options(headers: headers));

      // log
      print('no error');
      return response.statusCode;
    }
  }

  // Guardian
  Future getGuardian() async {
    // load header from local cached repository
    final headers = await getAuthHeader();

    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      // get guardians
      print('get guardian');
      Response response =
          await _dio.get('/guardian', options: Options(headers: headers));
      // transform data
      List<People> guardianResponse =
          List<People>.from(response.data.map((e) => People.fromJson(e)));

      // log
      print('no error');

      return guardianResponse;
    }
  }

  Future postGuardian({required String phoneNumber}) async {
    // load header from local cached repository
    final headers = await getAuthHeader();
    final data = {"phoneNumber": phoneNumber};

    // Internet Connection check
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult != ConnectivityResult.none) {
      print('post guardian');
      // patch contacts' isSendingTarget
      Response response = await _dio.post('/guardian',
          data: data, options: Options(headers: headers));

      // log
      print('no error');
      return response.statusCode;
    }
  }

  Future deleteGuardian({required int guardianId}) async {
    print('[HTTP API LOG]: DELETE /guardian');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    final data = {"id": guardianId};

    Response response = await _dio.delete('/guardian',
        data: data, options: Options(headers: authHeaders));

    // log
    print('no error');
    return response;
  }

  Future deleteContact({required int contactId}) async {
    print('[HTTP API LOG]: DELETE /contact');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    Response response = await _dio.delete('/contact/$contactId',
        options: Options(headers: authHeaders));

    return response;
  }

  Future getAuthHeader() async {
    Box _tokenBox = await Hive.openBox('tokens');

    var accessToken = _tokenBox.get('access_token');
    var refreshtoken = _tokenBox.get('refresh_token');

    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $accessToken",
      'x-refresh-token': refreshtoken
    };

    return headers;
  }

  Future checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      print('[HTTP ERR]: internet connection');
      throw Exception('internet connection');
    }
  }

  // get protege하면 requestorId가 requstorId로 오타나있어서 지정이 안되는 오류로 mock data 활용
  getProtegeMockData() {
    print('protege_repo');
    print(ProtegeRepo.protegeMockData);
    return ProtegeRepo.protegeMockData;
  }
}
