import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/my_info_repository.dart';

class MyInfoViewModel with ChangeNotifier {
  late final MyInfoRepository _myInfoRepository;

  MyInfo get data => _data;
  MyInfo _data = MyInfo(
    senddingMessages: [],
    receivingMessages: [],
    awards: [],
    donationRequests: [],
    successDonations: [],
  );

  MyInfoViewModel() {
    _myInfoRepository = MyInfoRepository();
    _loadData();
  }

  Future<void> _loadData() async {
    _data = await _myInfoRepository.getMockData();
    notifyListeners();
  }
}
