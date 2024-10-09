import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color green = Colors.green;
  static const Color yellow = Colors.yellowAccent;
  static const Color blue = Color(0xff21395D);
  static const Color containerColor = Color(0xffEEE7DB);
  static const Color blue2 = Color(0x8e3d4551);
  static const Color stealBlue = Color(0x3321395D);
  static const Color beige = Color(0xffeee7db);
  static const Color transparentwhite = Color(0x78ffffff);

  static Gradient blueGradient = const LinearGradient(
      begin: Alignment.topCenter, // Starts from the top
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF21395D),
        Color(0x4C4E61BD),
        Color(0x276078EC),
        Color(0x2D4E61BD),
        Color(0x5F5F6FA),
      ],
      stops: [
        0.08,
        0.3,
        0.5,
        0.7,
        0.9
      ]);
  static Gradient whiteGradient = const LinearGradient(
      begin: Alignment.bottomCenter, // Starts from the top
      end: Alignment.topCenter,
      colors: [
        AppColors.beige,
        Color(0xffEEE7DB),
        Color(0xc2eee7db),
        Color(0x6eeee7db),
        Color(0xeee7db),
      ],
      stops: [
        0.1,
        0.3,
        0.5,
        0.7,
        0.9
      ]);
}
