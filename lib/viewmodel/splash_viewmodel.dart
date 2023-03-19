import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/data/util/global_data.dart';
import 'package:bloodmate_app/data/repository/profile_repository.dart';

class SplashViewModel {
  final BuildContext context;
  SplashViewModel({required this.context});

  Future checkCachedTokens() async {
    try {
      Box _tokenBox = await Hive.openBox('tokens');
      if (_tokenBox.isNotEmpty) {
        final accessToken = _tokenBox.get('access_token');
        print(accessToken);
        final isValid = await ProfileRepository().getProfile();
        return true;
      }
      // 전역변수에 넣고싶은데 myTokens 불러오는거에서 오류남
      final myTokens = Provider.of<MyTokens>(context);
      if (_tokenBox.isNotEmpty) {
        myTokens.setTokens(
            _tokenBox.get('access_token'), _tokenBox.get('refresh_token'));
        print("have tokens");
        return true;
      } else {
        print("no cached tokens");
        return false;
      }
    } catch (e) {
      print("load cache data error");
      return false;
    }
  }
}
