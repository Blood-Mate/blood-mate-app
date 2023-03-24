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
      children: [
        Text('Protege'),
        PeopleList(
          items: proteges,
          blankBoxText: 'No Proteges',
          viewModel: viewModel,
          sort: viewModel.selectedSortOrder,
        ),
        Text('Guardian'),
        PeopleList(
          items: guardians,
          blankBoxText: 'No Guardians',
          viewModel: viewModel,
          sort: viewModel.selectedSortOrder,
          tile: 'AppUser',
        ),
        Text('AppUser'),
        PeopleList(
          items: contacts,
          blankBoxText: 'No App Users',
          viewModel: viewModel,
          sort: viewModel.selectedSortOrder,
          isUserFilter: true,
          tile: 'AppUser',
          filterSet: guardians,
        ),
        Text('Contact'),
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
