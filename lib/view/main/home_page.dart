import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: theme.canvasColor,
        body: Column(
          children: [
            HomePageHeader(),
            Expanded(child: HomePageBody(screenSize)),
            Divider(
              color: Color(0x40808080),
              thickness: 5.0,
            ),
            HomePageTail(screenSize),
          ],
        ));
  }

  Widget HomePageHeader() {
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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '안녕하세요!',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '성민 님!',
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

  Widget HomePageBody(Size screenSize) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text('내 친구 소식')),
        SizedBox(height: 20),
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 70,
                width: screenSize.width,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(child: (Text('내 친구 소식 미리보기 박스'))),
              )
            ],
          ),
        ),
        Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(10),
            child: Text('더보기', textAlign: TextAlign.end))
      ],
    );
  }

  Widget HomePageTail(Size screenSize) {
    return Container(
      height: 140,
      width: screenSize.width,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 80,
            decoration: BoxDecoration(color: Colors.red),
          ),
          Container(
            width: 150,
            height: 80,
            decoration: BoxDecoration(color: Colors.red),
          ),
        ],
      ),
    );
  }
}
