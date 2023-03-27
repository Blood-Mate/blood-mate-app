import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/view/common/route_animation.dart';
import 'package:bloodmate_app/viewmodel/main/acquaintance_page_viewmodel.dart';
import 'package:bloodmate_app/view/main/acquaintance_page/write_private_post_page.dart';

class ListButtonView extends StatelessWidget {
  ListButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<AcquaintancePageViewModel>(context);
    return _buildListButtonView(viewModel, context);
  }

  Widget _buildListButtonView(viewModel, context) {
    List<String> dropdownList = viewModel.sortOptions;
    ThemeData theme = Theme.of(context);

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
          child: Icon(
            Icons.person_add_alt_outlined,
            size: 25,
            color: theme.disabledColor,
          ),
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Synchronize Contacts'),
                    content:
                        Text('Are you sure you want to sync your contacts?'),
                    actions: [
                      DialogButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          text: 'No'),
                      DialogButton(
                          onPressed: () async {
                            var res = await viewModel.getContacts();
                            Navigator.of(context).pop();
                          },
                          text: 'Yes'),
                    ],
                  );
                });
          },
        ),
        SizedBox(width: 0),
        IconButton(
          icon: Icon(
            Icons.mode_edit_outline,
            color: theme.disabledColor,
          ), //post add, edit note,
          onPressed: (() {
            viewModel.releaseFocus();
            PageRouteWithAnimation pageRouteWithAnimation =
                PageRouteWithAnimation(
                    WritePrivatePostPage(viewModel: viewModel));
            Navigator.push(context, pageRouteWithAnimation.slideRitghtToLeft());
          }),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
