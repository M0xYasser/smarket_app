import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartProduct1 extends StatefulWidget {
  @override
  CartProduct1State createState() => CartProduct1State();
}

class CartProduct1State extends State<CartProduct1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 76,
        title: const Text(
          "Your Cart",
          style: TextStyle(
            color: Color(0xff444444),
            fontFamily: "harabara",
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Row(
          children: [
            const SizedBox(
              width: 24,
            ),
            SvgPicture.asset(
              'assets/icons/back.svg',
              height: 28,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(22),
            child: Row(
              children: [
                SvgPicture.asset("assets/icons/saveMoney.svg"),
                const SizedBox(
                  width: 12,
                ),
                SvgPicture.asset("assets/icons/Search.svg"),
              ],
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Column(children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Your Money",
                        style: TextStyle(
                          fontFamily: "harabaraBold",
                          fontSize: 17,
                          color: Color(0xff02c6976),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 28,
                        width: 62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: const Color(0xff68B2A0),
                        ),
                        child: const Center(
                          child: Text(
                            "200 L.E",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "harabara"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Center(
                    child: Container(
                      height: 64,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff68B2A0), Color(0xff89B6BF)],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 50,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Apple Juice",
                                    style: TextStyle(
                                      fontFamily: "harabaraBold",
                                      fontSize: 13,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "330 ML",
                                    style: TextStyle(
                                      fontFamily: "harabaraBold",
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "7 L.E",
                                    style: TextStyle(
                                      fontFamily: "harabaraBold",
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "x1",
                                  style: TextStyle(
                                    fontFamily: "harabaraBold",
                                    fontSize: 13,
                                  ),
                                ),
                                SizedBox(
                                  width: 24,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 24,
                          ),
                          Image.asset(
                            "assets/images/milk.png",
                            height: 80,
                            width: 70,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xff68B2A0), Color(0xff89B6BF)],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Sub Total",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "harabaraBold",
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "39.5 L.E",
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "harabaraBold",
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: Row(
                                children: <Widget>[
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  SvgPicture.asset("assets/icons/checkout.svg"),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    "Chechout",
                                    style: TextStyle(
                                      fontFamily: "harabaraBold",
                                      fontSize: 20,
                                      color: Color(0xff2c6976),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
