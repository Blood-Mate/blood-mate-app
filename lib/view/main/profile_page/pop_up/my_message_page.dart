import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';

class MyMessagePage extends StatelessWidget {
  MyMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildMyMessagePage(context);
  }

  Widget _buildMyMessagePage(context) {
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
          SubPageHeader(title: 'My Message'),
          Expanded(
            child: Center(child: Text('My Message Page')),
          ),
        ],
      ),
    );
  }
}
