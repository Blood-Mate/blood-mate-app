import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/component/component.dart';
import 'package:bloodmate_app/ui/view/main/main_views.dart';
import 'package:bloodmate_app/ui/viewmodel/main/main_viewmodels.dart';

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
          showMyInfoView(),
          settingButtonList(),
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
    return Row(
      children: [],
    );
  }
}
