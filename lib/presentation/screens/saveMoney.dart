import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants/constant.dart';
import '../../core/constants/money_value.dart';
import '../widgets/customAppBar.dart';
import '../widgets/label.dart';

class SaveMoney extends StatelessWidget {
  const SaveMoney({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    final moneyText = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomAppBar(
        title: 'Save Money',
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            "assets/gifs/savingMoney.gif",
            height: (kIsWeb) ? MediaQuery.of(context).size.height / 2.5 : 250,
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            "Conserve your money by \nsetting a purchase value so \nthat you do not exceed it",
            style: TextStyle(fontFamily: "harabaraBold", fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 24,
          ),
          Label(
            labelText: "Money Value",
            icon: "moneyBag",
            controller: moneyText,
            height: 48,
            width: 280,
            keyboardType: TextInputType.number,
            obscureText: false,
          ),
          const SizedBox(
            height: 48,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  MoneyValue.setMoney("0");
                  Navigator.pushReplacementNamed(context, "home");
                },
                child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 9, 16, 9),
                    decoration: BoxDecoration(
                        border: Border.all(color: myLightGray),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                        child: Text(
                      "Deactive",
                      style: TextStyle(
                          fontFamily: "harabaraBold",
                          fontSize: 20,
                          color: myLightGray),
                    ))),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  MoneyValue.setMoney(moneyText.text);
                  Navigator.pushReplacementNamed(context, "home");
                },
                child: Container(
                    padding: const EdgeInsets.fromLTRB(16, 9, 16, 9),
                    decoration: BoxDecoration(
                        color: myDarkGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/next.svg"),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "Set Value",
                          style: TextStyle(
                              fontFamily: "harabaraBold",
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ],
                    ))),
              )
            ],
          )
        ]),
      ),
    );
  }
}
