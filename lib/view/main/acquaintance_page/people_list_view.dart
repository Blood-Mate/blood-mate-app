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
    final items = viewModel.items; // viewModel에 저장된 items
    final itemCount = items.length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        showNeedProtectList(items),
        ThickDevider(),
        showMyProtectorList(items),
        ThickDevider(),
        showAppFriendsList(items),
        ThickDevider(),
        showContactFriendsList(items),
        SizedBox(height: 20),
      ],
    );
  }

  Widget showNeedProtectList(items) {
    final itemCount = 0;

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

  Widget showMyProtectorList(items) {
    return Container();
  }

  Widget showAppFriendsList(items) {
    return Container();
  }

  Widget showContactFriendsList(items) {
    return Container();
  }
}
