import 'package:flutter/material.dart';

abstract class ColorManager {
  const ColorManager._();
  static const Color darkGreen = Color(0xff01301C);
  static const Color lightGreen = Color(0xff00EA86);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);
  static const Color lightGrey = Color(0xff666666);
  static const Color darkGrey = Color(0xff222222);
  static const Color error = Color(0xffF85555);
  static const Color transparent = Colors.transparent;
}

abstract class GradientManager {
  const GradientManager._();
  static const Gradient scaffoldBackground = SweepGradient(
    tileMode: TileMode.decal,
    transform: GradientRotation(50),
    colors: [
      ColorManager.black,
      ColorManager.darkGreen,
      ColorManager.black,
    ],
  );
}
