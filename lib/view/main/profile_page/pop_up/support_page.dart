import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';

class SupportPage extends StatelessWidget {
  SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildSupportPage(context);
  }

  Widget _buildSupportPage(context) {
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
          SubPageHeader(title: 'Support'),
          Expanded(
            child: Center(child: Text('Support Page')),
          ),
        ],
      ),
    );
  }
}
