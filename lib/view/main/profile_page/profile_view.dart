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
    final profile = viewModel.profile;
    ThemeData theme = Theme.of(context);

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
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20),
            Container(
              width: MediaQuery.of(context).size.width - 150,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone Number : ' + profile.phoneNumber),
                    SizedBox(height: 5),
                    Text('Blood type : ' + profile.bloodType),
                  ]),
            ),
            SizedBox(width: 20),
            signOutButton(context, viewModel, theme),
            SizedBox(width: 20),
          ],
        )
      ],
    );
  }

  Widget signOutButton(context, viewModel, theme) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.primaryColor,
        foregroundColor: Colors.white,
        fixedSize: Size(90, 40),
      ),
      child: const Text('Sign Out'),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Sign Out'),
                content: Text('Sign Out Really?'),
                actions: <Widget>[
                  InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    splashColor: theme.primaryColorLight,
                    onTap: () {
                      viewModel.signOut();
                      GoRouter.of(context).go('/signin');
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    splashColor: theme.primaryColorLight,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                      child: Text(
                        'No',
                        style: TextStyle(
                          color: theme.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            });
      },
    );
  }
}
