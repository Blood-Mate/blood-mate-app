import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/view/common/route_animation.dart';
import 'package:bloodmate_app/view/pages.dart';
import 'package:bloodmate_app/view/sign_in/sign_in_field.dart';
import 'package:bloodmate_app/viewmodel/sign_in_viewmodel.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late final SignInViewModel _viewModel = SignInViewModel();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Column(
        children: [
          const SubPageHeader(title: 'Sign In'),
          SignInField(
            phoneNumberController: _phoneNumberController,
            passwordController: _passwordController,
          ),
          ElevatedButton(
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () async {
                // print(_phoneNumberController.text);
                // print(_passwordController.text);
                final res = await _viewModel.signIn(
                  _phoneNumberController.text,
                  _passwordController.text,
                );

                if (res == "Success") {
                  GoRouter.of(context).go('/home');
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return FailDialog(
                          text: "sign in",
                        );
                      });
                }
              }),
          ElevatedButton(
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                PageRouteWithAnimation pageRouteWithAnimation =
                    PageRouteWithAnimation(RegisterPage());
                Navigator.push(
                    context, pageRouteWithAnimation.slideRitghtToLeft());
              }),
        ],
      ),
    );
  }
}
