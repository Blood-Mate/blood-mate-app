import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/viewmodel/main/acquaintance_page_viewmodel.dart';

class ListButtonView extends StatelessWidget {
  ListButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<AcquaintancePageViewModel>(context);
    return _buildListButtonView(viewModel, context);
  }

  Widget _buildListButtonView(viewModel, context) {
    List<String> dropdownList = viewModel.sortOptions;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        DropdownButton<String>(
          value: viewModel.selectedSortOrder,
          items: dropdownList
              .map((e) => DropdownMenuItem<String>(
                    child: Text(e),
                    value: e,
                  ))
              .toList(),
          onChanged: (newValue) {
            viewModel.setSort(newValue!);
          },
        ),
        SizedBox(width: 10),
        GestureDetector(
          child: Icon(Icons.add_box_outlined, size: 30),
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Synchronize Contacts'),
                    content:
                        Text('Are you sure you want to sync your contacts?'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('No')),
                      TextButton(
                          onPressed: () async {
                            viewModel.getContacts();
                            Navigator.of(context).pop();
                          },
                          child: Text('Yes'))
                    ],
                  );
                });
            viewModel.getContacts();
          },
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
