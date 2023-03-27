import 'package:bloodmate_app/view/common/route_animation.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatelessWidget {
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
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    return Ink(
      width: screenSize.width / 2 - 30,
      height: screenSize.width / 2 - 30,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        border: Border.all(
            width: 2,
            color: Color(0xFFFFFFFF), //const Color(0xFF7D7D7D),
            style: BorderStyle.solid),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        highlightColor: Color(0xFFFFFFFF),
        //customBorder:
        //RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        onTap: () {
          PageRouteWithAnimation pageRouteWithAnimation =
              PageRouteWithAnimation(page);
          Navigator.push(context, pageRouteWithAnimation.slideRitghtToLeft());
        },
        child: Container(
          //Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 56, 54, 54), // Color(0xFFF5EFFF),
                fontWeight: FontWeight.w700,
                fontSize: 17),
          ),
        ),
      ),
    );
  }
}

class ProfileIconButton extends StatefulWidget {
  const ProfileIconButton({
    super.key,
    required this.icon,
    required this.text,
    required this.page,
  });

  final Icon icon;
  final String text;
  final Widget page;

  @override
  State<ProfileIconButton> createState() => _ProfileIconButtonState();
}

class _ProfileIconButtonState extends State<ProfileIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PageRouteWithAnimation pageRouteWithAnimation =
            PageRouteWithAnimation(widget.page);
        Navigator.push(context, pageRouteWithAnimation.slideRitghtToLeft());
      },
      child: Container(
          child: Row(
        children: [
          widget.icon,
          SizedBox(width: 3),
          Text(widget.text),
        ],
      )),
    );
  }
}
