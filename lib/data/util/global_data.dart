import 'package:flutter/foundation.dart';

class MyTokens extends ChangeNotifier {
  String accessToken = '';
  String refreshToken = '';

  getAccessToken() => accessToken;
  getRefreshToken() => refreshToken;

  void setTokens(String accessToken, String refreshToken) {
    accessToken = accessToken;
    refreshToken = refreshToken;
    notifyListeners();
  }
}
