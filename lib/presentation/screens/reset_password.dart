import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smarket_app/presentation/widgets/customAppBar.dart';
import 'package:smarket_app/presentation/widgets/label.dart';

import '../../core/constants/constant.dart';
import '../widgets/background.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key});
  final newPassword = TextEditingController();
  final rePassword = TextEditingController();

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return BackGround(
      children: [
        Image.asset(
          "assets/gifs/password.gif",
          height: 220,
        ),
        const SizedBox(
          height: 48,
        ),
        const Text(
          "Reset Your Password",
          style: TextStyle(
              color: myDarkGreen, fontFamily: "harabaraBold", fontSize: 30),
        ),
        const SizedBox(
          height: 36,
        ),
        Label(
          suffixIcon: IconButton(
            icon: Icon(
              pass ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                pass = !pass;
              });
            },
          ),
          obscureText: pass,
          labelText: "New Password",
          icon: "lock",
          controller: widget.newPassword,
          height: 48,
          width: 280,
          keyboardType: TextInputType.visiblePassword,
        ),
        const SizedBox(
          height: 20,
        ),
        Label(
          labelText: "Re Password",
          icon: "reset",
          controller: widget.rePassword,
          height: 48,
          width: 280,
          keyboardType: TextInputType.text,
          obscureText: false,
        ),
        const SizedBox(
          height: 22,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
              width: 205,
              padding: const EdgeInsets.fromLTRB(16, 9, 16, 9),
              decoration: BoxDecoration(
                  color: myDarkGreen, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Row(
                children: [
                  SvgPicture.asset("assets/icons/reset_white.svg"),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Reset Password",
                    style: TextStyle(
                        fontFamily: "harabaraBold",
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ],
              ))),
        )
      ],
    );
  }
}
