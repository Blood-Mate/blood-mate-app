import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/home_page_viewmodel.dart';

class FriendsNewsListView extends StatelessWidget {
  const FriendsNewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<HomePageViewModel>(context);
    return _buildFriendsNewsListView(viewModel);
  }

  Widget _buildFriendsNewsListView(viewModel) {
    final privatePost = viewModel.privatePost; // viewModel에 저장된 items
    final privatePostCount = privatePost.length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('내 친구 소식')),
        ThinDevider(),
        Flexible(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final item = privatePost[index];
              return FriendsListViewTile(item: item);
            },
            itemCount: privatePostCount,
          ),
        ),
      ],
    );
  }
}
