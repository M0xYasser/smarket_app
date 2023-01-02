import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/paymentDetailes.dart';

class PaymentWidget extends StatelessWidget {
  final String state, cardnumber;

  final void Function() onTap;

  const PaymentWidget({
    super.key,
    required this.state,
    required this.cardnumber,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 60,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffDCDCDC),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 3,
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 3),
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 40,
                    child: SvgPicture.asset(
                      (state == "master")
                          ? "assets/icons/visa.svg"
                          : "assets/icons/mastercard.svg",
                    )),
                SizedBox(
                  width: 60,
                  child: Text(
                    "xxxx$cardnumber",
                    style: const TextStyle(
                      color: Color(0xff444444),
                      fontFamily: "harabaraBold",
                      fontSize: 12.0,
                    ),
                  ),
                ),
                InkWell(
                  onTap: onTap,
                  child: SvgPicture.asset('assets/icons/delete.svg'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
