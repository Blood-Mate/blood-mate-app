import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/acquaintance_page_viewmodel.dart';

class PeopleListView extends StatelessWidget {
  const PeopleListView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<AcquaintancePageViewModel>(context);
    return _buildPeopleListView(viewModel);
  }

  Widget _buildPeopleListView(viewModel) {
    final proteges = viewModel.protege;
    final guardians = viewModel.guardian;
    final contacts = viewModel.contact;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        showProteges(proteges),
        ThickDevider(),
        showGuardians(guardians),
        ThickDevider(),
        showAppUsers(contacts),
        ThickDevider(),
        showContacts(contacts),
        SizedBox(height: 20),
      ],
    );
  }

  Widget showProteges(items) {
    final itemCount = items.length;

    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(title: Text(item.content));
        },
        itemCount: itemCount,
      ),
    );
  }

  Widget showGuardians(items) {
    final itemCount = items.length;

    // return Flexible(
    //   child: ListView.builder(
    //     itemBuilder: (context, index) {
    //       final item = items[index];
    //       return ListTile(title: Text(item.content));
    //     },
    //     itemCount: itemCount,
    //   ),
    // );
    return Container();
  }

  Widget showAppUsers(items) {
    final itemCount = items.length;

    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(title: Text(item.content));
        },
        itemCount: itemCount,
      ),
    );
  }

  Widget showContacts(items) {
    final itemCount = items.length;

    return Flexible(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(title: Text(item.content));
        },
        itemCount: itemCount,
      ),
    );
  }
}
