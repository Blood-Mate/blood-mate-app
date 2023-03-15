import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'ui/page/pages.dart';

// ShellRoute를 위한 Key설정
GlobalKey<NavigatorState> _rootkey = GlobalKey<NavigatorState>();
GlobalKey<NavigatorState> _homekey = GlobalKey<NavigatorState>();

class BloodMateApp extends StatelessWidget {
  BloodMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      theme: _theme,
      builder: (context, child) => ScrollConfiguration(
        behavior: DiableScrollGlow(),
        child: child ?? Container(),
      ),
    );
  }

  final GoRouter _router = GoRouter(
    navigatorKey: _rootkey,
    initialLocation: '/profile', //'/splash',
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
        path: '/login',
        builder: (context, state) {
          return LogInPage();
        },
      ),
      GoRoute(
        path: '/signin',
        builder: (context, state) {
          return SignInPage();
        },
      ),
      // GoRoute(
      //   path: '/home',
      //   redirect: (_, __) {
      //     var now = DateTime.now();
      //     return '/habit/${now.year}/${now.month}/${now.day}';
      //   },
      // ),
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
    primaryColor: Color.fromARGB(255, 253, 45, 45), //Color(0xFFFF2525),
    focusColor: Color.fromARGB(255, 235, 94, 94),
    textTheme: const TextTheme(),
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
