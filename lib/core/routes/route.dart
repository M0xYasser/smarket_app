import 'package:flutter/material.dart';
import 'package:smarket_app/presentation/screens/invoicesScreen.dart';
import 'package:smarket_app/presentation/screens/paymentscreen.dart';
import '../../presentation/screens/reset_password.dart';
import '../../presentation/screens/support.dart';
import '../../presentation/screens/testScreen.dart';
import '../../presentation/screens/homeScreen.dart';
import '../../presentation/screens/saveMoney.dart';

Map<String, Widget Function(BuildContext)> route = {
  "home": (cozntext) => const Home(),
  "support": (context) => const Support(),
  "invoice": (context) => invoicesScreen(),
  "account": (context) => const SaveMoney(),
  "billing": (context) => PaymentsScreen(),
  "about": (context) => TestScreen(
        text: "About",
      ),
  "signout": (context) => TestScreen(
        text: "Sign Out",
      ),
  "online": (context) => TestScreen(
        text: "online",
      ),
  "market": (context) => TestScreen(
        text: "market",
      ),
};
