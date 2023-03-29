import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../common/component/component.dart';
import 'package:bloodmate_app/view/main/home_page/guide_page.dart';
import 'package:bloodmate_app/view/main/home_page/qna_page.dart';
import 'package:bloodmate_app/view/main/home_page/friends_news_list_view.dart';
import 'package:bloodmate_app/view/main/home_page/profile_view.dart';
import 'package:bloodmate_app/viewmodel/main/main_viewmodels.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final viewModel = HomePageViewModel();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: theme.canvasColor,
        body: Column(
          children: [
            homePageProfile(),
            Expanded(child: friendsNewsList()),
            //moreButton(),
            //ThinDevider(),
            SizedBox(height: 10),
            homePageTail(screenSize),
            SizedBox(height: 15),
          ],
        ));
  }

  Widget homePageProfile() {
    return ChangeNotifierProvider.value(
        value: viewModel, child: HomePageProfileView());
  }

  Widget friendsNewsList() {
    return ChangeNotifierProvider.value(
        value: viewModel, child: FriendsNewsListView());
  }

  Widget moreButton() {
    return Container(
        alignment: Alignment.bottomRight,
        padding: EdgeInsets.all(10),
        //decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Text('more', textAlign: TextAlign.end));
  }

  Widget homePageTail(Size screenSize) {
    return Container(
      height: 80,
      width: screenSize.width,
      //decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PageButton(
            text: 'FAQ',
            page: QnAPage(),
          ),
          PageButton(
            text: 'Donation Guide',
            page: GuidePage(),
          ),
        ],
      ),
    );
  }
}
