import 'package:flutter/material.dart';

import '../../common/component.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Column(
        children: [SubPageHeader(title: 'Alert'), AlertPageBody()],
      ),
    );
  }

  Widget AlertPageBody() {
    return Container();
  }
}
