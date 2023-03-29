import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'people_list.dart';
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
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      children: [
        Text(
          'People who listed me as their guardian',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        PeopleList(
          items: proteges,
          blankBoxText: 'No people who listed me as their guardian',
          viewModel: viewModel,
          sort: viewModel.selectedSortOrder,
        ),
        SizedBox(height: 15),
        Text(
          'My Guardians',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        PeopleList(
          items: guardians,
          blankBoxText: 'No Guardians',
          viewModel: viewModel,
          sort: viewModel.selectedSortOrder,
          tile: 'AppUser',
        ),
        SizedBox(height: 15),
        Text(
          'App User',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        PeopleList(
          items: contacts,
          blankBoxText: 'No App Users',
          viewModel: viewModel,
          sort: viewModel.selectedSortOrder,
          isUserFilter: true,
          tile: 'AppUser',
          filterSet: guardians,
        ),
        SizedBox(height: 15),
        Text(
          'Contact',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        PeopleList(
          items: contacts,
          blankBoxText: 'No Contacts',
          viewModel: viewModel,
          sort: viewModel.selectedSortOrder,
          isNotUserFilter: true,
          tile: 'Contact',
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
