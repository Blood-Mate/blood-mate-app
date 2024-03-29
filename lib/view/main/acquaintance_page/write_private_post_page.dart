import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';

class WritePrivatePostPage extends StatelessWidget {
  WritePrivatePostPage({super.key, required this.viewModel});

  final viewModel;
  //final viewModel = WritePrivatePostPageViewModel();
  final TextEditingController _contentController = TextEditingController();
  final FocusNode _contentFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return _buildWritePrivatePostPage(context, viewModel);
  }

  Widget _buildWritePrivatePostPage(context, viewModel) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: appBar(context, !viewModel.isFocused)),
      body: Column(
        children: [
          SubPageHeader(title: 'Create Request'),
          viewModel.isFocused
              ? Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        showProtegeData(viewModel.focusedProtege),
                        writePost(!viewModel.isFocused, screenSize),
                      ],
                    ),
                  ),
                )
              : Expanded(
                  child: SingleChildScrollView(
                    child: writePost(!viewModel.isFocused, screenSize),
                  ),
                ),
        ],
      ),
    );
  }

  AppBar appBar(context, isMyPost) {
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
        DialogButton(
            isHeader: true,
            onPressed: () async {
              if (isMyPost) {
                // 내 private post 등록하기
                print("my request");
                final res =
                    await viewModel.postMyDonation(_contentController.text);
                if (res == 201) {
                  print("suc");
                  Navigator.of(context).pop();
                }
              } else {
                print("protege's request");
                final res = await viewModel.postProtegeDonation(
                    viewModel.focusedProtege.requestorId,
                    _contentController.text);
                if (res == 201) {
                  print("suc");
                  Navigator.of(context).pop();
                }
              }
            },
            text: "Create"),
      ],
    );
  }

  Widget showProtegeData(protege) {
    return Container(
        height: 70,
        margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
        padding: EdgeInsets.all(15),
        alignment: Alignment.topLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: Colors.black, width: 1)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Writing a Blood Donation Request for ' + protege.name),
          Text('Blood type : ' + protege.bloodType),
        ]));
  }

  Widget writePost(bool isMyPost, Size screenSize) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      margin: const EdgeInsets.all(20.0),
      height: isMyPost ? screenSize.height - 190 : screenSize.height - 275,
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
            decoration: InputDecoration.collapsed(hintText: "Write Request"),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            controller: _contentController,
          ),
        ),
      ),
    );
  }
}
