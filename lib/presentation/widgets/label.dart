import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smarket_app/core/constants/constant.dart';

class Label extends StatefulWidget {
  final String labelText, icon;
  final TextEditingController controller;
  final double height, width;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool obscureText;

  Label({
    super.key,
    required this.labelText,
    required this.icon,
    required this.controller,
    required this.height,
    required this.width,
    required this.keyboardType,
    this.validator,
    this.suffixIcon,
    required this.obscureText,
  });
  @override
  State<Label> createState() => _LabelState();
}

class _LabelState extends State<Label> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextFormField(
        obscureText: widget.obscureText,
        validator: widget.validator,
        controller: widget.controller,
        cursorColor: myDarkGray,
        showCursor: true,
        keyboardType: widget.keyboardType,
        style: const TextStyle(
            fontFamily: "harabaraBold", color: Color(0xff333333), fontSize: 18),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          suffixIcon: widget.suffixIcon,
          labelText: widget.labelText,
          labelStyle: const TextStyle(
              fontFamily: "harabaraBold",
              color: Color(0xffAAAAAA),
              fontSize: 18),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 24,
              ),
              SvgPicture.asset("assets/icons/${widget.icon}.svg"),
              const SizedBox(
                width: 14,
              )
            ],
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.0, color: myDarkGreen),
              borderRadius: BorderRadius.circular(50.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1.0, color: myDarkGreen),
              borderRadius: BorderRadius.circular(50.0)),
        ),
      ),
    );
  }
}
