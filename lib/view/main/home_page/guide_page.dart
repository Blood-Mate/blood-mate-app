import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';

class GuidePage extends StatelessWidget {
  GuidePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildGuidePage(context);
  }

  Widget _buildGuidePage(context) {
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
          SubPageHeader(title: 'Donation Guide'),
          Expanded(
            child: Center(child: Text('Guide Page')),
          ),
        ],
      ),
    );
  }
}
