import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/component/component.dart';
import 'package:bloodmate_app/ui/common/route_animation.dart';
import 'package:bloodmate_app/ui/view/main/main_views.dart';
import 'package:bloodmate_app/ui/viewmodel/main/main_viewmodels.dart';
import 'package:bloodmate_app/ui/page/main/home_page/guide_page.dart';
import 'package:bloodmate_app/ui/page/main/home_page/qna_page.dart';

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
            homePageTail(screenSize),
          ],
        ));
  }

  Widget homePageProfile() {
    return ChangeNotifierProvider<ProfileViewModel>(
        create: (_) => ProfileViewModel(), child: HomePageProfileView());
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
        decoration: BoxDecoration(border: Border.all(width: 1)),
        child: Text('더보기', textAlign: TextAlign.end));
  }

  Widget homePageTail(Size screenSize) {
    return Container(
      height: 80,
      width: screenSize.width,
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PageButton(
            text: 'QnA',
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
