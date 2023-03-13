import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/component.dart';
import 'package:bloodmate_app/ui/view/main/main_views.dart';
import 'package:bloodmate_app/ui/viewmodel/main/main_viewmodels.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: theme.canvasColor,
        body: Column(
          children: [
            homePageProfile(),
            ThinDevider(),
            Expanded(child: friendsNewsList()),
            moreButton(),
            ThinDevider(),
            HomePageTail(screenSize),
          ],
        ));
  }

  Widget HomePageHeader() {
    return Column(
      children: [
        SizedBox(height: 50),
        Row(
          children: [
            SizedBox(width: 30),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.red),
            ),
            SizedBox(width: 30),
            Container(
              height: 100,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '안녕하세요!',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '성민 님!',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget homePageProfile() {
    return ChangeNotifierProvider<HomePageProfileViewModel>(
        create: (_) => HomePageProfileViewModel(),
        child: HomePageProfileView());
    ;
  }

  Widget friendsNewsList() {
    return ChangeNotifierProvider<FriendsNewsListViewModel>(
        create: (_) => FriendsNewsListViewModel(),
        child: FriendsNewsListView());
  }

  Widget moreButton() {
    return Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(10),
        child: Text('더보기', textAlign: TextAlign.end));
  }

  Widget HomePageTail(Size screenSize) {
    return Container(
      height: 140,
      width: screenSize.width,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 80,
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            width: 150,
            height: 80,
            decoration: BoxDecoration(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
