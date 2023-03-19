//import 'dart:ffi';

import 'package:flutter/material.dart';
export 'list_view_tile.dart';
export 'circular_image.dart';
export 'page_button.dart';
export 'profile_button.dart';
export 'dialog.dart';
export 'custom_text_file.dart';

class ThinDevider extends StatelessWidget {
  const ThinDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0x40808080),
      height: 12,
      thickness: 2.0,
    );
  }
}

class ThickDevider extends StatelessWidget {
  const ThickDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0x40808080),
      height: 5,
      thickness: 5.0,
    );
  }
}

class SubPageHeader extends StatelessWidget {
  final String title;
  const SubPageHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [Text(title, style: TextStyle(fontSize: 20))],
        ),
        SizedBox(height: 5),
        ThinDevider(),
      ],
    );
  }
}

class SortButton extends StatefulWidget {
  final String text;
  const SortButton({super.key, required this.text});

  @override
  State<SortButton> createState() => _SortButtonState();
}

class _SortButtonState extends State<SortButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 20,
      decoration: BoxDecoration(color: Colors.red),
      alignment: Alignment.center,
      child: Text(widget.text),
    );
  }
}

class FriendDonationListBox extends StatelessWidget {
  final Size screenSize;
  const FriendDonationListBox({super.key, required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 70,
      width: screenSize.width,
      decoration: BoxDecoration(color: Colors.red),
      child: Center(child: (Text('내 친구 소식 미리보기 박스'))),
    );
  }
}
