import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'app_exception.dart';
import '../model/models.dart';
import '../app_logger.dart';
import 'package:bloodmate_app/data/data_source/app_environment.dart';
import 'package:bloodmate_app/data/data_source/dio_factory.dart';

class DioRemoteDataSource {
  final Dio _dio = DioFactory(AppEnvironment.baseUrl).create();

  static final DioRemoteDataSource _remoteDataSourceInstance =
      DioRemoteDataSource();

  @override
  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await _dio.post<Map<String, dynamic>>(
      '/auth/login',
      data: {'email': email, 'password': password},
    );
    final json = response.data!;
    return json;
  }

  Future callGetUser({required Map<String, dynamic>? myHeaders}) async {
    try {
      var connectivityResult = await (Connectivity().checkConnectivity());
      if (connectivityResult != ConnectivityResult.none) {
        Response response =
            await _dio.get('/user', options: Options(headers: myHeaders));

        return returnSuccessResponse(response);
      } else {
        //Toasts.getWarningToast(text: "No Internet Connection Available :(");
      }
    } on DioError catch (e) {
      // if call pull then use this
      // if (e.response != null) {
      //   var response = e.response;
      //   return returnErrorResponse(response!);
      // }
      AppLogger.logger.d("OnGetError: $e");
    } on Exception {
      AppLogger.logger.d("badHappenedError");
    }
  }

  dynamic returnSuccessResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        AppLogger.logger.d("responseJson: $response.data");
        return response.data;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
        throw UnauthorisedException(response.data.toString());
      case 403:
        throw ForbiddenException(response.data.toString());
      case 404:
        throw NotFoundException(response.data.toString());
      case 500:
        throw InternalServerError(response.data.toString());
      default:
        throw FetchDataException(
            'Error occurred while communicating with server with status code${response.statusCode}');
    }
  }

  // Check Response Status and Return Data in Failure
  dynamic returnErrorResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 400:
        throw BadRequestException(response.data.toString());
      case 401:
        throw UnauthorisedException(response.data.toString());
      case 403:
        throw ForbiddenException(response.data.toString());
      case 404:
        throw NotFoundException(response.data.toString());
      case 500:
        throw InternalServerError(response.data.toString());
      default:
        throw FetchDataException(
            'Error occurred while communicating with server with status code${response.statusCode}');
    }
  }
}
