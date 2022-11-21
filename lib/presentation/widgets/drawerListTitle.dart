// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/constants/constant.dart';

class DrawerListTitle extends StatelessWidget {
  final String icon, title, toScreen;
  final bool divider;

  const DrawerListTitle(
      {super.key,
      required this.title,
      required this.icon,
      required this.toScreen,
      this.divider = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () => Navigator.pushReplacementNamed(context, toScreen),
          leading: SvgPicture.asset("assets/icons/$icon.svg"),
          title: Text(title,
              style: const TextStyle(
                  fontFamily: "harabaraBold",
                  fontSize: 18,
                  color: myLightGray)),
        ),
        if (divider)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              thickness: 1,
              color: myLightGray,
            ),
          )
      ],
    );
  }
}
