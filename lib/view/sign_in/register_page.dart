import 'package:bloodmate_app/view/common/component/back_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:bloodmate_app/view/sign_in/register_field.dart';
import 'package:bloodmate_app/view/common/route_animation.dart';
import 'package:bloodmate_app/view/pages.dart';
import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:bloodmate_app/view/sign_in/sign_in_field.dart';
import 'package:bloodmate_app/viewmodel/register_viewmodel.dart';

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
    print(screenSize.height);
    return Scaffold(
      backgroundColor: theme.canvasColor,
      resizeToAvoidBottomInset: true,
      appBar: BackAppBar().build(context),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          const SubPageHeader(title: 'Create Account'),
          // 키보드 올라왔을 때 같이 올라가는거 적용필요
          SizedBox(
              height: MediaQuery.of(context).viewInsets.bottom == 0
                  ? MediaQuery.of(context).size.height * 0.17
                  : 0),
          RegisterField(
            phoneNumberController: _phoneNumberController,
            passwordController: _passwordController,
            nameController: _nameController,
            bloodTypeController: _bloodTypeController,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.primaryColor,
                foregroundColor: Colors.white,
                fixedSize: Size((screenSize.width) / 3 + 20, 45),
              ),
              child: const Text('Create Account'),
              onPressed: () async {
                Navigator.popUntil(context, ModalRoute.withName('/signin'));
                final res = await _viewModel.register(
                  _phoneNumberController.text,
                  _passwordController.text,
                  _nameController.text,
                  _bloodTypeController.text,
                );
                print(res);
                if (res == "Success") {
                  print("suc");
                } else {
                  // showDialog(
                  //     context: context,
                  //     builder: (context) {
                  //       return FailDialog(
                  //         text: "create your account",
                  //       );
                  //     });
                }
              }),
        ],
      ),
    );
  }
}
