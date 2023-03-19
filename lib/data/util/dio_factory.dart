import 'package:bloodmate_app/data/app_environment.dart';
import 'package:dio/dio.dart';

class DioFactory {
  final String _baseUrl;

  const DioFactory(this._baseUrl);

  Dio create() => Dio(_createBaseOptions());

  BaseOptions _createBaseOptions() => BaseOptions(
        // Request base url
        baseUrl: _baseUrl,

        // Timeout in milliseconds for receiving data
        receiveTimeout: Duration(milliseconds: 15000),

        // Timeout in milliseconds for sending data
        sendTimeout: Duration(milliseconds: 15000),

        // Timeout in milliseconds for opening url
        connectTimeout: Duration(milliseconds: 5000),
      );
}

class DioUtil {
  Dio _createDio() {
    // 나중에 인증 기능 추가할 때 사용함.
    // lib/api/services/api_auth_api.dart 파일로 사용하며
    // flutter secure storage를 통해 암호화한 키를 보관한다.
    //
    // final apiAuthInterceptor = ApiAuthInterceptor(
    //   ApiConsts.publicKey,
    //   const ApiKeyService(),
    // );
    final dioFactory = DioFactory(
      AppEnvironment.baseUrl,
      //apiAuthInterceptor,
    );
    return dioFactory.create();
  }
}
