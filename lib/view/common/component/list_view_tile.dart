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
