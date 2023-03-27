import 'package:bloodmate_app/data/model/models.dart';
import 'package:bloodmate_app/view/common/route_animation.dart';
import 'package:bloodmate_app/view/main/profile_page/pop_up/edit_private_post_page.dart';
import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';

class MyPrivatePostPage extends StatefulWidget {
  MyPrivatePostPage({super.key, required this.viewModel});

  final viewModel;

  @override
  State<MyPrivatePostPage> createState() => _MyPrivatePostPageState();
}

class _MyPrivatePostPageState extends State<MyPrivatePostPage> {
  @override
  Widget build(BuildContext context) {
    return _buildPrivatePostPage(context, widget.viewModel);
  }

  Widget _buildPrivatePostPage(context, viewModel) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;
    final post = viewModel.focusedPost;
    Post? originPost = viewModel.focusedOriginPost;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: appBar(context, post)),
      body: Column(
        children: [
          SubPageHeader(title: 'My Private Post'),
          Expanded(
            child: SingleChildScrollView(
              child: showPost(screenSize, post, originPost),
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
        IconButton(
          onPressed: () async {
            //수정
            widget.viewModel.focusPost(post.id);
            PageRouteWithAnimation pageRouteWithAnimation =
                PageRouteWithAnimation(
                    EditPrivatePostPage(viewModel: widget.viewModel));
            var res = await Navigator.push(
                context, pageRouteWithAnimation.slideRitghtToLeft());
            setState(() {
              post = widget.viewModel.focusedPost;
            });
          },
          icon: Icon(Icons.edit_document, fill: 0, color: Colors.black),
        ),
      ],
    );
  }

  Widget showPost(screenSize, post, originPost) {
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
        child: (post.originId != -1)
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
    );
  }
}
