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
    // var calendar_icon = (_menu == 0)
    //     ? Image.asset("assets/icons/calendar_act.png", width: 30, height: 30)
    //     : Image.asset("assets/icons/calendar.png", width: 30, height: 30);

    // var pet_icon = (_menu == 1)
    //     ? Image.asset("assets/icons/pet_act.png", width: 30, height: 30)
    //     : Image.asset("assets/icons/pet.png", width: 30, height: 30);

    // var profile_icon = (_menu == 2)
    //     ? Image.asset("assets/icons/profile_act.png", width: 30, height: 30)
    //     : Image.asset("assets/icons/profile.png", width: 30, height: 30);

    return Container(
      height: 60,
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
          IconButton(
            onPressed: (() {
              //_menu = 0;
              GoRouter.of(context).go('/home');
            }),
            icon: Icon(Icons.home),
            enableFeedback: false,
          ),
          IconButton(
            onPressed: (() {
              //_menu = 1;
              GoRouter.of(context).go('/local');
            }),
            icon: Icon(Icons.location_on),
            enableFeedback: false,
          ),
          IconButton(
            onPressed: (() {
              //_menu = 1;
              GoRouter.of(context).go('/acquaintance');
            }),
            icon: Icon(Icons.people),
            enableFeedback: false,
          ),
          IconButton(
            onPressed: (() {
              //_menu = 1;
              GoRouter.of(context).go('/alert');
            }),
            icon: Icon(Icons.alarm_outlined),
            enableFeedback: false,
          ),
          IconButton(
            onPressed: (() {
              //_menu = 2;
              GoRouter.of(context).go('/profile');
            }),
            icon: Icon(Icons.person),
            enableFeedback: false,
          ),
        ],
      ),
    );
  }
}
