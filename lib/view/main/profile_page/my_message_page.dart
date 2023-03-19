import 'package:flutter/material.dart';

class MyMessagePage extends StatelessWidget {
  const MyMessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(color: Colors.grey),
      child: const Center(
        child: Text('MyMessage Page'),
      ),
    );
  }
}
