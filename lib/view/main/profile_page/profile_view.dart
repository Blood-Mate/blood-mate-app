import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/profile_page_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ProfilePageViewModel>(context);
    return _buildProfileView(viewModel, context);
  }

  Widget _buildProfileView(viewModel, context) {
    final profile = viewModel.profile; // viewModel에 저장된 data

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 20),
            ((profile.profileImageUrl == null) ||
                    (profile.profileImageUrl == ""))
                ? CircularImageMock(size: 70)
                : CircularImage(imageUrl: profile.profileImageUrl, size: 70),
            SizedBox(width: 20),
            Container(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profile.name,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Phone Number : ' + profile.phoneNumber),
              Text('Blood type : ' + profile.bloodType),
            ]),
            signOutButton(context, viewModel),
          ],
        )
      ],
    );
  }

  Widget signOutButton(context, viewModel) {
    return ElevatedButton(
      child: const Text(
        'Sign Out',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Sign Out'),
                content: Text('Sign Out Really?'),
                actions: <Widget>[
                  ElevatedButton(
                    child: Text('Yes'),
                    onPressed: () {
                      viewModel.signOut();
                      GoRouter.of(context).go('/signin');
                    },
                  ),
                  ElevatedButton(
                    child: Text('No'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              );
            });
      },
    );
  }
}
