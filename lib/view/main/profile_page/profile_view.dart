import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ProfileViewModel>(context);
    return _buildProfileView(viewModel);
  }

  Widget _buildProfileView(viewModel) {
    final data = viewModel.data; // viewModel에 저장된 data

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            SizedBox(width: 20),
            CircularImage(imageUrl: data.profile_image_URL, size: 70),
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
        Text('Blood type : ' + data.blood_type),
        Text('Phone Number : ' + data.phone_number),
      ],
    );
  }
}
