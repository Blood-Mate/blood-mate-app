import 'dart:developer';

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
        SizedBox(height: 10),
        Text('Protege'),
        showProteges(proteges),
        Text('Guardian'),
        showGuardians(guardians),
        Text('AppUser'),
        showAppUsers(contacts),
        Text('Contact'),
        showContacts(contacts),
        SizedBox(height: 20),
      ],
    );
  }

  Widget showProteges(items) {
    final itemCount = items.length;

    if (itemCount == 0) {
      return Card(child: ListTile(title: Text('No Proteges')));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = items[index];
        return AcquaintanceListTile(item: item);
      },
    );
  }

  Widget showGuardians(items) {
    final itemCount = items.length;

    if (itemCount == 0) {
      return Card(child: ListTile(title: Text('No Guardians')));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = items[index];
        return AcquaintanceListTile(item: item);
      },
    );
  }

  Widget showAppUsers(List<People> items) {
    final filteredItems = items.where((item) => item.isUser!).toList();
    final itemCount = filteredItems.length;

    if (itemCount == 0) {
      return Card(child: ListTile(title: Text('No App Users')));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return AcquaintanceListTile(item: item);
      },
    );
  }

  Widget showContacts(List<People> items) {
    final filteredItems = items.where((item) => !item.isUser!).toList();
    final itemCount = filteredItems.length;

    if (itemCount == 0) {
      return Card(child: ListTile(title: Text('No Contacts')));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return AcquaintanceListTile(item: item);
      },
    );
  }
}
