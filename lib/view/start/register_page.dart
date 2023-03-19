import 'package:bloodmate_app/view/common/route_animation.dart';
import 'package:bloodmate_app/view/pages.dart';
import 'package:bloodmate_app/view/start/register_field.dart';
import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/view/start/sign_in_field.dart';
import 'package:bloodmate_app/viewmodel/register_viewmodel.dart';
import 'package:go_router/go_router.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bloodTypeController = TextEditingController();
  late final RegisterViewModel _viewModel = RegisterViewModel();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.canvasColor,
      body: Column(
        children: [
          const SubPageHeader(title: 'Register'),
          RegisterField(
            phoneNumberController: _phoneNumberController,
            passwordController: _passwordController,
            nameController: _nameController,
            bloodTypeController: _bloodTypeController,
          ),
          ElevatedButton(
              child: const Text(
                'Register',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () async {
                final res = await _viewModel.register(
                  _phoneNumberController.text,
                  _passwordController.text,
                  _nameController.text,
                  _bloodTypeController.text,
                );
                print(res);
                if (res == "Success") {
                  print("suc");
                  Navigator.popUntil(context, ModalRoute.withName('/signin'));
                } else {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SignInFailDialog();
                      });
                }
              }),
        ],
      ),
    );
  }
}
