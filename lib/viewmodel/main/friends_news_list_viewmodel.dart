import 'package:bloodmate_app/data/repository/post_repository.dart';
import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';

class FriendsNewsListViewModel with ChangeNotifier {
  late final PostRepository _friendsPostRepository;

  // List<FriendsPost> get items => _items;
  // List<FriendsPost> _items = [];

  FriendsNewsListViewModel() {
    _friendsPostRepository = PostRepository();
    //_loadItems();
  }

  // Future<void> _loadItems() async {
  //   _items = await _friendsPostRepository.getMockData();
  //   notifyListeners();
  // }
}
