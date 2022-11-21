// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import '../widgets/customAppBar.dart';

class TestScreen extends StatelessWidget {
  String text;
  TestScreen({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppBar(
        title: text,
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "home");
            },
            child: Text(
              text,
              style: const TextStyle(
                  fontFamily: "harabaraBold",
                  fontSize: 44,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
