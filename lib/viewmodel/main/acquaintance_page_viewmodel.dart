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
}
