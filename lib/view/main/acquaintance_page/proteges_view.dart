import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/viewmodel/main/proteges_viewmodel.dart';

class ProtegesView extends StatelessWidget {
  const ProtegesView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<ProtegesViewModel>(context);
    return _buildProtegesView(viewModel);
  }

  Widget _buildProtegesView(viewModel) {
    final items = viewModel.items; // viewModel에 저장된 items
    final itemCount = items.length;

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
}
