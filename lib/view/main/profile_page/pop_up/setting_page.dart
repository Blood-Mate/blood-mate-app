import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildSettingPage(context);
  }

  Widget _buildSettingPage(context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight), child: BackAppBar()),
      body: Column(
        children: [
          SubPageHeader(title: 'Setting'),
          Expanded(
            child: Center(child: Text('Setting Page')),
          ),
        ],
      ),
    );
  }
}
