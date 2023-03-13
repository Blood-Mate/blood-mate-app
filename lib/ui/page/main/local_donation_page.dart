import 'package:flutter/material.dart';

import '../../common/component.dart';

class LocalDonationPage extends StatelessWidget {
  const LocalDonationPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Column(
        children: [
          SubPageHeader(title: 'Blood Donation List'),
          LocationBlock(),
          SizedBox(height: 15),
          LocalDonationPageBody(screenSize),
        ],
      ),
    );
  }

  Widget LocationBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 20),
        Icon(Icons.room),
        SizedBox(width: 10),
        Text('Seongbukgu, Seoul, Korea'),
        SizedBox(width: 30),
        Text('5'),
        Text('km'),
        Text('Radius'),
        SizedBox(width: 20),
      ],
    );
  }

  Widget LocalDonationPageBody(Size screenSize) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20),
            SortButton(text: '혈액형'),
            SizedBox(width: 10),
            SortButton(text: '헌혈종류'),
            SizedBox(width: 100),
            Icon(Icons.search),
            Icon(Icons.post_add),
            SizedBox(width: 20),
          ],
        ),
        Container(
            width: screenSize.width - 30,
            height: screenSize.height - 250,
            child: SingleChildScrollView(
                child: Column(
              children: [
                FriendDonationListBox(screenSize: screenSize),
                FriendDonationListBox(screenSize: screenSize),
                FriendDonationListBox(screenSize: screenSize),
              ],
            ))),
        SizedBox(height: 10),
      ],
    );
  }
}
