import 'dart:async';
import 'package:bloodmate_app/data/model/post_model/post.dart';
import 'package:dio/dio.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:hive/hive.dart';

import '../model/models.dart';
import 'package:bloodmate_app/data/util/dio_factory.dart';
import 'package:bloodmate_app/data/app_environment.dart';

class PostRepository {
  static final PostRepository _postRepository = PostRepository();
  static PostRepository get postRepositoryInstance => _postRepository;
  static final Dio _dio = const DioFactory(AppEnvironment.baseUrl).create();

  // header token이 만료되면 어떻게 처리?
  constructor() {
    final authHaeders = getAuthHeader();
  }

  // GET /private-post
  Future getPrivatePost() async {
    print('[HTTP API LOG]: GET /private-post');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    Response response =
        await _dio.get('/private-post', options: Options(headers: authHeaders));
    List<Post> privatePosts =
        List<Post>.from(response.data.map((e) => Post.fromJson(e)));

    print('No Error');
    print(privatePosts);
    return privatePosts;
  }

  // POST /private-post
  Future postPrivatePost({required String content}) async {
    print('[HTTP API LOG]: POST /private-post');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    final data = {"content": content};
    Response response = await _dio.post('/private-post',
        data: data, options: Options(headers: authHeaders));

    print('No Error');
    return response;
  }

  // POST/private-post/guardian
  Future postPrivatePostAsGuardian(
      {required String content, required int wardId}) async {
    print('[HTTP API LOG]: POST /private-post/guardian');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    final data = {"content": content, "wardId": wardId};
    Response response = await _dio.post('/private-post/guardian',
        data: data, options: Options(headers: authHeaders));

    return response;
  }

  // POST /private-post/repost
  Future repostPrivatePost(
      {required String content,
      required int originId,
      required int currentDepth}) async {
    print('[HTTP API LOG]: POST /private-post/repost');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    final data = {
      "content": content,
      "originId": originId,
      "currentDepth": currentDepth
    };
    Response response = await _dio.post('/private-post/repost',
        data: data, options: Options(headers: authHeaders));

    return response;
  }

  // DELETE /private-post
  Future deletePrivatePost({required int postId}) async {
    print('[HTTP API LOG]: DELETE /private-post');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    final data = {postId: postId};
    Response response = await _dio.delete('/private-post',
        data: data, options: Options(headers: authHeaders));

    return response;
  }

  // PATCH /private-post/content
  Future updatePrivatePostsContent(
      {required int postId, required String content}) async {
    print('[HTTP API LOG]: PATCH /private-post/content');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    final data = {"postId": postId, "content": content};
    Response response = await _dio.patch('/private-post/content',
        data: data, options: Options(headers: authHeaders));

    return response;
  }

  // PATCH /private-post/finished
  Future updatePrivatePostFinished(
      {required int postId, required bool isFinished}) async {
    print('[HTTP API LOG]: PATCH /private-post/finished');
    checkInternetConnection();

    final authHeaders = await getAuthHeader();
    final data = {"postId": postId, "isFinished": isFinished};
    Response response = await _dio.patch('/private-post/finished',
        data: data, options: Options(headers: authHeaders));

    return response;
  }

  Future getAuthHeader() async {
    Box _tokenBox = await Hive.openBox('tokens');

    var accessToken = _tokenBox.get('access_token');
    var refreshtoken = _tokenBox.get('refresh_token');

    final headers = {
      "Content-Type": "application/json",
      "Authorization": "Bearer $accessToken",
      'x-refresh-token': refreshtoken
    };

    return headers;
  }

  Future checkInternetConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      print('[HTTP ERR]: internet connection');
      throw Exception('internet connection');
    }
  }
}
