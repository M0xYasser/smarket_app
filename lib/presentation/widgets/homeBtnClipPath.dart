// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ClipPathBtn extends CustomClipper<Path> {
  String title;
  ClipPathBtn({required this.title});

  @override
  Path getClip(Size size) {
    final double startPoint, secondPoint, thirdPoint, endPoint;
    Path path = Path();

    startPoint = (title == "Online") ? size.width : 0.0;
    secondPoint = (title == "Online") ? 110.0 : 55.0;
    thirdPoint = (title == "Online") ? 90.0 : 70.0;
    endPoint = (title == "Online") ? size.width : 0.0;

    path.moveTo(startPoint, 0.0);
    path.lineTo(secondPoint, 0);
    path.lineTo(thirdPoint, size.height);
    path.lineTo(endPoint, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
