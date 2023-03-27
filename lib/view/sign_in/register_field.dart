import 'package:flutter/material.dart';

import 'package:bloodmate_app/view/common/component/custom_text_file.dart';

class RegisterField extends StatelessWidget {
  final TextEditingController phoneNumberController;
  final TextEditingController passwordController;
  final TextEditingController nameController;
  final TextEditingController bloodTypeController;

  const RegisterField({
    Key? key,
    required this.phoneNumberController,
    required this.passwordController,
    required this.nameController,
    required this.bloodTypeController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        const Text('Fill in the blank to register'),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          controller: phoneNumberController,
          type: TextInputType.phone,
          hint: "Phone number",
        ),
        CustomTextField(
          controller: passwordController,
          type: TextInputType.visiblePassword,
          hint: "Password",
        ),
        CustomTextField(
          controller: nameController,
          type: TextInputType.text,
          hint: "Name",
        ),
        CustomTextField(
          controller: bloodTypeController,
          type: TextInputType.text,
          hint: "Blood Type",
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
