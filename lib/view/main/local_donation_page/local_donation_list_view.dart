import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/local_donation_page_viewmodel.dart';

class LocalDonationListView extends StatelessWidget {
  const LocalDonationListView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<LocalDonationPageViewModel>(context);
    return _buildLocalDonationListView(viewModel);
  }

  Widget _buildLocalDonationListView(viewModel) {
    final publicPost = viewModel.publicPost;
    final publicPostCount = publicPost.length;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              'Near by your position',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )),
        SizedBox(height: 2),
        Flexible(
          child: ListView.builder(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            itemBuilder: (context, index) {
              final item = publicPost[index];
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  child: LocalListViewTile(item: item, viewModel: viewModel));
            },
            itemCount: publicPostCount,
          ),
        ),
      ],
    );
  }
}
