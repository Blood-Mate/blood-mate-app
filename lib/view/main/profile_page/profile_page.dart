import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/component/component.dart';
import 'package:bloodmate_app/view/main/profile_page/setting_page.dart';
import 'package:bloodmate_app/view/main/profile_page/notice_page.dart';
import 'package:bloodmate_app/view/main/profile_page/support_page.dart';
import 'package:bloodmate_app/view/main/profile_page/my_info_view.dart';
import 'package:bloodmate_app/view/main/profile_page/profile_view.dart';
import 'package:bloodmate_app/viewmodel/main/main_viewmodels.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Column(
        children: [
          SubPageHeader(title: 'My Page'),
          showProfile(),
          Expanded(child: showMyInfoView()),
          settingButtonList(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget showProfile() {
    return ChangeNotifierProvider<ProfileViewModel>(
        create: (_) => ProfileViewModel(), child: ProfileView());
  }

  Widget showMyInfoView() {
    return ChangeNotifierProvider<MyInfoViewModel>(
        create: (_) => MyInfoViewModel(), child: MyInfoView());
  }

  Widget settingButtonList() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ProfileIconButton(
            icon: Icon(Icons.settings), text: 'Setting', page: SettingPage()),
        ProfileIconButton(
            icon: Icon(Icons.support_agent),
            text: 'Support',
            page: SupportPage()),
        ProfileIconButton(
            icon: Icon(Icons.settings), text: 'Notice', page: NoticePage())
      ],
    );
  }
}
