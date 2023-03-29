import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/component/component.dart';
import 'package:bloodmate_app/view/main/acquaintance_page/list_button_view.dart';
import 'package:bloodmate_app/view/main/acquaintance_page/people_list_view.dart';
import 'package:bloodmate_app/viewmodel/main/acquaintance_page_viewmodel.dart';

class AcquaintancePage extends StatelessWidget {
  AcquaintancePage({super.key});
  final viewModel = AcquaintancePageViewModel();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Column(
        children: [
          SubPageHeader(title: 'Contact'),
          acquaintancePageButton(),
          Expanded(child: showMyPeoples()),
        ],
      ),
    );
  }

  Widget acquaintancePageButton() {
    return ChangeNotifierProvider.value(
        value: viewModel, child: ListButtonView());
  }

  Widget showMyPeoples() {
    return ChangeNotifierProvider.value(
        value: viewModel, child: PeopleListView());
  }
}
