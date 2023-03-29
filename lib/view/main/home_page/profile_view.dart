import 'package:bloodmate_app/data/model/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:bloodmate_app/viewmodel/main/home_page_viewmodel.dart';

class HomePageProfileView extends StatelessWidget {
  const HomePageProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<HomePageViewModel>(context);
    return _buildHomePageProfileView(viewModel);
  }

  Widget _buildHomePageProfileView(viewModel) {
    final profile = viewModel.profile;

    return Column(
      children: [
        SizedBox(height: 50),
        Row(
          children: [
            SizedBox(width: 24),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFF969696))),
              child: ((profile.profileImageUrl == null) ||
                      (profile.profileImageUrl == ""))
                  ? Image(
                      image: AssetImage('assets/image/bloodmate_logo.png'),
                      fit: BoxFit.cover)
                  : Image(
                      image:
                          CachedNetworkImageProvider(profile.profileImageURL)),
            ),
            SizedBox(width: 20),
            Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 25),
                  Text(
                    'Hello,',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    profile.name + ' !',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
