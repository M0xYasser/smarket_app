import 'package:flutter/material.dart';
import 'package:smarket_app/data/models/invoiceDetailes.dart';

import 'core/routes/route.dart';

void main() {
  print(invoices[0]);
  runApp(const SmarketApp());
}

class SmarketApp extends StatelessWidget {
  const SmarketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: route,
    );
  }
}
