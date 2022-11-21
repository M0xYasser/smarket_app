// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/constants/constant.dart';
import 'homeBtnClipPath.dart';
import 'homeBtnDecoration.dart';

class HomeBtn extends StatefulWidget {
  final String title, toScreen;

  const HomeBtn({super.key, required this.title, required this.toScreen});

  @override
  State<HomeBtn> createState() => _BtnState();
}

class _BtnState extends State<HomeBtn> {
  bool clipPath = true;
  double sizeAnimation = 28.0;

  @override
  Widget build(BuildContext context) {
    // START [BTN]
    return GestureDetector(
        onTap: () {
          setState(() {
            clipPath = false;
            sizeAnimation = 0.0;
          });
          Future.delayed(const Duration(milliseconds: 500), () {
            Navigator.pushReplacementNamed(context, widget.toScreen);
          });
        },
        child: SizedBox(
          height: 75,
          width: 175,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // START [GRADIENT BORDER]
              Container(
                height: 73,
                width: 173,
                decoration: outterBox,
                child: Padding(
                  padding: const EdgeInsets.all(2.5),
                  child: DecoratedBox(
                    decoration: innerBox,
                  ),
                ),
              ),
              // END [GRADIENT BORDER]
              //_____________
              // START [BTN BODY COLOR]
              Container(
                height: 60,
                width: 160,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              // END [BTN BODY COLOR]
              //_____________
              // START [BTN CLIPPATH]
              ClipPath(
                clipper: (clipPath) ? ClipPathBtn(title: widget.title) : null,
                child: Container(
                  decoration: const BoxDecoration(
                    color: myLightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  height: 60,
                  width: 160,
                ),
              ),
              // END [BTN CLIPPATH]
              //_____________
              // START [BTN BODY CONTENT]
              Container(
                height: 60,
                width: 160,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                child: Center(
                  child: Row(
                    textDirection: (widget.title == "Online")
                        ? TextDirection.rtl
                        : TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        (widget.title == "Market")
                            ? "assets/icons/shoppingCartBtn.svg"
                            : "assets/icons/onlineBtn.svg",
                        width: 24,
                        height: 24,
                      ),
                      TweenAnimationBuilder(
                        curve: Curves.linear,
                        duration: const Duration(milliseconds: 300),
                        tween: Tween(begin: 28.0, end: sizeAnimation),
                        builder: (BuildContext context, dynamic value,
                            Widget? child) {
                          return SizedBox(
                            width: value,
                          );
                        },
                      ),
                      if (clipPath)
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontFamily: "harabaraBlack",
                              fontSize: 20,
                              color: myDarkGray),
                        ),
                    ],
                  ),
                ),
              ),
              // END [BTN BODY CONTENT]
            ],
          ),
        ));
    // END [BTN]
  }
}
