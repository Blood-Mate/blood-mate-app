import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ProfileViewModel>(context);
    return _buildProfileView(viewModel, context);
  }

  Widget _buildProfileView(viewModel, context) {
    final data = viewModel.data; // viewModel에 저장된 data

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 20),
            ((data.profileImageURL == Null) || (data.profileImageURL == ""))
                ? CircularImageMock()
                : CircularImage(imageUrl: data.profileImageURL, size: 70),
            SizedBox(width: 20),
            Container(
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
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
              Text('Blood type : ' + data.bloodType),
              Text('Phone Number : ' + data.phoneNumber),
            ]),
            signOutButton(context),
          ],
        )
      ],
    );
  }

  Widget signOutButton(context) {
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
                      ProfileViewModel().signOut();
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
