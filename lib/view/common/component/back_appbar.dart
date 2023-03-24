import 'package:flutter/material.dart';

class BackAppBar extends StatelessWidget {
  const BackAppBar({super.key});

  @override
  PreferredSizeWidget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          focusColor: Colors.white,
          splashColor: Colors.white,
          highlightColor: Colors.white,
          disabledColor: Colors.white,
          icon: Icon(Icons.arrow_back_ios, color: Theme.of(context).hintColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
