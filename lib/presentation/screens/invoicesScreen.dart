import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/models/invoiceDetailes.dart';

import '../widgets/customAppBar.dart';
import '../widgets/invoicesWidget.dart';
import 'emptyInvoices.dart';

class invoicesScreen extends StatelessWidget {
  const invoicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomAppBar(
        title: 'Invoices History',
        child: Padding(
            padding: const EdgeInsets.only(top: 76),
            child: (invoices["3"]!.isNotEmpty)
                ? ListView.builder(
                    itemCount: invoices["3"]!.length,
                    padding:
                        const EdgeInsets.only(left: 32, right: 32, top: 24),
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          InvoicesWidget(
                            state: invoices["3"]![index]["state"],
                            date: invoices["3"]![index]["date"],
                            card: "${invoices["3"]![index]["card"]}",
                            price: "${invoices["3"]![index]["price"]}",
                            paymentMethod: invoices["3"]![index]
                                ["paymentMethod"],
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                        ],
                      );
                    },
                  )
                : const InvoicesEmpty()),
      ),
    );
  }
}
