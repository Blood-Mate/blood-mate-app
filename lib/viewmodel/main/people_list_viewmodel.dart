import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/contact_repository.dart';
import 'package:bloodmate_app/data/repository/guardian_repository.dart';

class PeopleListViewModel with ChangeNotifier {
  late final GuardianRepository _guardianRepository;
  late final ContactRepository _contactRepository;

  List<Guardian> _guardian = [];
  List<Contact> _contacts = [];
  List<Guardian> get guardian => _guardian;
  List<Contact> get contacts => _contacts;

  PeopleListViewModel() {
    _guardianRepository = GuardianRepository();
    _contactRepository = ContactRepository();
    _loadItems();
  }

  Future<void> _loadItems() async {
    _guardian = await _guardianRepository.getGuardian();
    _contacts = await _contactRepository.getContact();
    notifyListeners();
  }
}
