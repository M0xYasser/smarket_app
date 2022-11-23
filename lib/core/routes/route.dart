import 'package:flutter/material.dart';
import 'package:smarket_app/presentation/screens/invoicesScreen.dart';
import 'package:smarket_app/presentation/screens/testScreen.dart';
import '../../presentation/screens/emptyInvoices.dart';
import '../../presentation/screens/homeScreen.dart';
import '../../presentation/screens/testScreen.dart';

Map<String, Widget Function(BuildContext)> route = {
  "home": (context) => const Home(),
  "support": (context) => TestScreen(
        text: "Support",
      ),
  "invoice": (context) => const invoicesScreen(),
  "account": (context) => TestScreen(
        text: "Account Settings",
      ),
  "billing": (context) => TestScreen(
        text: "Billing Settings",
      ),
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
