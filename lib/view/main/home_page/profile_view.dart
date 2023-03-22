import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:bloodmate_app/viewmodel/main/profile_viewmodel.dart';

class HomePageProfileView extends StatelessWidget {
  const HomePageProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ProfileViewModel>(context);
    return _buildHomePageProfileView(viewModel);
  }

  Widget _buildHomePageProfileView(viewModel) {
    final data = viewModel.data; // viewModel에 저장된 data

    return Column(
      children: [
        SizedBox(height: 50),
        Row(
          children: [
            SizedBox(width: 20),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(border: Border.all(width: 1)),
              child: ((data.profileImageURL == null) ||
                      (data.profileImageURL == ""))
                  ? Image(
                      image: AssetImage('assets/image/bloodmate_logo.png'),
                      fit: BoxFit.cover)
                  : Image(
                      image: CachedNetworkImageProvider(data.profileImageURL)),
            ),
            SizedBox(width: 20),
            Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    '안녕하세요!',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    data.name + ' 님!',
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
