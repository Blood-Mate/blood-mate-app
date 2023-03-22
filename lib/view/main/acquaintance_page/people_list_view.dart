import 'dart:developer';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/viewmodel/main/people_list_viewmodel.dart';

class PeopleListView extends StatelessWidget {
  const PeopleListView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<PeopleListViewModel>(context);
    return _buildPeopleListView(viewModel);
  }

  Widget _buildPeopleListView(viewModel) {
    final guardian = viewModel.guardian;
    final guardianCount = guardian.length;
    final contacts = viewModel.contacts;
    final contactsCount = contacts.length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        //showNeedProtectList(items),
        ThickDevider(),
        showGuardians(guardian, guardianCount),
        ThickDevider(),
        showAppUsers(contacts, contactsCount),
        ThickDevider(),
        showContacts(contacts, contactsCount),
        SizedBox(height: 20),
      ],
    );
  }

  Widget showGuardians(items, itemCount) {
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

  Widget showAppUsers(items, itemCount) {
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

  Widget showContacts(items, itemCount) {
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
