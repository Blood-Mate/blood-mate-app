import 'package:bloodmate_app/data/model/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/ui/viewmodel/main/home_page_profile_viewmodel.dart';

class HomePageProfileView extends StatelessWidget {
  const HomePageProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<HomePageProfileViewModel>(context);
    return _buildHomePageProfileView(viewModel);
  }

  Widget _buildHomePageProfileView(viewModel) {
    final data = viewModel.data; // viewModel에 저장된 data

    return Column(
      children: [
        SizedBox(height: 50),
        Row(
          children: [
            SizedBox(width: 30),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(color: Colors.red),
            ),
            SizedBox(width: 30),
            Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
      ],
    );
  }
}
