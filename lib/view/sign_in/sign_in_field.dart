import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/custom_text_file.dart';

class SignInField extends StatelessWidget {
  final TextEditingController phoneNumberController;
  final TextEditingController passwordController;

  const SignInField({
    Key? key,
    required this.phoneNumberController,
    required this.passwordController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        const Text('Enter your phone number and password to sign in'),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          controller: phoneNumberController,
          type: TextInputType.phone,
          hint: "Phone number",
          isPhoneNum: true,
        ),
        CustomTextField(
          controller: passwordController,
          type: TextInputType.visiblePassword,
          hint: "Password",
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
