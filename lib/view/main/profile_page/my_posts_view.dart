import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/viewmodel/main/main_viewmodels.dart';
import 'package:bloodmate_app/view/common/component/list_view_tile.dart';

class MyPostsView extends StatefulWidget {
  MyPostsView({super.key});

  @override
  State<MyPostsView> createState() => _MyPostsView();
}

class _MyPostsView extends State<MyPostsView> {
  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ProfilePageViewModel>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        categoryButton(viewModel, context),
        Expanded(
          child: showPosts(viewModel),
        ),
      ],
    );
  }

  Widget categoryButton(viewModel, context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: () {
              viewModel.setPrivatePosts(true);
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  viewModel.isPrivatePosts ? theme.focusColor : Colors.grey,
              foregroundColor: Colors.white,
              fixedSize: Size((screenSize.width - 40) / 2, 50),
            ),
            child: Text('Private Posts')),
        SizedBox(width: 10),
        ElevatedButton(
            onPressed: () {
              viewModel.setPrivatePosts(false);
              setState(() {});
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  viewModel.isPrivatePosts ? Colors.grey : theme.focusColor,
              foregroundColor: Colors.white,
              fixedSize: Size((screenSize.width - 40) / 2, 50),
            ),
            child: Text('Public Posts')),
      ],
    );
  }

  Widget showPosts(viewModel) {
    final myPrivatePosts = viewModel.showPosts();
    final myPrivatePostCount = myPrivatePosts.length;

    return ListView.builder(
      itemBuilder: (context, index) {
        final item = myPrivatePosts[index];
        return myPrivatePostCount == 0
            ? Card(child: ListTile(title: Text("No Posts")))
            : MyPrivatePostsTile(item: item, viewModel: viewModel);
      },
      itemCount: myPrivatePostCount,
    );
  }
}
