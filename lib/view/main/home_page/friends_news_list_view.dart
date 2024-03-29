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
    final privatePost = viewModel.privatePost;
    final filteredPost =
        privatePost.where((request) => request.publisher != null).toList();
    final privatePostCount = filteredPost.length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'From My Contacts',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
        SizedBox(height: 2),
        privatePostCount == 0
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Card(child: ListTile(title: Text('No Request'))))
            : Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  itemBuilder: (context, index) {
                    final item = privatePost[index];
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 3),
                        child: FriendsListViewTile(
                            item: item, viewModel: viewModel));
                  },
                  itemCount: privatePostCount,
                ),
              ),
      ],
    );
  }
}
