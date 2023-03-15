import 'dart:async';

import '../model/models.dart';
import '../data_source/data_sources.dart';
import 'package:bloodmate_app/data/mock_data/mock_data.dart';

class MyInfoRepository {
  // mock data
  MyInfo getMockData() {
    return MyInfoRepo.myInfoMockData;
  }
}
