import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/component/component.dart';
import 'package:bloodmate_app/view/main/acquaintance_page/people_list_view.dart';
import 'package:bloodmate_app/viewmodel/main/main_viewmodels.dart';

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
          acquaintancePageButton(),
          Expanded(child: showMyPeoples()),
        ],
      ),
    );
  }

  Widget acquaintancePageButton() {
    return Container(
        height: 50, alignment: Alignment.center, child: Text('Buttons'));
  }

  Widget showMyPeoples() {
    return ChangeNotifierProvider<AcquaintancePageViewModel>(
        create: (_) => AcquaintancePageViewModel(), child: PeopleListView());
  }
}
