import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';

class QnAPage extends StatelessWidget {
  QnAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildQnAPage(context);
  }

  Widget _buildQnAPage(context) {
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
          SubPageHeader(title: 'QnA'),
          Expanded(
            child: Center(child: Text('QnA Page')),
          ),
        ],
      ),
    );
  }
}
