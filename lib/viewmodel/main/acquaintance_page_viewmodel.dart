import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/people_repository.dart';

class AcquaintancePageViewModel with ChangeNotifier {
  late final PeopleRepository _peopleRepository;

  List<People> _guardian = [];
  List<People> _protege = [];
  List<People> _contact = [];

  List<People> get guardian => _guardian;
  List<People> get protege => _protege;
  List<People> get contact => _contact;

  late int statusCode;

  AcquaintancePageViewModel() {
    _peopleRepository = PeopleRepository();
    _loadItems();
  }

  Future<void> _loadItems() async {
    _guardian = await _peopleRepository.getGuardian();
    _protege = await _peopleRepository.getProtege();
    _contact = await _peopleRepository.getContact();
    notifyListeners();
  }

  Future<int> changeIsSendingTarget(contactId, isSendingTarget) async {
    statusCode = await _peopleRepository.patchContact(
        contactId: contactId, isSendingTarget: isSendingTarget);
    _loadItems();
    notifyListeners();
    return statusCode;
  }

  Future<int> addGuardian(phoneNumber) async {
    statusCode = await _peopleRepository.postGuardian(phoneNumber: phoneNumber);
    _loadItems();
    notifyListeners();
    return statusCode;
  }

  Future<int> deleteGuardian(guardianId) async {
    Response response =
        await _peopleRepository.deleteGuardian(guardianId: guardianId);
    _loadItems();
    notifyListeners();
    return response.statusCode!;
  }
}
