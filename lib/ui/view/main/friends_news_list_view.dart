import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/ui/viewmodel/main/friends_news_list_viewmodel.dart';

class FriendsNewsListView extends StatelessWidget {
  const FriendsNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<FriendsNewsListViewModel>(context);
    return _buildFriendsNewsListView(viewModel);
  }

  Widget _buildFriendsNewsListView(viewModel) {
    final items = viewModel.items; // viewModel에 저장된 items
    final itemCount = items.length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('내 친구 소식')),
        SizedBox(height: 20),
        Flexible(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final item = items[index];
              return ListTile(title: Text(item.content));
            },
            itemCount: itemCount,
          ),
        ),
      ],
    );
  }
}
