import 'package:bloodmate_app/view/main/local_donation_page/local_donation_list_view.dart';
import 'package:bloodmate_app/viewmodel/main/local_donation_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/component/component.dart';

class LocalDonationPage extends StatelessWidget {
  LocalDonationPage({super.key});
  final viewModel = LocalDonationPageViewModel();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Column(
        children: [
          SubPageHeader(title: 'Blood Donation List'),
          SizedBox(height: 10),
          LocationBlock(),
          SizedBox(height: 15),
          listButton(screenSize),
          Expanded(child: localDonationList()),
        ],
      ),
    );
  }

  Widget LocationBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 20),
        Icon(Icons.room),
        SizedBox(width: 10),
        Text('Seongbukgu, Seoul, Korea'),
        SizedBox(width: 30),
        Text('5'),
        Text('km'),
        Text('Radius'),
        SizedBox(width: 20),
      ],
    );
  }

  Widget listButton(Size screenSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(width: 20),
        Text('Blood Type'),
        SizedBox(width: 10),
        Text('Blood Components'),
        SizedBox(width: 100),
        Icon(Icons.search),
        Icon(Icons.post_add),
        SizedBox(width: 20),
      ],
    );
  }

  Widget localDonationList() {
    return ChangeNotifierProvider.value(
        value: viewModel, child: LocalDonationListView());
  }
}
