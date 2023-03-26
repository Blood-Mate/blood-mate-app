import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/profile_page_viewmodel.dart';
import 'package:bloodmate_app/view/main/profile_page/pop_up/my_award_page.dart';
import 'package:bloodmate_app/view/main/profile_page/pop_up/my_donation_page.dart';
import 'package:bloodmate_app/view/main/profile_page/pop_up/my_message_page.dart';
import 'package:bloodmate_app/view/main/profile_page/pop_up/my_post_page.dart';

class MyInfoView extends StatelessWidget {
  const MyInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ProfilePageViewModel>(context);
    return _buildMyInfoView(viewModel);
  }

  Widget _buildMyInfoView(viewModel) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileButton(text: 'My Post', page: MyPostPage(viewModel: viewModel)),
        ProfileButton(text: 'My Message', page: MyMessagePage()),
        ProfileButton(text: 'My Award', page: MyAwardPage()),
        ProfileButton(text: 'My Donation', page: MyDonationPage()),
      ],
    );
  }
}
