import 'package:bloodmate_app/view/common/component/component.dart';
import 'package:flutter/material.dart';

class FailDialog extends StatelessWidget {
  FailDialog({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return AlertDialog(
      title: Text('Error'),
      content: Text('Failed to ' + text + '. Please try again.'),
      actions: <Widget>[
        DialogButton(
            onPressed: () {
              Navigator.pop(context);
            },
            text: 'Ok'),
      ],
    );
  }
}
