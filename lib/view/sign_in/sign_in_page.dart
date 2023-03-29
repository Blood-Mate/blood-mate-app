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
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const SubPageHeader(title: 'Sign In'),
          SizedBox(
              height: MediaQuery.of(context).viewInsets.bottom == 0
                  ? MediaQuery.of(context).size.height * 0.2
                  : MediaQuery.of(context).size.height * 0.08),
          SignInField(
            phoneNumberController: _phoneNumberController,
            passwordController: _passwordController,
          ),
          // print(_passwordController.text);
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.primaryColor,
                foregroundColor: Colors.white,
                fixedSize: Size((screenSize.width) / 3 + 20, 45),
              ),
              child: const Text('Sign In'),
              onPressed: () async {
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
                          text: "Sign in",
                        );
                      });
                }
              }),
          SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.primaryColor,
                foregroundColor: Colors.white,
                fixedSize: Size((screenSize.width) / 3 + 20, 45),
              ),
              child: const Text('Create Account'),
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
