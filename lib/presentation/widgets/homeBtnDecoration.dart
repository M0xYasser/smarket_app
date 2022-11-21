// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../core/constants/constant.dart';

final innerBox = BoxDecoration(
  color: myDarkGreen,
  borderRadius: BorderRadius.circular(25),
);

final outterBox = BoxDecoration(
  gradient: const LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: myGradient,
  ),
  borderRadius: BorderRadius.circular(27),
);
