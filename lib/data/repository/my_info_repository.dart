import 'dart:async';

import '../model/models.dart';
import 'package:bloodmate_app/data/mock_data/mock_data.dart';
import 'package:bloodmate_app/data/data_source/remote_data_source.dart';

class MyInfoRepository {
  // mock data
  MyInfo getMockData() {
    return MyInfoRepo.myInfoMockData;
  }
}
