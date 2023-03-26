import 'package:flutter/material.dart';

class FriendsListViewTile extends StatelessWidget {
  FriendsListViewTile({super.key, required this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(item.publisher.name + '의 헌혈 요청글입니다.'),
      subtitle: Text(item.post.content),
    ));
  }
}

class LocalListViewTile extends StatelessWidget {
  const LocalListViewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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
                onTap: () {
                  // 자세히 보기
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
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('No')),
                              TextButton(
                                  onPressed: () async {
                                    var res = await viewModel
                                        .deletMyPrivatePost(item.id);
                                    Navigator.of(context).pop();
                                  },
                                  child: Text('Yes'))
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
