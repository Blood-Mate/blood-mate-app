import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';

class EditPrivatePostPage extends StatelessWidget {
  EditPrivatePostPage({super.key, required this.viewModel});

  final viewModel;
  final TextEditingController _contentController = TextEditingController();
  final FocusNode _contentFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    _contentController.text = viewModel.focusedPost.content;
    return _buildEditPrivatePostPage(context, viewModel);
  }

  Widget _buildEditPrivatePostPage(context, viewModel) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;
    final post = viewModel.focusedPost!;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: appBar(context, post)),
      body: Column(
        children: [
          SubPageHeader(title: 'Edit Post'),
          Expanded(
            child: SingleChildScrollView(
              child: writePost(screenSize),
            ),
          ),
        ],
      ),
    );
  }

  AppBar appBar(context, post) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        focusColor: Colors.white,
        splashColor: Colors.white,
        highlightColor: Colors.white,
        disabledColor: Colors.white,
        icon: Icon(Icons.arrow_back_ios, color: Theme.of(context).hintColor),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        TextButton(
            onPressed: () async {
              // 내 private post 수정하기
              print("my post");
              final res = await viewModel.editMyPrivatePost(
                  post.id, _contentController.text);
              if (res == 200) {
                print("suc");
                Navigator.pop(context, true);
              }
            },
            child: Text("Edit")),
      ],
    );
  }

  Widget writePost(Size screenSize) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      height: screenSize.height - 160,
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black, width: 1)),
      child: SingleChildScrollView(
        child: Container(
          height: 400,
          margin: EdgeInsets.symmetric(vertical: 15),
          child: TextField(
            decoration: InputDecoration.collapsed(hintText: "Write Post"),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: _contentController,
          ),
        ),
      ),
    );
  }
}
