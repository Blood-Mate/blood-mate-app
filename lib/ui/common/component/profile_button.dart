import 'package:bloodmate_app/ui/common/route_animation.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatefulWidget {
  const ProfileButton({
    super.key,
    required this.text,
    required this.page,
    // required this.onPressed,
  });

  final String text;
  final Widget page;
  // final VoidCallback? onPressed;

  @override
  State<ProfileButton> createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Ink(
      width: screenSize.width - 50,
      height: 45,
      decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(
              width: 1,
              color: const Color(0xFF7D7D7D),
              style: BorderStyle.solid)),
      child: InkWell(
        highlightColor: theme.focusColor,
        //customBorder:
        //RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        onTap: () {
          PageRouteWithAnimation pageRouteWithAnimation =
              PageRouteWithAnimation(widget.page);
          Navigator.push(context, pageRouteWithAnimation.slideRitghtToLeft());
        },
        child: Container(
          //Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: const TextStyle(
                color: Color(0xFFF5EFFF), //Color(0xFF646464),
                fontWeight: FontWeight.w700,
                fontSize: 17),
          ),
        ),
      ),
    );
  }
}
