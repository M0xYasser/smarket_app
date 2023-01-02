import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarket_app/presentation/widgets/customAppBar.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomAppBar(
        title: "Add New Card",
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 0,
                ),
                Center(
                  child: Image.asset(
                    "assets/gifs/newCard.gif", // GIF
                    height: 280,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: SizedBox(
                width: 400,
                height: 48,
                child: TextFormField(
                  style: const TextStyle(
                      fontFamily: "harabaraBold",
                      color: Color(0xff333333),
                      fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Card Holder Name',
                    labelStyle: const TextStyle(
                        fontFamily: "harabaraBold",
                        color: Color(0xff2C6976),
                        fontSize: 18),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        SvgPicture.asset("assets/icons/cardName.svg"),
                        const SizedBox(
                          width: 14,
                        )
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 44, 105, 118)),
                        borderRadius: BorderRadius.circular(50.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 44, 105, 118)),
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: SizedBox(
                width: 400,
                height: 48,
                child: TextFormField(
                  style: const TextStyle(
                      fontFamily: "harabaraBold",
                      color: Color(0xff333333),
                      fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Card Number',
                    labelStyle: const TextStyle(
                        fontFamily: "harabaraBold",
                        color: Color(0xff2C6976),
                        fontSize: 18),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        SvgPicture.asset("assets/icons/cardNumber.svg"),
                        const SizedBox(
                          width: 14,
                        )
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 44, 105, 118)),
                        borderRadius: BorderRadius.circular(50.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 44, 105, 118)),
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: SizedBox(
                width: 400,
                height: 48,
                child: TextFormField(
                  style: const TextStyle(
                      fontFamily: "harabaraBold",
                      color: Color(0xff333333),
                      fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Expriration Date',
                    labelStyle: const TextStyle(
                        fontFamily: "harabaraBold",
                        color: Color(0xff2C6976),
                        fontSize: 18),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        SvgPicture.asset("assets/icons/date.svg"),
                        const SizedBox(
                          width: 14,
                        )
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 44, 105, 118)),
                        borderRadius: BorderRadius.circular(50.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 44, 105, 118)),
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: SizedBox(
                width: 400,
                height: 48,
                child: TextFormField(
                  style: const TextStyle(
                      fontFamily: "harabaraBold",
                      color: Color(0xff333333),
                      fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'CVV',
                    labelStyle: const TextStyle(
                        fontFamily: "harabaraBold",
                        color: Color(0xff2C6976),
                        fontSize: 18),
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        SvgPicture.asset("assets/icons/cvv.svg"),
                        const SizedBox(
                          width: 14,
                        )
                      ],
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 44, 105, 118)),
                        borderRadius: BorderRadius.circular(50.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                            width: 1.0,
                            color: Color.fromARGB(255, 44, 105, 118)),
                        borderRadius: BorderRadius.circular(50.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xff2c6976),
                ),
                child: MaterialButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/icons/credit_card.svg'),
                          SizedBox(
                            width: 12.0,
                          ),
                          Text(
                            'Add Card',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "harabaraBold",
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
