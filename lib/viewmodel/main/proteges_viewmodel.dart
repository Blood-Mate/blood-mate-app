import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/protege_repository.dart';

class ProtegesViewModel with ChangeNotifier {
  late final ProtegeRepository _protegeRepository;

  List<Protege> get items => _items;
  List<Protege> _items = [];

  ProtegesViewModel() {
    _protegeRepository = ProtegeRepository();
    _loadItems();
  }

  Future<void> _loadItems() async {
    _items = await _protegeRepository.getProtege();
    notifyListeners();
  }
}
