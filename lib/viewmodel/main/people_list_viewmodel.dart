import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/friends_post_repository.dart';

class PeopleListViewModel with ChangeNotifier {
  late final FriendsPostRepository _friendsPostRepository;

  List<FriendsPost> get items => _items;
  List<FriendsPost> _items = [];

  FriendsNewsListViewModel() {
    _friendsPostRepository = FriendsPostRepository();
    _loadItems();
  }

  Future<void> _loadItems() async {
    _items = await _friendsPostRepository.getMockData();
    notifyListeners();
  }
}
