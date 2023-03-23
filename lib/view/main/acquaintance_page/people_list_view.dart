import 'dart:developer';

import 'package:bloodmate_app/viewmodel/main/main_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/data/model/models.dart';
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

    return ListView(
      children: [
        Text('Protege'),
        showProteges(proteges),
        Text('Guardian'),
        showGuardians(guardians, viewModel),
        Text('AppUser'),
        showAppUsers(contacts, viewModel),
        Text('Contact'),
        showContacts(contacts, viewModel),
        SizedBox(height: 20),
      ],
    );
  }

  Widget showProteges(List<People> items) {
    final itemCount = items.length;

    // sort by name ASC
    final sortedItems = items;
    sortedItems.sort((a, b) => a.name.compareTo(b.name));

    if (itemCount == 0) {
      return Card(child: ListTile(title: Text('No Proteges')));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = sortedItems[index];
        return ProtegeListTile(item: item);
      },
    );
  }

  Widget showGuardians(List<People> items, viewmodel) {
    final itemCount = items.length;

    // sort by name ASC
    final sortedItems = items;
    sortedItems.sort((a, b) => a.name.compareTo(b.name));

    if (itemCount == 0) {
      return Card(child: ListTile(title: Text('No Guardians')));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = sortedItems[index];
        return AppUserListTile(item: item, viewmodel: viewmodel);
      },
    );
  }

  Widget showAppUsers(List<People> items, viewmodel) {
    // app user인지 filtering
    var filteredItems = items.where((item) => item.isUser!).toList();
    // guardian인지 filtering
    filteredItems = items.where((item) => item.isUser!).toList();

    final itemCount = filteredItems.length;

    // sort by name ASC
    filteredItems.sort((a, b) => a.name.compareTo(b.name));

    if (itemCount == 0) {
      return Card(child: ListTile(title: Text('No App Users')));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return AppUserListTile(item: item, viewmodel: viewmodel);
      },
    );
  }

  Widget showContacts(List<People> items, viewmodel) {
    final filteredItems = items.where((item) => !item.isUser!).toList();
    final itemCount = filteredItems.length;

    // sort by name ASC
    filteredItems.sort((a, b) => a.name.compareTo(b.name));

    if (itemCount == 0) {
      return Card(child: ListTile(title: Text('No Contacts')));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return ContactListTile(item: item, viewmodel: viewmodel);
      },
    );
  }
}
