import 'package:bloodmate_app/data/util/global_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'view/pages.dart';

// ShellRoute를 위한 Key설정
GlobalKey<NavigatorState> _rootkey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> _homekey = GlobalKey<NavigatorState>();

class BloodMateApp extends StatelessWidget {
  BloodMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyTokens(),
      child: MaterialApp.router(
        routerConfig: _router,
        theme: _theme,
        debugShowCheckedModeBanner: false, // 디버그 배너삭제
        builder: (context, child) => ScrollConfiguration(
          behavior: DiableScrollGlow(),
          child: child ?? Container(),
        ),
      ),
    );
  }

  final GoRouter _router = GoRouter(
    navigatorKey: _rootkey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/',
        redirect: (_, __) => '/splash',
      ),
      GoRoute(
        path: '/splash',
        builder: (context, state) {
          return const SplashPage();
        },
      ),
      GoRoute(
        path: '/regiser',
        builder: (context, state) {
          return RegisterPage();
        },
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) {
          return SignInPage();
        },
      ),
      GoRoute(
        path: '/main',
        redirect: (_, __) {
          return '/home';
        },
      ),
      ShellRoute(
        navigatorKey: _homekey,
        builder: (context, state, child) {
          return HomeScaffold(child: child);
        },
        routes: [
          // GoRoute(
          //   path: '/habit/:year(\\d+)/:month(\\d+)/:day(\\d+)',
          //   builder: (context, state) => LocalDonationPage(
          //     selectedDate: DateTime(
          //       int.parse(state.params['year']!),
          //       int.parse(state.params['month']!),
          //       int.parse(state.params['day']!),
          //     ),
          //   ),
          // ),
          GoRoute(
            path: '/home',
            builder: (context, state) => HomePage(),
          ),
          GoRoute(
            path: '/local',
            builder: (context, state) => LocalDonationPage(),
          ),
          GoRoute(
            path: '/acquaintance',
            builder: (context, state) => AcquaintancePage(),
          ),
          GoRoute(
            path: '/alert',
            builder: (context, state) => AlertPage(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => ProfilePage(),
          ),
        ],
      )
    ],
  );

  final ThemeData _theme = ThemeData(
    canvasColor: const Color(0xFFFFFFFF),
    cardColor: Color.fromARGB(255, 255, 251, 251),
    primaryColor: Color.fromARGB(255, 235, 94, 94),
    primaryColorLight: Color.fromARGB(255, 231, 121, 121),
    focusColor: Color.fromARGB(255, 253, 45, 45), //Color(0xFFFF2525),
    disabledColor: Color.fromARGB(255, 96, 96, 96),
    textButtonTheme: TextButtonThemeData(style: ButtonStyle()),
    textTheme: const TextTheme(labelSmall: TextStyle()),
  );
}

// diable lightning in SingChildScrollView
class DiableScrollGlow extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
