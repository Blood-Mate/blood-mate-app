import 'package:flutter/material.dart';

class FriendsListViewTile extends StatelessWidget {
  FriendsListViewTile({super.key, required this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      title: Text(item.user_ID + '의 헌혈 요청글입니다.'),
      subtitle: Text(item.content),
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