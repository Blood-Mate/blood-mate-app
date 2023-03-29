import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  const DialogButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.isHeader = false})
      : super(key: key);

  final VoidCallback onPressed;
  final String text;
  final bool isHeader;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      splashColor: theme.primaryColorLight,
      onTap: onPressed,
      child: isHeader
          ? Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Text(
                text,
                style: TextStyle(
                  color: theme.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Text(
                text,
                style: TextStyle(
                  color: theme.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),
    );
  }
}
