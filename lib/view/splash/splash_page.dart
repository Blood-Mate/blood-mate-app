import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:bloodmate_app/viewmodel/splash_viewmodel.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool is_loading = false;

  @override
  void initState() {
    super.initState();
    _initSplash();
  }

  Future _initSplash() async {
    // 2초간 띄움
    await Future.delayed(Duration(seconds: 2));
    final haveTokens =
        await SplashViewModel(context: context).checkCachedTokens();
    if (haveTokens) {
      GoRouter.of(context).go('/home');
    } else {
      GoRouter.of(context).go('/signin');
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Center(
          child: Image(image: AssetImage('assets/image/bloodmate_logo.png'))),
    );
  }
}
