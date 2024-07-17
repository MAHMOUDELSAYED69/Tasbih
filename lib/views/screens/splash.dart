import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants/colors.dart';
import '../../utils/constants/images.dart';
import '../../utils/constants/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goToNextScreen();
  }

  Future<void> _goToNextScreen() async => Future.delayed(
        const Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, RouteManager.home),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration:
            const BoxDecoration(gradient: GradientManager.scaffoldBackground),
        child: Image.asset(
          ImageManager.logo,
          width: 170.w,
          height: 170.w,
        ),
      ),
    );
  }
}
