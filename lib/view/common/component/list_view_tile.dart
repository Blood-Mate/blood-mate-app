import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/view/common/route_animation.dart';
import 'package:bloodmate_app/view/main/home_page/friends_post_page.dart';
import 'package:bloodmate_app/view/main/profile_page/pop_up/my_private_post_page.dart';
import 'package:flutter/material.dart';

class FriendsListViewTile extends StatelessWidget {
  FriendsListViewTile({super.key, required this.item, required this.viewModel});

  final item;
  final viewModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(item.publisher.name + ' requests blood donation'),
      subtitle: Text(
        item.post.content,
        maxLines: 2, // 두 줄까지만 보이도록 함
        overflow: TextOverflow.ellipsis, // 길이가 너무 길면 ...으로 처리
      ),
      onTap: () {
        viewModel.focusPost(item);
        PageRouteWithAnimation pageRouteWithAnimation =
            PageRouteWithAnimation(FriendsPostPage(viewModel: viewModel));
        Navigator.push(context, pageRouteWithAnimation.slideRitghtToLeft());
      },
    ));
  }
}

class LocalListViewTile extends StatelessWidget {
  LocalListViewTile({super.key, required this.item, required this.viewModel});

  final item;
  final viewModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(item.title),
      subtitle: Text(
        item.content,
        maxLines: 2, // 두 줄까지만 보이도록 함
        overflow: TextOverflow.ellipsis, // 길이가 너무 길면 ...으로 처리
      ),
      onTap: () {
        print(item);
      },
    ));
  }
}

class MyPrivatePostsTile extends StatelessWidget {
  MyPrivatePostsTile({super.key, required this.item, required this.viewModel});

  final item;
  final viewModel;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: (item.title == null)
            ? ListTile(
                title: Text(item.content),
                onTap: () async {
                  // 자세히 보기
                  await viewModel.focusPost(item.id);
                  PageRouteWithAnimation pageRouteWithAnimation =
                      PageRouteWithAnimation(
                          MyPrivatePostPage(viewModel: viewModel));
                  Navigator.push(
                      context, pageRouteWithAnimation.slideRitghtToLeft());
                },
                trailing: IconButton(
                  icon: Icon(Icons.delete_outlined),
                  //삭제
                  onPressed: () async {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Delete Post'),
                            content: Text('Are you sure you want to delete?'),
                            actions: [
                              DialogButton(
                                  onPressed: () async {
                                    var res = await viewModel
                                        .deletMyPrivatePost(item.id);
                                    Navigator.of(context).pop();
                                  },
                                  text: 'Yes'),
                              DialogButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  text: 'No'),
                            ],
                          );
                        });
                  },
                ),
              )
            : ListTile(
                title: Text(item.title),
                subtitle: Text(item.content),
              ));
  }
}
