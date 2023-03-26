import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/view/common/component/component.dart';

class FriendsPostPage extends StatelessWidget {
  FriendsPostPage({super.key, required this.viewModel});

  final viewModel;

  @override
  Widget build(BuildContext context) {
    return _buildFriendsPostPage(context, viewModel);
  }

  Widget _buildFriendsPostPage(context, viewModel) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;
    final post = viewModel.focusedPostResponse.post!;
    final writer = viewModel.focusedPostResponse.publisher!;
    Post? originPost = viewModel.focusedPostResponse.originPost;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight), child: BackAppBar()),
      body: Column(
        children: [
          SubPageHeader(title: 'Friend\'s Post'),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  showContactData(writer, originPost),
                  showPost(screenSize, post, theme, originPost),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget showContactData(contact, originPost) {
    return Container(
        height: 70,
        margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        padding: EdgeInsets.all(15),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.black, width: 1)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          (originPost != null)
              ? Text(contact.name + ' \'s acquaintance requests blood donation')
              : Text(contact.name + ' requests blood donation'),
          //Text('Blood type : '),
        ]));
  }

  Widget showPost(screenSize, post, theme, originPost) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          margin: const EdgeInsets.fromLTRB(15, 5, 15, 10),
          height: screenSize.height - 250,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 1)),
          child: SingleChildScrollView(
            child: (originPost != null)
                ? Container(
                    height: 400,
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(post.content),
                        SizedBox(height: 40),
                        Text("Origin Post"),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          width: screenSize.width - 40,
                          height: 1,
                          color: Colors.grey,
                        ),
                        Text(originPost.content),
                      ],
                    ),
                  )
                : Container(
                    height: 400,
                    margin: EdgeInsets.symmetric(vertical: 15),
                    child: Text(post.content),
                  ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: (screenSize.width - 200) / 2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50), backgroundColor: theme.primaryColor),
            onPressed: () {
              // donation request to origin User
              print(post);
            },
            child: Text("Send Request"),
          ),
        ),
      ],
    );
  }
}
