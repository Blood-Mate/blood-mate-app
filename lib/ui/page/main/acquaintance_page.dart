import 'package:flutter/material.dart';

import '../../common/component/component.dart';

class AcquaintancePage extends StatelessWidget {
  const AcquaintancePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Column(
        children: [
          SubPageHeader(title: 'My Friends'),
          AcquaintancePageBody(),
        ],
      ),
    );
  }

  Widget AcquaintancePageBody() {
    return Container();
  }
}
