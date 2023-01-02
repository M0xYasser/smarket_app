// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants/constant.dart';
import '../widgets/drawerHeader.dart';
import '../widgets/drawerListTitle.dart';
import '../widgets/homeBtn.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Scaffold(
      backgroundColor: myDarkGreen,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 70,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomDrawerHeader(
              imageUrl: "assets/images/person.jpg",
              name: "M0xYasser",
              email: "M0xyasser@gmail.com"),
          DrawerListTitle(
            title: "Account Settings",
            icon: "user",
            toScreen: 'account',
          ),
          DrawerListTitle(
            title: "Billing Settings",
            icon: "bank",
            toScreen: 'billing',
          ),
          DrawerListTitle(
            title: "Invoices",
            icon: "invoice",
            toScreen: 'invoice',
          ),
          DrawerListTitle(
            title: "Signout",
            icon: "logout",
            toScreen: 'signout',
            divider: true,
            logOut: true,
          ),
          DrawerListTitle(
            title: "Support",
            icon: "support",
            toScreen: 'support',
          ),
          DrawerListTitle(
            title: "About",
            icon: "help",
            toScreen: 'about',
          ),
        ],
      )),
      body: Stack(
        children: [
          // START [GIF]
          Center(
            child: Column(
              mainAxisAlignment: (MediaQuery.of(context).size.width <= 620)
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/gifs/Hello.gif",
                  width: (MediaQuery.of(context).size.width <= 680)
                      ? (kIsWeb)
                          ? 300
                          : 350
                      : 380,
                )
              ],
            ),
          ),
          // END [GIF]
          //_____________
          // START [CIRCLE 1]
          Column(
            children: [
              const SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  SvgPicture.asset(
                    "assets/images/circle.svg",
                    alignment: Alignment.center,
                  ),
                ],
              )
            ],
          ),
          // END [CIRCLE 1]
          //_____________
          // START [RIGHT LEAF]
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                "assets/images/rightLeaf.svg",
              ),
              const SizedBox(
                width: 14,
              )
            ],
          ),
          // END [RIGHT LEAF]
          //_____________
          // START [CIRCLE 2]
          Column(
            children: [
              const SizedBox(
                height: 190,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(
                    "assets/images/circle.svg",
                  ),
                  const SizedBox(
                    width: 70,
                  )
                ],
              ),
            ],
          ),
          // END [CIRCLE 2]
          //_____________
          // START [LEFT LEAF]
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset("assets/images/leftLeaf.svg"),
              const SizedBox(
                height: 100,
              )
            ],
          ),
          // END [LEFT LEAF]
          //_____________
          // START [BTN]
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  SizedBox(
                    width: 24,
                  ),
                  HomeBtn(title: "Market", toScreen: "market"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  HomeBtn(title: "Online", toScreen: "online"),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              )
            ],
          ),
          // END [BTN]
          //_____________
          // START [TEXT]
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Column(
                children: [
                  SizedBox(
                    height:
                        (MediaQuery.of(context).size.height <= 600) ? 0 : 55,
                  ),
                  const Text(
                    "Choose",
                    style: TextStyle(
                        fontFamily: "harabaraBold",
                        fontSize: 44,
                        color: Colors.white),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "how you\nwant to shop ?",
                    style: TextStyle(
                        fontFamily: "harabaraBold",
                        fontSize: 24,
                        color: Colors.white),
                  )
                ],
              ),
            ],
          )
          // END [TEXT]
        ],
      ),
    );
  }
}
