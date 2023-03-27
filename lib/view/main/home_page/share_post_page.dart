import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/view/common/component/component.dart';

class SharePostPage extends StatelessWidget {
  SharePostPage({super.key, required this.viewModel});

  final viewModel;
  final TextEditingController _contentController = TextEditingController();
  final FocusNode _contentFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    // _contentController.text = viewModel.focusedPostResponse.post.content;
    return _buildSharePostPagePage(context, viewModel);
  }

  Widget _buildSharePostPagePage(context, viewModel) {
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
          SubPageHeader(title: 'Share Post'),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  addContent(),
                  showPost(context, post, originPost),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget addContent() {
    return Container(
      height: 150,
      margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      padding: EdgeInsets.all(15),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black, width: 1)),
      child: TextField(
        decoration: InputDecoration.collapsed(hintText: "Write your comment"),
        keyboardType: TextInputType.multiline,
        maxLines: null,
        controller: _contentController,
      ),
    );
  }

  Widget showPost(context, post, originPost) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          margin: const EdgeInsets.all(20.0),
          height: screenSize.height - 355,
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(color: Colors.black, width: 1)),
          child: SingleChildScrollView(
            child: Container(
              height: 400,
              margin: EdgeInsets.symmetric(vertical: 15),
              child: (originPost != null)
                  ? Text(originPost.content)
                  : Text(post.content),
            ),
          ),
        ),
        Positioned(
          bottom: 40,
          left: (screenSize.width - 200) / 2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: Size(200, 50), backgroundColor: theme.primaryColor),
            onPressed: () async {
              // donation request to origin User
              int res = await viewModel.sharePost(_contentController.text);
              print(res);
              if (res == 201) {
                Navigator.pop(context);
              }
            },
            child: Text("Complete"),
          ),
        ),
      ],
    );
  }
}
