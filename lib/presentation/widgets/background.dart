import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BackGround extends StatelessWidget {
  final List<Widget> children;
  final bool skip, close;
  final String skipScreen, closeScreen;
  const BackGround(
      {super.key,
      required this.children,
      this.skip = false,
      this.close = false,
      this.skipScreen = "home",
      this.closeScreen = "home"});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  "assets/images/wave.svg",
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: children,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                "assets/images/LeftVector.svg",
              ),
              SvgPicture.asset(
                "assets/images/RightVector.svg",
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: (skip && !close)
                    ? MainAxisAlignment.end
                    : (close && !skip)
                        ? MainAxisAlignment.start
                        : MainAxisAlignment.spaceBetween,
                children: [
                  if (close)
                    Row(
                      children: [
                        const SizedBox(
                          width: 24,
                        ),
                        InkWell(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, closeScreen),
                          child: SvgPicture.asset(
                            "assets/icons/Close.svg",
                          ),
                        ),
                      ],
                    ),
                  if (skip)
                    Row(
                      children: [
                        InkWell(
                          onTap: () => Navigator.pushReplacementNamed(
                              context, skipScreen),
                          child: SvgPicture.asset(
                            "assets/icons/Skipbtn_white.svg",
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                      ],
                    ),
                ],
              ),
            ],
          )
        ]),
      ]),
    );
  }
}
