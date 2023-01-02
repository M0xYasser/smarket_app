import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smarket_app/core/constants/constant.dart';
import '../widgets/customAppBar.dart';
import '../widgets/logout_pop.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final supportTxt = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomAppBar(
          title: "Support",
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/gifs/support.gif",
                  height: 300,
                ),
                SizedBox(
                  width: 260,
                  height: 120,
                  child: TextFormField(
                    showCursor: true,
                    cursorColor: myDarkGreen,
                    controller: supportTxt,
                    maxLines: 4,
                    style: const TextStyle(
                        fontFamily: "harabaraBold",
                        color: Color(0xff333333),
                        fontSize: 18),
                    decoration: InputDecoration(
                      labelText: 'Tell Us how we can help ?',
                      labelStyle: const TextStyle(
                          fontFamily: "harabaraBold",
                          color: Color(0xff888888),
                          fontSize: 16),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.0,
                              color: Color.fromARGB(255, 44, 105, 118)),
                          borderRadius: BorderRadius.circular(12.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1.0,
                              color: Color.fromARGB(255, 44, 105, 118)),
                          borderRadius: BorderRadius.circular(12.0)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  child: Container(
                      width: 200,
                      padding: const EdgeInsets.fromLTRB(16, 9, 16, 9),
                      decoration: BoxDecoration(
                          color: const Color(0xff2C6976),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                        child: Text(
                          "Send Message",
                          style: TextStyle(
                              fontFamily: "harabaraBold",
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
