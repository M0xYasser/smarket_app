import 'package:flutter/material.dart';

class EmptyCard extends StatelessWidget {
  const EmptyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/gifs/Credit_card.gif", // GIF
              height: 280,
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          const Text(
            "There are no cards. \nplease add a card",
            style: TextStyle(
                fontFamily: "harabaraBold",
                fontSize: 24,
                color: Color(0xff2C6976)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}
