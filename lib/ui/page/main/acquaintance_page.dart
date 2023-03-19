import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/component/component.dart';
import 'package:bloodmate_app/ui/view/main/main_views.dart';
import 'package:bloodmate_app/ui/viewmodel/main/main_viewmodels.dart';

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
          showMyPeopleList(),
        ],
      ),
    );
  }

  Widget acquaintancePageButton() {
    return Container(
        height: 50, alignment: Alignment.center, child: Text('Buttons'));
  }

  Widget showMyPeopleList() {
    return ChangeNotifierProvider<PeopleListViewModel>(
        create: (_) => PeopleListViewModel(), child: PeopleListView());
  }
}
