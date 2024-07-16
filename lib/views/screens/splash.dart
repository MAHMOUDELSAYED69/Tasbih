import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              transform: GradientRotation(50),
              colors: [
                ColorManager.darkGreen,
                ColorManager.grey,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              tileMode: TileMode.mirror),
        ),
        child: Center(child: Image.asset(ImageManager.logo)),
      ),
    );
  }
}
