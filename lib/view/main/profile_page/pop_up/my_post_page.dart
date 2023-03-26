import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/profile_page_viewmodel.dart';
import 'package:bloodmate_app/view/main/profile_page/pop_up/my_posts_view.dart';

class MyPostPage extends StatelessWidget {
  MyPostPage({super.key, required this.viewModel});

  final ProfilePageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return _buildMyPostPage(context, viewModel);
  }

  Widget _buildMyPostPage(context, viewModel) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: BackAppBar().build(context),
      body: Column(
        children: [
          SubPageHeader(title: 'My Posts'),
          SizedBox(height: 15),
          Expanded(child: showMyPosts()),
        ],
      ),
    );
  }

  Widget showMyPosts() {
    return ChangeNotifierProvider.value(value: viewModel, child: MyPostsView());
  }
}
