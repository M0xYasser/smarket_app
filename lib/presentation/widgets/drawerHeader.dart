// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../../core/constants/constant.dart';

class CustomDrawerHeader extends StatelessWidget {
  final String imageUrl, name, email;
  const CustomDrawerHeader(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.email});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(imageUrl),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              name,
              style: const TextStyle(fontFamily: "harabaraBold", fontSize: 20),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              email,
              style: const TextStyle(fontFamily: "harabara", fontSize: 14),
            ),
            const SizedBox(
              height: 5,
            ),
          ]),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Divider(
            thickness: 1,
            color: myLightGray,
          ),
        ),
      ],
    );
  }
}
