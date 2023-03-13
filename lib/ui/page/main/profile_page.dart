import 'package:flutter/material.dart';

import '../../common/component.dart';

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
          SubPageHeader(title: 'Profile'),
          ProfilePageBody(),
        ],
      ),
    );
  }

  Widget ProfilePageBody() {
    return Container();
  }
}
