import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../core/constants/constant.dart';
import '../widgets/customAppBar.dart';

class InvoicesEmpty extends StatelessWidget {
  const InvoicesEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/gifs/noData.gif",
            height: (kIsWeb) ? MediaQuery.of(context).size.height / 2.5 : 300,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Not Found any invoice",
            style: TextStyle(
                fontFamily: "harabaraBold", fontSize: 24, color: myDarkGreen),
          ),
          const SizedBox(
            height: 24,
          ),
          // ignore: prefer_const_constructors
          Text(
              textAlign: TextAlign.center,
              "If you already have an account\nyou can login from signin button\nto retrieve your invoices\nregistered on your account",
              style: const TextStyle(
                  fontFamily: "harabaraBold",
                  fontSize: 18,
                  color: myLightGray)),
          const SizedBox(
            height: 24,
          ),
          GestureDetector(
            child: Container(
                width: 100,
                padding: const EdgeInsets.fromLTRB(16, 9, 16, 9),
                decoration: BoxDecoration(
                    color: myDarkGreen,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/signin.svg"),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(
                      "Signin",
                      style: TextStyle(
                          fontFamily: "harabaraBold",
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ],
                ))),
          ),
        ],
      ),
    );
  }
}
