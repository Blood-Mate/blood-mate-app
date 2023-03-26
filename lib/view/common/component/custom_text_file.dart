import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final String hint;
  final bool isPhoneNum;

  const CustomTextField(
      {Key? key,
      required this.controller,
      required this.type,
      required this.hint,
      this.isPhoneNum = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      height: 50.0,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.black, width: 1)),
      child: TextField(
        decoration: InputDecoration.collapsed(hintText: hint),
        keyboardType: type,
        obscureText: type == TextInputType.visiblePassword ? true : false,
        controller: controller,
        inputFormatters:
            isPhoneNum ? [FilteringTextInputFormatter.digitsOnly] : [],
      ),
    );
  }
}
