
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
