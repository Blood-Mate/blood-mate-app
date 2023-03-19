import 'package:flutter/material.dart';

class SignInFailDialog extends StatelessWidget {
  const SignInFailDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Error'),
      content: Text('Failed to sign in. Please try again.'),
      actions: <Widget>[
        ElevatedButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
