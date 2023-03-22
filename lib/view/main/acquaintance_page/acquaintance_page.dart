import 'package:bloodmate_app/view/main/acquaintance_page/proteges_view.dart';
import 'package:bloodmate_app/viewmodel/main/proteges_viewmodel.dart';
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
          showProteges(),
          //showMyPeoples(),
        ],
      ),
    );
  }

  Widget acquaintancePageButton() {
    return Container(
        height: 50, alignment: Alignment.center, child: Text('Buttons'));
  }

  Widget showProteges() {
    return ChangeNotifierProvider<ProtegesViewModel>(
        create: (_) => ProtegesViewModel(), child: ProtegesView());
  }

  Widget showMyPeoples() {
    return ChangeNotifierProvider<PeopleListViewModel>(
        create: (_) => PeopleListViewModel(), child: PeopleListView());
  }
}
