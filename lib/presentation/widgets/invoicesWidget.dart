import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InvoicesWidget extends StatelessWidget {
  final String date, state, card, price, paymentMethod;

  const InvoicesWidget(
      {super.key,
      required this.state,
      required this.date,
      required this.card,
      required this.price,
      required this.paymentMethod});
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      shadowColor: Color.fromARGB(120, 0, 0, 0),
      elevation: 4,
      child: Container(
        height: 76,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(150, 220, 220, 220)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SvgPicture.asset(
                    (state == "market")
                        ? "assets/icons/market.svg"
                        : "assets/icons/online.svg",
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 12.25,
                      ),
                      SizedBox(
                        width: 74,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              date,
                              style: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: "harabaraBold",
                                  color: Color(0xff888888)),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SvgPicture.asset(
                              (state == "market")
                                  ? "assets/icons/markettxt.svg"
                                  : "assets/icons/onlinetxt.svg",
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "$price L.E",
                          style: const TextStyle(
                              fontSize: 12,
                              fontFamily: "harabaraBold",
                              color: Colors.black),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(100, 204, 204, 204),
                              borderRadius: BorderRadius.circular(4)),
                          height: 14,
                          width: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "$paymentMethod ",
                                style: const TextStyle(
                                    fontSize: 7,
                                    fontFamily: "harabaraBold",
                                    color: Color(0xff999999)),
                              ),
                              Text(
                                card,
                                style: const TextStyle(
                                    fontSize: 7,
                                    fontFamily: "harabaraBold",
                                    color: Color(0xff444444)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 12.25,
                  ),
                  SvgPicture.asset("assets/icons/pdf.svg"),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
