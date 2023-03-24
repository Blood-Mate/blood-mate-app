import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/data/repository/people_repository.dart';

class WritePrivatePostPageViewModel with ChangeNotifier {
  late final PeopleRepository _peopleRepository;
  //late final PostRepository _postRepository;

  WritePrivatePostPageViewModel() {
    _peopleRepository = PeopleRepository();
    // _postRepository = PostRepository();
  }

  Future<int> posting(content) async {
    //statusCode = await _postRepository.postPrivatePost(content: content);
    return 1; // statusCode;
  }
}
