import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScaffold extends StatelessWidget {
  final Widget child;

  const HomeScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: const NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _menu = 0;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              _menu = 0;
              GoRouter.of(context).go('/home');
            },
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_outlined,
                    color:
                        _menu == 0 ? theme.primaryColor : theme.disabledColor,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Home',
                    style: TextStyle(
                      color:
                          _menu == 0 ? theme.primaryColor : theme.disabledColor,
                      fontSize: 12,
                    ),
                  )
                ]),
          ),
          GestureDetector(
            onTap: () {
              _menu = 1;
              GoRouter.of(context).go('/local');
            },
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color:
                        _menu == 1 ? theme.primaryColor : theme.disabledColor,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Local',
                    style: TextStyle(
                      color:
                          _menu == 1 ? theme.primaryColor : theme.disabledColor,
                      fontSize: 12,
                    ),
                  )
                ]),
          ),
          GestureDetector(
            onTap: () {
              _menu = 2;
              GoRouter.of(context).go('/acquaintance');
            },
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.contacts_outlined,
                    color:
                        _menu == 2 ? theme.primaryColor : theme.disabledColor,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Contact',
                    style: TextStyle(
                      color:
                          _menu == 2 ? theme.primaryColor : theme.disabledColor,
                      fontSize: 12,
                    ),
                  )
                ]),
          ),
          GestureDetector(
            onTap: () {
              _menu = 3;
              GoRouter.of(context).go('/alert');
            },
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    color:
                        _menu == 3 ? theme.primaryColor : theme.disabledColor,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Alert',
                    style: TextStyle(
                      color:
                          _menu == 3 ? theme.primaryColor : theme.disabledColor,
                      fontSize: 12,
                    ),
                  )
                ]),
          ),
          GestureDetector(
            onTap: () {
              _menu = 4;
              GoRouter.of(context).go('/profile');
            },
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_outline,
                    color:
                        _menu == 4 ? theme.primaryColor : theme.disabledColor,
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color:
                          _menu == 4 ? theme.primaryColor : theme.disabledColor,
                      fontSize: 12,
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
