import 'package:bloodmate_app/viewmodel/main/main_viewmodels.dart';
import 'package:flutter/material.dart';

import 'package:bloodmate_app/data/model/models.dart';
import 'component.dart';

class PeopleList extends StatelessWidget {
  PeopleList(
      {super.key,
      required this.items,
      required this.blankBoxText,
      required this.viewModel,
      this.isUserFilter = false,
      this.isNotUserFilter = false,
      this.filterSet = const [],
      this.sort = 'ASC',
      this.tile = 'Protege'});

  final List<People> items;
  final String blankBoxText;
  final AcquaintancePageViewModel viewModel;
  final bool isUserFilter;
  final bool isNotUserFilter;
  final List<People> filterSet;
  final String sort;
  final String tile;

  @override
  Widget build(BuildContext context) {
    return _buildPeopleList();
  }

  Widget _buildPeopleList() {
    // User filter
    var filteredItems = isUserFilter
        ? items.where((item) => item.isUser!).toList()
        : isNotUserFilter
            ? items.where((item) => !item.isUser!).toList()
            : items;

    // filterSet은 무조건 phoneNumber만 봄
    if (filterSet.length != 0) {
      var _filterSet = filterSet.map((e) => e.phoneNumber).toSet();

      filteredItems = filteredItems
          .where((item) => !_filterSet.contains(item.phoneNumber))
          .toList();
    }

    // itemCount for Listview build
    final itemCount = filteredItems.length;

    // sorting
    switch (sort) {
      case 'ASC':
        filteredItems.sort((a, b) => a.name.compareTo(b.name));
        break;
      case 'DSC':
        filteredItems.sort((a, b) => b.name.compareTo(a.name));
        break;
    }

    // blank item list
    if (itemCount == 0) {
      return Card(child: ListTile(title: Text(blankBoxText)));
    }

    return ListView.builder(
      shrinkWrap: true,
      //scrollDirection: Axis.vertical,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        switch (tile) {
          case 'Protege':
            return ProtegeListTile(item: item);
          case 'AppUser':
            return AppUserListTile(item: item, viewModel: viewModel);
          case 'Contact':
            return StfContactListTile(item: item, viewModel: viewModel);
          default:
            return ProtegeListTile(item: item);
        }
      },
    );
  }
}
